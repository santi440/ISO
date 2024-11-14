(a) Significado de las Variantes de Round Robin

    Round Robin con Timer Fijo:
        Cada proceso recibe el mismo quantum de tiempo predefinido, que es constante para todos. Este valor es fijo y no cambia durante la ejecución de los procesos.
        Es la implementación más común de Round Robin y simplifica la administración del sistema, aunque puede no ser óptimo para procesos con diferentes necesidades de tiempo.

    Round Robin con Timer Variable:
        En esta variante, el quantum puede ajustarse dinámicamente según el estado, la prioridad o las necesidades del proceso.
        Por ejemplo, procesos que necesitan menos tiempo pueden recibir un quantum más corto, mientras que procesos de mayor carga pueden recibir un quantum más largo, optimizando el uso de la CPU.

(b) Diferencias entre Timer Fijo y Timer Variable con Ejemplo

Imaginemos que tenemos tres procesos con los siguientes tiempos de ejecución (en segundos):

    Proceso A: 10 segundos
    Proceso B: 5 segundos
    Proceso C: 8 segundos

Ejemplo con Round Robin de Timer Fijo

Supongamos un quantum fijo de 3 segundos para todos los procesos. La ejecución sería:

    Primera Ronda:
        A se ejecuta por 3 segundos (restan 7 segundos).
        B se ejecuta por 3 segundos (restan 2 segundos).
        C se ejecuta por 3 segundos (restan 5 segundos).

    Segunda Ronda:
        A se ejecuta otros 3 segundos (restan 4 segundos).
        B se ejecuta 2 segundos y finaliza.
        C se ejecuta 3 segundos (restan 2 segundos).

    Tercera Ronda:
        A se ejecuta 3 segundos (resta 1 segundo).
        C se ejecuta 2 segundos y finaliza.

    Cuarta Ronda:
        A se ejecuta el último segundo y finaliza.

Aquí, el timer fijo asegura que cada proceso reciba exactamente el mismo tiempo de ejecución en cada turno, sin considerar cuánto tiempo total necesita cada proceso para completar.

Ejemplo con Round Robin de Timer Variable

Con un timer variable, podríamos asignar el quantum de la siguiente forma:

    Proceso A, de mayor duración, podría recibir un quantum de 4 segundos.
    Proceso B, más corto, podría recibir solo 2 segundos.
    Proceso C, de duración intermedia, podría recibir un quantum de 3 segundos.

La ejecución sería:

    Primera Ronda:
        A se ejecuta 4 segundos (restan 6 segundos).
        B se ejecuta 2 segundos (restan 3 segundos).
        C se ejecuta 3 segundos (restan 5 segundos).

    Segunda Ronda:
        A se ejecuta 4 segundos (restan 2 segundos).
        B se ejecuta 3 segundos y finaliza.
        C se ejecuta 3 segundos (restan 2 segundos).

    Tercera Ronda:
        A se ejecuta los últimos 2 segundos y finaliza.
        C se ejecuta los últimos 2 segundos y finaliza.

En el caso de timer variable, los procesos que necesitan menos tiempo finalizan más rápidamente, optimizando el uso de la CPU. Sin embargo, se requiere un mecanismo para ajustar el quantum.
(c) ¿Dónde debería residir la información del Quantum en cada Variante?

    Timer Fijo:
        La información del quantum se almacena en una variable global del sistema operativo o del scheduler, ya que es un valor único e invariable durante la ejecución de los procesos.
        Esto facilita la gestión y minimiza el overhead, ya que no se necesita verificar o ajustar el quantum en cada ciclo de Round Robin.

    Timer Variable:
        En este caso, el quantum puede estar almacenado de manera individual para cada proceso en su estructura de control (por ejemplo, en su PCB o Process Control Block).
        Esto permite que cada proceso tenga su propio quantum, y el scheduler pueda ajustar el valor según las características o necesidades del proceso.
