# Medición de tiempos de ejecución

## Valores observados de `task_dta_list` (tras ~1 minuto de ejecución)

| Índice | Tarea           | LET [µs] | BCET [µs] | WCET [µs] |
| ------ | --------------- | -------- | --------- | --------- |
| 0      | `task_sensor`   | 12       | 12        | 16        |
| 1      | `task_system`   | 6        | 5         | 8         |
| 2      | `task_actuator` | 3        | 2         | 5         |
| 3      | `task_display`  | 46       | 1         | 47        |
|        | **Total**       | 67       | 20        | **76**    |

se cumplen las restricciones temporales del ejecutor cíclico. Esto se debe a que `task_display` es **no bloqueante**: escribe un carácter por tick en lugar de los 32 de una vez (lo que llevaría ≈ 1,5 ms y rompería el período de 1 ms).