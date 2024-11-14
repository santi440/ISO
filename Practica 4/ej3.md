(a) Explique su funcionamiento mediante un ejemplo.
(b) ¿Alguno de ellos requiere algún parámetro para su funcionamiento?
(c) Cual es el mas adecuado según los tipos de procesos y/o SO.
(d) Cite ventajas y desventajas de su uso

1) FCFS (Fisrt Coome First Served)
    (a) Funciona de forma sencilla: el proceso que llega primero es el primero en ser ejecutado.
    Ejemplo: Si tenemos los procesos A, B y C, que llegan en ese orden y tienen tiempos de ejecución de 4, 3 y 2 segundos, se ejecutarán en el mismo orden: A primero (4 segundos), luego B (3 segundos) y finalmente C (2 segundos). El tiempo total de espera y de ejecución para cada proceso se calcula en función de su orden de llegada.
    (b) Parámetro requerido: No requiere ningún parámetro adicional.
    (c) Es adecuado para sistemas donde los procesos tienen tiempos de ejecución similares y donde el orden de llegada es suficiente para decidir su ejecución (por ejemplo, sistemas por lotes).
    (d) Ventajas: Simple de implementar; bajo overhead.
        Desventajas: Puede producir tiempos de espera altos para procesos que llegan después de uno largo (problema de inanisión o "Starvation").
2) SJF (Shortest Job First)
    (a)Este algoritmo selecciona para ejecución el proceso que tenga el tiempo de ejecución más corto.
    Ejemplo: Si los procesos A, B y C tienen tiempos de ejecución de 4, 3 y 2 segundos, se ejecutarán en el orden C (2 segundos), B (3 segundos) y luego A (4 segundos), minimizando el tiempo de espera promedio.
    (b) Necesita conocer el tiempo estimado de ejecución de cada proceso, lo cual necesita un historial para calcularlo y puede ser difícil de obtener de forma exacta.
    (c) Es adecuado para sistemas donde el tiempo de ejecución de cada proceso es conocido con anticipación y se prioriza minimizar el tiempo de espera promedio.
    (d) Ventajas: Minimiza el tiempo de espera promedio.
        Desventajas: Puede llevar a un problema de hambre o "Starvation" para procesos largos si siempre hay procesos cortos en cola.
3) Round Robin
    (a) Los procesos se ejecutan en un ciclo continuo (round) por intervalos de tiempo fijo (quantum). Cada proceso obtiene un tiempo fijo de CPU y si no termina en ese tiempo, vuelve a la cola.
        Ejemplo: Con un quantum de 2 segundos y los procesos A, B y C con tiempos de ejecución de 4, 6 y 8 segundos, cada uno ejecutará 2 segundos en cada ciclo hasta terminar. Primero A se ejecutará 2 segundos, luego B por 2, después C por 2, luego A terminando su ejecucion, luego B por 2, luego C, y así sucesivamente hasta que teminen.
    (b) Necesita un quantum o intervalo de tiempo fijo para la ejecución de cada proceso.
    (c) Es ideal para sistemas tiempo compartido (time-sharing), como sistemas operativos multitarea, donde es importante dar tiempos de respuesta cortos a todos los procesos.
    (d) Ventajas: Proporciona tiempos de respuesta razonablemente buenos y es justo para todos los procesos.
        Desventajas: Si el quantum es muy pequeño, aumenta el overhead debido a los cambios de contexto. Si es muy grande, se comporta casi como un FCFS.
4) Prioridades
    (a) Asigna a cada proceso una prioridad y el scheduler elige el proceso con la prioridad más alta. En algunos sistemas, los procesos de menor prioridad pueden esperar indefinidamente si siempre hay procesos de alta prioridad.
Ejemplo: Supongamos que tenemos procesos A, B y C con prioridades 2, 1 y 3 respectivamente (donde 1 es la prioridad más alta). B se ejecutará primero, luego A y finalmente C.
    (b) Necesita conocer la prioridad asignada a cada proceso.
    (c) Es adecuado para sistemas en tiempo real o donde es necesario cumplir con ciertos niveles de servicio (por ejemplo, donde algunos procesos deben ejecutarse antes que otros por su importancia).
    (d) Ventajas: Permite que los procesos críticos se ejecuten con prioridad.
        Desventajas: Si no se maneja bien, puede ocurrir "Starvation" para procesos de baja prioridad. Algunos sistemas usan envejecimiento para mitigar esto.
Estos ultimos dos suelen mezclarse teniendo una cola de prioridades por proceso que funcionan internamente como un Round Rovin y para evitar Starvation, además, se aumenta el grado de prioridad de un proceso en forma temporal, permitiendo que un proceso que no se ejecuta hace mucho tiempo tome la CPU y luego vuelva a su prioridad correspondiente.

