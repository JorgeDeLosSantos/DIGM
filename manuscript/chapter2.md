# Introducción al desarrollo de GUIs

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

