# Ejercicios

1. Arrancar la webterminal (revisar el puerto de IRIS en docker-compose.yaml)

    http://localhost:52775/terminal/

2. Arrancar la shell de Python

```
do ##class(%SYS.Python).Shell()
```

Versión de IRIS:
```
>>> print('\nInterSystems IRIS version:')
>>> irisVersion = iris.cls('%SYSTEM.Version').GetVersion()
>>> print(irisVersion)
IRIS for UNIX (Ubuntu Server LTS for x86-64 Containers) 2021.2 (Build 651U) Mon Jan 31 2022 18:07:01 EST
```

¿Dónde esta el directorio mgr de IRIS?
```
>>> import iris 
>>> mgr = iris.cls("%Library.File")
>>> print (mgr.ManagerDirectory()) 
/usr/irissys/mgr/
```
(el comando se ejecutó en un contenedor)

Más ejemplos de iris.cls: obtener la cpu
```
>>> cpu = iris.cls("%SYSTEM.CPU")
>>> cpu.Dump()-- CPU Info for node d3d1e9239dd6 --------------------------------------------
          Architecture:x86_64                 
          Model: Intel(R) Core(TM) i7-9850H CPU @ 260GHz
        Vendor: Intel          
        # of threads: 12            
        # of cores: 6            
        # of chips: 1 
        # of threads per core: 2   
        # of cores per chip: 6          
        MT supported: 1            
        MT enabled: 1                   
        MHz: 2600
------------------------------------------------------------------------------
```

Obtener el número de clases en este namespace:
```
>>> print('\nInterSystems IRIS classes in this namespace:')
>>> status = iris.cls('%SYSTEM.OBJ').ShowClasses()
Embedded.UtilsGateway.PythonresultVer.ProductionresultVer.ResultsRuleTitanic.Table.Passenger
```

```
```

```
```

```
```

```
```

```
```
