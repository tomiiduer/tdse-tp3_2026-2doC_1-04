/*
 * Copyright (c) 2026 Juan Manuel Cruz <jcruz@fi.uba.ar> <jcruz@frba.utn.edu.ar>.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 *
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 *
 * 3. Neither the name of the copyright holder nor the names of its
 *    contributors may be used to endorse or promote products derived from
 *    this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
 * FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
 * COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
 * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
 * (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
 * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
 * STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING
 * IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 * POSSIBILITY OF SUCH DAMAGE.
 *
 * @author : Juan Manuel Cruz <jcruz@fi.uba.ar> <jcruz@frba.utn.edu.ar>
 */

/********************** inclusions *******************************************/
/* Project includes */
#include "main.h"
#include <stdio.h>

/* Demo includes */
#include "logger.h"
#include "dwt.h"

/* Application & Tasks includes */
#include "board.h"
#include "app.h"

#include "task_actuator_attribute.h"
#include "task_actuator_interface.h"
#include "task_display_attribute.h"
#include "task_display_interface.h"
#include "task_system_attribute.h"
#include "task_system_interface.h"

/********************** macros and definitions *******************************/
#define DEL_SYS_MIN			0ul
#define DEL_SYS_MED			250ul
#define DEL_SYS_MAX			500ul

/* Modes to excite Task System */
typedef enum task_system_mode {NORMAL, SETUP, MODE_QTY} task_system_mode_t;

#define SYSTEM_DTA_QTY	MODE_QTY

/********************** internal data declaration ****************************/
task_system_dta_t task_system_dta_list[SYSTEM_DTA_QTY];

/********************** internal functions declaration ***********************/
void task_system_normal_statechart(void);
void task_system_setup_statechart(void);

void task_system_set_mode(task_system_mode_t);
static void task_system_setup_display(task_system_dta_t *p_task_system_dta);

/********************** internal data definition *****************************/
const char *p_task_system 		= "Task System (System Statechart)";
const char *p_task_system_ 		= "Non-Blocking Code";
const char *p_task_system__ 	= "(Update by Time Code, period = 1mS)";

/********************** external data declaration ****************************/
task_system_mode_t g_task_system_mode;

/********************** external functions definition ************************/
void task_system_init(void *parameters)
{
	uint32_t index;
	task_system_dta_t 	*p_task_system_dta;
	task_system_st_t	state;
	task_system_ev_t	event;
	bool b_event;

	/* Print out: Task Initialized */
	LOGGER_INFO(" ");
	LOGGER_INFO("  %s is running - Tick [mS] = %lu", GET_NAME(task_system_init), HAL_GetTick());
	LOGGER_INFO("   %s is a %s", GET_NAME(task_system), p_task_system);
	LOGGER_INFO("   %s is a %s", GET_NAME(task_system), p_task_system_);
	LOGGER_INFO("   %s is a %s", GET_NAME(task_system), p_task_system__);

	init_event_task_system();

	task_system_set_mode(NORMAL);

	for (index = 0; SYSTEM_DTA_QTY > index; index++)
	{
		/* Update Task System Data Pointer */
		p_task_system_dta = &task_system_dta_list[index];

		/* Init & Print out: Task execution FSM */
		state = (SETUP == index) ? ST_SYS_MAIN : ST_SYS_IDLE;
		p_task_system_dta->state = state;

		event = EV_SYS_IDLE;
		p_task_system_dta->event = event;

		b_event = false;
		p_task_system_dta->flag = b_event;

		// inicializa variables y arreglo de motores
		p_task_system_dta->index = 0;
		p_task_system_dta->motor = 1;
		p_task_system_dta->param = 1;
		p_task_system_dta->valor = 0;
		p_task_system_dta->tope = 1;

		p_task_system_dta->array_motor[0].power = 0;
		p_task_system_dta->array_motor[0].speed = 0;
		p_task_system_dta->array_motor[0].spin = 0;

		p_task_system_dta->array_motor[1].power = 0;
		p_task_system_dta->array_motor[1].speed = 0;
		p_task_system_dta->array_motor[1].spin = 0;

		LOGGER_INFO(" ");
		LOGGER_INFO("   %s = %lu   %s = %lu   %s = %s",
					GET_NAME(state), (uint32_t)state,
					GET_NAME(event), (uint32_t)event,
					GET_NAME(b_event), (b_event ? "true" : "false"));
	}

	put_event_task_display(0, 0, "task_system_mode");
	put_event_task_display(0, 1, " NORMAL         ");

	task_system_set_mode(NORMAL);
}

void task_system_update(void *parameters)
{
	/* Run Task Statechart */
	switch (g_task_system_mode)
	{
		case NORMAL:

			task_system_normal_statechart();

			break;

		case SETUP:

			task_system_setup_statechart();

			break;

		default:

			task_system_set_mode(NORMAL);

			break;
		}
}

// actualiza las dos filas del display segun el estado del menu
static void task_system_setup_display(task_system_dta_t *p_task_system_dta)
{
	char str_line[17];

	switch (p_task_system_dta->state)
	{
		case ST_SYS_MAIN:
			snprintf(str_line, sizeof(str_line), "Motor 1:%s,%lu,%c",
					 (0 == p_task_system_dta->array_motor[0].power) ? " ON " : " OFF",
					 p_task_system_dta->array_motor[0].speed % 10,
					 (0 == p_task_system_dta->array_motor[0].spin) ? 'L' : 'R');
			put_event_task_display(0, 0, str_line);

			snprintf(str_line, sizeof(str_line), "Motor 2:%s,%lu,%c",
					 (0 == p_task_system_dta->array_motor[1].power) ? " ON " : " OFF",
					 p_task_system_dta->array_motor[1].speed % 10,
					 (0 == p_task_system_dta->array_motor[1].spin) ? 'L' : 'R');
			put_event_task_display(0, 1, str_line);
			break;

		case ST_SYS_MENU_1:
			put_event_task_display(0, 0, "Enter/Next/Esc  ");
			if (1 == p_task_system_dta->motor)
			{
				put_event_task_display(0, 1, "> Motor 1       ");
			}
			else
			{
				put_event_task_display(0, 1, "> Motor 2       ");
			}
			break;

		case ST_SYS_MENU_2:
			put_event_task_display(0, 0, "Enter/Next/Esc  ");
			if (1 == p_task_system_dta->param)
			{
				put_event_task_display(0, 1, "> Power         ");
			}
			else if (2 == p_task_system_dta->param)
			{
				put_event_task_display(0, 1, "> Speed         ");
			}
			else
			{
				put_event_task_display(0, 1, "> Spin          ");
			}
			break;

		case ST_SYS_MENU_3:
			put_event_task_display(0, 0, "Enter/Next/Esc  ");
			if (1 == p_task_system_dta->param)
			{
				if (0 == p_task_system_dta->valor)
				{
					put_event_task_display(0, 1, "> ON            ");
				}
				else
				{
					put_event_task_display(0, 1, "> OFF           ");
				}
			}
			else if (2 == p_task_system_dta->param)
			{
				snprintf(str_line, sizeof(str_line), "> %lu             ", p_task_system_dta->valor % 10);
				put_event_task_display(0, 1, str_line);
			}
			else
			{
				if (0 == p_task_system_dta->valor)
				{
					put_event_task_display(0, 1, "> LEFT          ");
				}
				else
				{
					put_event_task_display(0, 1, "> RIGHT         ");
				}
			}
			break;

		default:
			break;
	}
}

void task_system_normal_statechart(void)
{
	task_system_dta_t *p_task_system_dta;

	/* Update Task System Data Pointer */
	p_task_system_dta = &task_system_dta_list[NORMAL];

	if (true == any_event_task_system())
	{
		p_task_system_dta->flag = true;
		p_task_system_dta->event = get_event_task_system();
	}

	switch (p_task_system_dta->state)
	{
		case ST_SYS_IDLE:

			if ((true == p_task_system_dta->flag) && (EV_SYS_BTN_A == p_task_system_dta->event))
			{
				p_task_system_dta->flag = false;
				put_event_task_actuator(EV_LED_ACTIVE, ID_LED_A);
				p_task_system_dta->state = ST_SYS_ACTIVE;

				put_event_task_display(0, 0, "task_system_mode");
				put_event_task_display(0, 1, " SETUP          ");

				task_system_set_mode(SETUP);
				task_system_dta_list[SETUP].state = ST_SYS_MAIN;
				task_system_setup_display(&task_system_dta_list[SETUP]);
			}

			break;

		case ST_SYS_ACTIVE:

			if ((true == p_task_system_dta->flag) && (EV_SYS_IDLE == p_task_system_dta->event))
			{
				p_task_system_dta->flag = false;
				put_event_task_actuator(EV_LED_IDLE, ID_LED_A);
				p_task_system_dta->state = ST_SYS_IDLE;
			}

			break;

		default:

			p_task_system_dta->tick  = DEL_SYS_MIN;
			p_task_system_dta->state = ST_SYS_IDLE;
			p_task_system_dta->event = EV_SYS_IDLE;
			p_task_system_dta->flag = false;

			break;
	}
}

void task_system_setup_statechart(void)
{
	task_system_dta_t *p_task_system_dta;

	/* Update Task System Data Pointer */
	p_task_system_dta = &task_system_dta_list[SETUP];

	if (true == any_event_task_system())
	{
		p_task_system_dta->flag = true;
		p_task_system_dta->event = get_event_task_system();
	}

	if (false == p_task_system_dta->flag)
	{
		return;
	}

	p_task_system_dta->flag = false;

	// apaga el led al soltar el boton
	if (EV_SYS_IDLE == p_task_system_dta->event)
	{
		put_event_task_actuator(EV_LED_IDLE, ID_LED_A);
		return;
	}

	// vuelve a modo normal si se presiona el boton de placa
	if (EV_SYS_BTN_A == p_task_system_dta->event)
	{
		put_event_task_actuator(EV_LED_ACTIVE, ID_LED_A);
		task_system_dta_list[NORMAL].state = ST_SYS_ACTIVE;

		put_event_task_display(0, 0, "task_system_mode");
		put_event_task_display(0, 1, " NORMAL         ");

		task_system_set_mode(NORMAL);
		return;
	}

	switch (p_task_system_dta->state)
	{
		case ST_SYS_MAIN:

			// pasa al nivel 1 del menu
			if (EV_SYS_ENTER == p_task_system_dta->event)
			{
				p_task_system_dta->state = ST_SYS_MENU_1;
				task_system_setup_display(p_task_system_dta);
			}

			break;

		case ST_SYS_MENU_1:

			if (EV_SYS_ESCAPE == p_task_system_dta->event)
			{
				p_task_system_dta->state = ST_SYS_MAIN;
				task_system_setup_display(p_task_system_dta);
			}
			else if (EV_SYS_NEXT == p_task_system_dta->event)
			{
				// alterna entre motor 1 y motor 2
				if (1 == p_task_system_dta->motor)
				{
					p_task_system_dta->motor = 2;
				}
				else
				{
					p_task_system_dta->motor = 1;
				}
				p_task_system_dta->index = p_task_system_dta->motor - 1;
				p_task_system_dta->state = ST_SYS_MENU_1;
				task_system_setup_display(p_task_system_dta);
			}
			else if (EV_SYS_ENTER == p_task_system_dta->event)
			{
				p_task_system_dta->index = p_task_system_dta->motor - 1;
				p_task_system_dta->state = ST_SYS_MENU_2;
				task_system_setup_display(p_task_system_dta);
			}

			break;

		case ST_SYS_MENU_2:

			if (EV_SYS_ESCAPE == p_task_system_dta->event)
			{
				p_task_system_dta->state = ST_SYS_MENU_1;
				task_system_setup_display(p_task_system_dta);
			}
			else if (EV_SYS_NEXT == p_task_system_dta->event)
			{
				// recorre parametros power, speed y spin
				if (1 == p_task_system_dta->param)
				{
					p_task_system_dta->param = 2;
				}
				else if (2 == p_task_system_dta->param)
				{
					p_task_system_dta->param = 3;
				}
				else
				{
					p_task_system_dta->param = 1;
				}
				p_task_system_dta->state = ST_SYS_MENU_2;
				task_system_setup_display(p_task_system_dta);
			}
			else if (EV_SYS_ENTER == p_task_system_dta->event)
			{
				// define tope segun parametro elegido
				if (2 == p_task_system_dta->param)
				{
					p_task_system_dta->valor = 0;
					p_task_system_dta->tope = 9;
				}
				else
				{
					p_task_system_dta->valor = 0;
					p_task_system_dta->tope = 1;
				}
				p_task_system_dta->state = ST_SYS_MENU_3;
				task_system_setup_display(p_task_system_dta);
			}

			break;

		case ST_SYS_MENU_3:

			if (EV_SYS_ESCAPE == p_task_system_dta->event)
			{
				p_task_system_dta->state = ST_SYS_MENU_2;
				task_system_setup_display(p_task_system_dta);
			}
			else if (EV_SYS_NEXT == p_task_system_dta->event)
			{
				// incrementa valor hasta el tope y reinicia
				if (p_task_system_dta->valor < p_task_system_dta->tope)
				{
					p_task_system_dta->valor = p_task_system_dta->valor + 1;
				}
				else
				{
					p_task_system_dta->valor = 0;
				}
				p_task_system_dta->state = ST_SYS_MENU_3;
				task_system_setup_display(p_task_system_dta);
			}
			else if (EV_SYS_ENTER == p_task_system_dta->event)
			{
				// guarda el valor en el arreglo de estructuras
				p_task_system_dta->index = p_task_system_dta->motor - 1;
				if (1 == p_task_system_dta->param)
				{
					p_task_system_dta->array_motor[p_task_system_dta->index].power = p_task_system_dta->valor;
				}
				else if (2 == p_task_system_dta->param)
				{
					p_task_system_dta->array_motor[p_task_system_dta->index].speed = p_task_system_dta->valor;
				}
				else
				{
					p_task_system_dta->array_motor[p_task_system_dta->index].spin = p_task_system_dta->valor;
				}
				p_task_system_dta->state = ST_SYS_MENU_2;
				task_system_setup_display(p_task_system_dta);
			}

			break;

		default:

			p_task_system_dta->tick  = DEL_SYS_MIN;
			p_task_system_dta->state = ST_SYS_MAIN;
			p_task_system_dta->event = EV_SYS_IDLE;
			p_task_system_dta->flag = false;

			break;
	}
}

void task_system_set_mode(task_system_mode_t task_system_mode)
{
	g_task_system_mode = task_system_mode;
}

/********************** end of file ******************************************/
