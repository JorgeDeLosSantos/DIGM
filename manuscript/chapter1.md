# Una introducción a MATLAB

## ¿Qué es MATLAB?

MATLAB es un lenguaje de programación de alto nivel y entorno de
desarrollo interactivo, utilizado para numerosas aplicaciones de
carácter técnico y científicas. MATLAB permite realizar adquisición y
análisis de datos, desarrollo de algoritmos computacionales, creación y
simulación de modelos físicos y la visualización gráfica de procesos
determinados. Entre los campos de uso de MATLAB se incluyen el
procesamiento digital de audio, imágenes y vídeo, sistemas de control,
finanzas computacionales, biología computacional, redes neuronales, etc.

## Tipos de datos y operadores

En la tabla siguiente se resumen los tipos de datos nativos de MATLAB:

## MATLAB como una calculadora

## Ficheros de comandos

Los ficheros de comandos, conocidos también como “scripts”, son archivos
de texto sin formato (ASCII) con la extensión característica de los
archivos de MATLAB (\*.m), se utilizan para almacenar una serie de
comandos o instrucciones que se ejecutan sucesivamente y que habrán de
realizar una tarea específica. Los scripts de MATLAB pueden editarse
utilizando cualquier editor de texto sin formato (Bloc de Notas,
Notepad++, Sublime Text, etc…), aunque es más recomendable utilizar el
editor de MATLAB, puesto que proporciona herramientas que facilitan la
corrección de errores, el control sobre la ejecución del código y la
capacidad de autocompletado y sugerencias cuando se utilizan funciones
nativas de MATLAB.

Para crear un nuevo script puede pulsar la combinación Ctrl + N (bajo SO
Windows), o buscar en la interfaz de MATLAB la opción New y enseguida
seleccionar Script; si prefiere hacerlo desde la ventana de comandos
puede introducir el comando edit que le abrirá un nuevo script.

Para guardar un fichero de comandos utilice la opción Save de la barra
de herramientas o bien mediante la combinación de teclas Ctrl + S en
Windows. Debe tomarse en cuenta que al guardar un script se le
proporcione un nombre que no entre en conflicto con las funciones
nativas de MATLAB o las palabras reservadas del lenguaje. Algunas
recomendaciones que deben seguirse para nombrar un script son:

* El nombre deberá contener sólo letras, números o guiones bajos.
* No deberá comenzar con un carácter diferente a una letra (Por 
ejemplo: 102metodo.m, es un nombre inválido dado que comienza con 
un número).
* Evite utilizar nombres de funciones nativas de MATLAB o palabras 
reservadas del lenguaje que podrían ocasionar conflictos.

## Funciones y subfunciones

Las funciones son porciones de código que por lo general aceptan
argumentos o valores de entrada y devuelven un valor de salida. Una
función es una herramienta muy útil en la programación, dado que permite
la reutilización de código para procedimientos que así lo requieran, lo
cual implica una mayor productividad. MATLAB está compuesto por una
multitud de funciones agrupadas en toolboxs, cada una de ellas pensada
para resolver una situación concreta. La estructura básica de una
función contiene los siguientes elementos:

-   La palabra reservada function

-   Los valores de salida

-   El nombre de la función

-   Los argumentos de entrada

-   Cuerpo de la función

Para una mejor comprensión de cada uno de esos elementos, refiérase a
las siguientes líneas de código:

    function res = suma(a,b)
    res = a+b;
    end

La función anterior llamada suma, recibe como argumentos de entrada dos
valores numéricos a y b, y devuelve un resultado guardado en res que
equivale a la suma aritmética de las variables de entrada. Si ejecutamos
la función en la ventana de comandos obtenemos algo similar a esto:

    >> s=suma(3,2)
    s =
         5

Si no hace una asignación el resultado devuelto se guarda en la variable
ans.

## Sentencias de control y bucles

### Sentencia if-elseif-else

La sentencia if se utiliza como bifurcación simple por sí sola, es
decir, en aquellas situaciones en las cuales se requiera evaluar
solamente una condición, por ejemplo, suponga que tiene dos números a y
b y necesita comprobar si son iguales y ejecutar una acción, para ello
bastaría con una sentencia if simple:

    if a==b
        disp('a es igual a b');
    end

A diferencia del caso anterior hay situaciones que requieren la
ejecución de una acción cuando la condición se cumpla y de otra en caso
contrario, entonces puede utilizarse una bifurcación doble formada por
las sentencias if-else. Retomando el ejemplo para la bifurcación if
simple, podríamos modificarlo de tal manera que envíe también un mensaje
(ejecute una acción) para cuando la condición no se cumple:

    if a==b
        disp('a es igual a b');
    else
        disp('a es diferente de b');
    end

Ahora imagine que para los ejemplos anteriores se necesita especificar
si a=b, si a&gt;b o bien si a&lt;b, lo cual implicaría tener una
sentencia de selección múltiple if-elseif-else que permite escoger entre
varias opciones, evaluándose en orden descendente, por ejemplo refiérase
a la siguiente estructura:

    if cond1
        % Instrucciones
    elseif cond2 
        % Instrucciones
    elseif cond3
        % Instrucciones
        .
        .
        .
    elseif condN
        % Instrucciones
    else
        % Instrucciones
    end

MATLAB evalúa primeramente la condición 1 contenida en la sentencia if
(cond1) y en el caso de no cumplirse evalúa la siguiente condición de
forma sucesiva (cond2, cond3, …); finalmente y en el caso de que ninguna
de las opciones evaluadas se cumpla, se ejecuta la instrucción contenida
en la sentencia else. A continuación se muestra el ejemplo de una
bifurcación múltiple para la situación descrita al principio:

    if a==b
        disp('a es igual que b');
    elseif a>b
        disp('a es mayor que b');
    elseif a<b
        disp('a es menor que b');
    end

### Sentencia switch

La sentencia switch es una bifurcación múltiple que permite seleccionar
entre varias opciones o casos la acción a ejecutar. La sintaxis general
es:

    switch var
       case opc1
          % Instrucciones
       case opc2
          % Instrucciones
        .
        .
        .
       otherwise
          % Intrucciones
    end

Siendo var la variable que servirá como criterio de selección. Después
de la palabra reservada case, se coloca el valor de var para el cual se
ejecutarán esas instrucciones, y en otherwise se insertan las
instrucciones que MATLAB deberá ejecutar por defecto en caso de no
cumplirse ninguno de los casos especificados. Enseguida se muestran dos
ejemplos correspondientes a la sentencia de selección switch:

    X=input('Inserte 0 o 1: ');
    switch X
        case 0
            disp('Insertó cero');
        case 1
            disp('Insertó uno');
        otherwise
            warning('Valor incorrecto, verifique');     
    end

    letra=input('Inserte una letra: ','s');
    switch letra
        case {'a','e','i','o','u'}
            disp('Es una vocal');
        otherwise
            disp('Es una consonante');
    end

### Bucle for

La sintaxis general de un bucle for se muestra enseguida:

    for i=inicio:incremento:fin
        % Instrucciones...
    end

El valor inicio es a partir del cual se ejecutará el ciclo, el
incremento es la cantidad que varía en cada paso de ejecución, y el
valor de final establece el último valor que tomará el ciclo. El
siguiente código muestra un ciclo for muy básico, el cual simplemente
muestra en consola el valor actual adquirido por la variable.

    for i=1:10
        fprintf('Valor actual: %g \n',i);
    end

Cuando no se especifica el incremento, como el caso anterior, MATLAB
asume que es unitario. Es posible utilizar ciclos for anidados, por
ejemplo para cuando se requiere recorrer una matriz en sus dos
dimensiones y ejecutar operaciones elemento por elemento. Véase el
siguiente ejemplo:

    A=round(rand(5)*10);
    for i=1:5
        for j=1:5
            disp(A(i,j));
        end
    end

### Bucle while

El bucle while se utiliza, por lo general, cuando no se tiene un rango
definido sobre el cual se realice la ejecución del ciclo o bien cuando
la terminación del mismo viene dada por una condición. La sintaxis más
común es:

    while cond
        % Instrucciones
        % ...
        % ...
        % ...
    end

Donde cond es la condición que determina la finalización de ejecución.

Enseguida se muestra un ejemplo muy básico que muestra en pantalla el
valor de una variable utilizada como referencia:

    k=1;
    while k<10
        disp(k);
        k=k+1;
    end

Lo anterior muestra en consola el valor de k mientras esta sea menor a
10, es decir muestra todos los valores enteros en el intervalo \[1 9\],
es importante notar que la variable k debe incrementarse en cada ciclo
para que en un momento determinado la condición de finalización se
cumpla, de lo contrario se convertiría en un bucle infinito. Ahora,
veamos un ejemplo más práctico. La aproximación de una raíz cuadrada por
el método babilónico implica realizar n iteraciones mediante la
siguiente expresión:

# GUIs, una primera aproximación

## ¿Qué es una GUI?

Una interfaz gráfica de usuario o GUI, por sus siglas en inglés
(Graphical User Interface) es un elemento gráfico que contiene uno o más
controles que están disponibles para interactuar con el usuario mediante
un entorno visual sencillo, el cual permite la comunicación entre el
usuario y el computador. Las GUIs se desarrollan con la finalidad de
proporcionar a los usuarios, poco ambientados con el entorno de la
programación, herramientas de tipo gráfico que permitan una interacción
más intuitiva y además abstraerles de la codificación que hace funcionar
al programa. Sin ir más allá, el propio entorno de MATLAB es una
interfaz gráfica que permita al usuario manipular con gran facilidad
cada uno de sus elementos.

## GUIs en MATLAB

Algunos de los componentes más comunes de una GUI creada en MATLAB son
menús, barras de herramientas, botones, menús desplegables, cajas de
texto, entre otros. En las interfaces gráficas creadas en MATLAB pueden
aprovecharse todas las herramientas matemáticas y de ingeniería que
proporciona MATLAB, permiten además la manipulación de archivos de
datos, así como la interacción con otras GUIs y mostrar datos mediante
tablas y gráficas de gran calidad. Generalmente las GUIs son programadas
para que respondan a la manipulación del usuario con una acción
específica. Los controles gráficos que componen una GUI están
relacionados con una rutina de programación, llamados callbacks en el
entorno MATLAB, que se ejecuta cuando sucede un determinado evento, que
puede ser la entrada de caracteres mediante el teclado, el clic de un
botón del mouse, o situarse sobre un objeto.

# Figure y Axes

## Los objetos gráficos en MATLAB

Los objetos gráficos en MATLAB son los elementos básicos utilizados para
mostrar información en pantalla. Cada elemento es identificado mediante
una referencia comúnmente llamada handle, mediante la cual pueden
manipularse todas las propiedades o atributos del objeto. Además, es
necesario hacer mención que los objetos gráficos tienen una estructura
jerarquizada que permite definir qué objeto puede contener a otro,
enseguida se muestra un esquema ejemplificando lo dicho:

Note que Root es el objeto de mayor jerarquía y que hace referencia al
propio entorno gráfico de MATLAB. Las propiedades del objeto “raíz”
puede obtenerlas utilizando la función get como sigue:

    >> get(0, 'Propiedad')

Por ejemplo, con ’ScreenSize’ puede obtener el tamaño de la pantalla:

    >> get(0,'ScreenSize')
    ans =
               1           1        1366         768

O simplemente puede hacer lo siguiente para visualizar todas las
características:

    >> get(0)
        CallbackObject = []
        CommandWindowSize = [105 28]
        CurrentFigure = []
        Diary = off
        DiaryFile = diary
        Echo = off
        FixedWidthFontName = Courier New
        Format = short
        FormatSpacing = loose
        Language = es_mx
        MonitorPositions = [1 1 1366 768]
        More = off
        PointerLocation = [891 326]
        RecursionLimit = [500]
        ScreenDepth = [32]
        ScreenPixelsPerInch = [96]
        ScreenSize = [1 1 1366 768]
        ShowHiddenHandles = off
        Units = pixels

        BeingDeleted = off
        ButtonDownFcn = 
        Children = []
        Clipping = on
        CreateFcn = 
        DeleteFcn = 
        BusyAction = queue
        HandleVisibility = on
        HitTest = on
        Interruptible = on
        Parent = []
        Selected = off
        SelectionHighlight = on
        Tag = 
        Type = root
        UIContextMenu = []
        UserData = []
        Visible = on

# Controles gráficos

# Cuadros de diálogos

# Menús

# Alinear y organizar elementos

# Interconexión de GUIs

# Eventos

# Ejemplos de GUIs

# Desarrollo de GUIs con GUIDE
