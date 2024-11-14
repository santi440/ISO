Comunicación entre procesos:
i. Investigue la forma de comunicación entre procesos a través de pipes.
    Los pipes son una forma de comunicación entre procesos en sistemas Unix y Linux. Permiten que un proceso escriba datos en un canal, mientras que otro proceso lee esos datos. Esta forma de comunicación es unidireccional, lo que significa que los datos fluyen en una sola dirección, de un proceso (escritor) a otro (lector).
ii. ¿Cómo se crea un pipe en C?.
    En C, un pipe se crea usando la función pipe() de la biblioteca estándar de Unix. Esta función toma un arreglo de dos enteros como parámetro, y los valores en el arreglo representan los extremos de lectura y escritura del pipe.

Ejemplo de creación de un pipe:
```int fd[2]; // Arreglo para los extremos del pipe
if (pipe(fd) == -1) {
    perror("Error al crear el pipe");
    return 1;
}
```
iii. ¿Qué parametro es necesario para la creación de un pipe?. Explique para que se utiliza.
    Para crear un pipe, es necesario pasarle un arreglo de dos enteros a la función pipe(). Este arreglo (fd[2]) representa los extremos de lectura (fd[0]) y de escritura (fd[1]) del pipe. El sistema operativo utiliza estos valores para identificar el flujo de datos dentro del canal de comunicación.

- fd[0]: se utiliza para leer datos del pipe.
- fd[1]: se utiliza para escribir datos en el pipe.
iv. ¿Qué tipo de comunicación es posible con pipes?
    Con los pipes, es posible realizar comunicación unidireccional entre procesos relacionados (padre-hijo o procesos creados por fork()). Si se requiere comunicación bidireccional, es necesario crear dos pipes o usar una técnica de comunicación diferente, como sockets o memoria compartida.
(e) ¿Cuál es la información mínima que el SO debe tener sobre un proceso?¿En que estructura de datos asociada almacena dicha información?
    El sistema operativo debe almacenar información clave sobre cada proceso, como:
- ID del proceso (PID): un identificador único para el proceso.
- Estado del proceso: indica si el proceso está en ejecución, esperando, etc.
- Contador de programa (PC): la dirección de la próxima instrucción a ejecutar.
- Registros y contexto: el estado de los registros de la CPU y otro contexto de ejecución.
- Memoria asignada: las direcciones de memoria donde reside el proceso.
Esta información se almacena en la PCB, Process Control Block, estructura conocida como la tabla de procesos o bloque de control de proceso, que permite al sistema operativo gestionar y hacer seguimiento de cada proceso.
(f) ¿Qué significa que un proceso sea “CPU Bound” y “I/O Bound”?
- CPU Bound: un proceso es CPU bound si requiere principalmente el uso de la CPU para realizar cálculos y procesamiento intensivo. Estos procesos pasan la mayor parte de su tiempo ejecutando instrucciones de la CPU.
- I/O Bound: un proceso es I/O bound si depende en gran medida de operaciones de entrada/salida (como leer de un archivo o interactuar con un dispositivo). Estos procesos suelen estar en espera de recursos de E/S más tiempo que utilizando la CPU.
(g) ¿Cuáles son los estados posibles por los que puede atravesar un proceso?
Estados posibles de un proceso

Los estados comunes por los que puede atravesar un proceso son:

    Nuevo (New): Cuando se crea un proceso, inicia en este estado.
    Listo (Ready): El proceso está preparado para ejecutar, pero está esperando ser asignado al procesador.
    Ejecución (Running): El proceso está siendo ejecutado activamente por la CPU.
    Espera (Waiting o Blocked): El proceso está detenido, esperando que ocurra un evento externo (por ejemplo, la llegada de datos desde un dispositivo de E/S).
    Swapeado: Puede dividirse en 2(ready-swap y sleep-swap), inplica que el proceso esta en memoria secundaria porque se creó y no habia suficiente memoria, se determino que habia que bajar el grado de multiprogramacion o termino su E/S y espera memoria
    Terminado (Exit): El proceso ha completado su ejecución y se encuentra en este estado hasta que se liberen sus recursos.

potencialmente pueden haber otros como el swap

(h) Explique mediante un diagrama las posibles transiciones entre los estados.
    No puedo dibujar aca flaco. 
    Nuevo → Listo: Al crearse un proceso, pasa de "Nuevo" a "Listo" cuando está preparado para ejecutarse y empieza a competir por CPU.
    Nuevo → Swap: Está preparado para ejecutarse pero no hay suficiente memoria.
    Swap → Listo: Se libero memoria y el loader carga el proceso en memoria.
    Listo → Ejecución: El short scheduler asigna CPU al proceso, y el proceso pasa a estado de "Ejecución", realizando su tarea.
    Ejecución → Espera: Si el proceso necesita esperar un evento externo (como E/S), pasa al estado de "Espera".
    Espera → Listo: Una vez que el evento se cumple, el proceso vuelve a estar "Listo" para ejecutarse.
    Ejecución → Terminado: Cuando el proceso termina su ejecución, pasa al estado de "Terminado".
    Ejecución → Listo: Si el proceso es interrumpido (por ejemplo, porque terminó su tiempo de CPU asignado en un sistema multitarea), vuelve a "Listo".
(i) ¿Que scheduler de los mencionados en 1 f se encarga de las transiciones?
    Transición de Nuevo a Listo o Swap: El scheduler de largo plazo se encarga de aumentar el grado de multiprogramción.
    Transición de Listo a Ejecución: El scheduler de corto plazo o planificador de CPU es responsable de decidir cuál proceso en la cola de listos se ejecutará a continuación.
    Transición de Swap a Listo y viceversa: Aquí actúa el scheduler de medio plazo en algunos sistemas operativos, que decide cuándo un proceso en espera debe volver a estar listo, especialmente en sistemas de memoria virtual y paginación.
