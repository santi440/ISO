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
(h) Explique mediante un diagrama las posibles transiciones entre los estados.
(i) ¿Que scheduler de los mencionados en 1 f se encarga de las transiciones?
