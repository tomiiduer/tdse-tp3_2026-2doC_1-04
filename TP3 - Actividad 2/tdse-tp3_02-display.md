# Valores observados de task_dta_list

|Índice|Tarea|NOE [ejecuciones]|LET [µs]|BCET [µs]|WCET [µs]|
|---|---|---|---|---|---|
|0|`task_test`|12392|1|1|14|
|1|`task_display`|12384|1|1|189|
$$
∑WCET=14+189=203 μs<1000 μs
$$
Gracias a escribir **1 carácter por tick** (en lugar de `displayStringWrite` de 16 caracteres ≈ 2.4 ms), el WCET de `task_display` quedó acotado por debajo de 1 ms.
