# Ejercicios ObjectScript Python

## Instalación de Python

Se puede encontrar en el bin de la instalación de IRIS (versión 2021.2 o posterior).

En un contenedor (linux):

    /usr/irissys/bin/irispython

En Windows:

    C:\InterSystems\IRIS\bin\irispython

En general el directorio en el que se encuentra el "bin" es el elegido durante la instalación de IRIS.

## Instalar un paquete Python

Hay que usar el instalador Pip apuntando al directorio mgr/python de la instalación de python de IRIS que queramos usar. En el caso de un contenedor:

```
pip3 install --target /usr/irissys/mgr/python reportlab
```

 que viene con IRIS: irispip. Se encuentra en el mismodirectorio que irispython

## Importar un paquete Python

```
set pymath = ##class(%SYS.Python).Import("math")
```

Veamos qué es pymath:
```
zw pymath
pymath=1@%SYS.Python  ;  <module 'math' (built-in)>  ; <OREF>
```

El valor de Pi:
```
w pymath.pi
3.141592653589793116
```
O el factorial de 10:

```
write pymath.factorial(10)
3628800
```

Ejecutemos una shell Python
```
set $namespace = "SAMPLES"
SAMPLES>do ##class(%SYS.Python).Shell()
Python 3.9.5 (default, Jul 19 2021, 17:50:44) [MSC v.1927 64 bit (AMD64)] on win32
Type quit() or Ctrl-D to exit this shell.
>>>
```
Dentro de la shell podemos ejecutar cualquier comando Python

```
print ("hello world")
hello world
```

Ejecutemos un comando Python directamente desde ObjectScript:
```
set rslt = ##class(%SYS.Python).Run("print('hello world from python')")
hello world from python
```
```
```



```
```