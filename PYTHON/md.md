
# STRING - Formatação


### FORMATANDO TEXTO


```python
# DECLARAÇÃO DA VARIÁVEL

valor = 'Nação'
```


```python
# FORMAÇÃO REPR

f'{valor!r}'
```

```
"'Nação'"
```


```python
# FORMAÇÃO TIPO STRING

f'{valor!s}'
```

```
'Nação'
```


```python
# FORMAÇÃO ASCII

f'{valor!a}'
```

```
"'Na\\xe7\\xe3o'"
```


```python
# FORMAÇÃO E COLOCANDO EM CAIXA ALTA

f'{valor.upper()}'
```

```
'NAÇÃO'
```


```python
# FORMAÇÃO E COLOCNADO EM CAIXA BAIXA

f'{valor.lower()}'
```

```
'nação'
```


```python
# FORMAÇÃO E COLOCANDO ESPAÇOS

f'{valor:50}'
```

```
'Nação                                             '
```


```python
# FORMAÇÃO E COLOCANDO ESPAÇOS E CENTRALIZANDO

f'{valor:^50}'
```

```
'                      Nação                       '
```


```python
# FORMAÇÃO E COLOCANDO ESPAÇOS E ALIANDO

f'{valor:>50}'
```

```
'                                             Nação'
```


```python
# FORMAÇÃO E COLOCANDO CARACTERES E ALIANDO

f'{valor:-^50}'
```

```
'----------------------Nação-----------------------'
```


```python
# FORMAÇÃO E COLOCANDO CARACTERES E ALIANDO

f'{valor:-<50}'
```

```
'Nação---------------------------------------------'
```


```python
# FORMAÇÃO E COLOCANDO CARACTERES E ALIANDO

f'{valor:->50}'
```

```
'---------------------------------------------Nação'
```


```python
# FORMAÇÃO E EXIBINDO A VARIÁVEL E O VALOR

f'{valor=}'
```

```
"valor='Nação'"
```


```python
# FORMAÇÃO E EXIBINDO A VARIÁVEL E O VALOR  COLOCANDO ESPAÇOS E ALIANDO

f'{valor=:50}'
```

```
'valor=Nação                                             '
```


```python
# FORMAÇÃO E EXIBINDO A VARIÁVEL E O VALOR  COLOCANDO ESPAÇOS E ALIANDO

f'{valor.upper()=!r:*^15}'
```

```
"valor.upper()=****'NAÇÃO'****"
```


### FORMATANDO NÚMEROS INTEIRO


```python
# DECLARAÇÃO DA VARIÁVEL

valor = 42
```


```python
# FORMAÇÃO DE NÚMERO EM DICIMAL

f'{valor:d}'
```

```
'42'
```


```python
# FORMAÇÃO DE NÚMERO EM OCTAL

f'{valor:o}'
```

```
'52'
```


```python
# FORMAÇÃO DE NÚMERO EM BINÁRIO

f'{valor:b}'
```

```
'101010'
```


```python
# FORMAÇÃO DE NÚMERO EM HEXADECIMAL

f'{valor:x}'
```

```
'2a'
```


```python
# FORMAÇÃO DE NÚMERO EM HEXADECIMAL

f'{valor:X}'
```

```
'2A'
```


```python
# FORMAÇÃO DE NÚMERO EM DECIMAL COM ESPAÇO

f'{valor:20d}'
```

```
'                  42'
```


```python
# FORMAÇÃO DE NÚMERO EM DECIMAL COM ESPAÇO

f'{valor:^20d}'
```

```
'         42         '
```


```python
# FORMAÇÃO DE NÚMERO EM DECIMAL COM CARACTERES

f'{valor:-^20d}'
```

```
'---------42---------'
```


```python
# FORMAÇÃO DE NÚMERO EM DECIMAL COM SINAL

f'{valor:+d}'
```

```
'+42'
```


```python
# FORMAÇÃO DE NÚMERO EM DECIMAL COM SINAL

f'{valor*-1:+d}'
```

```
'-42'
```


```python
# FORMAÇÃO DE NÚMERO EM DECIMAL COM SINAL E ESPAÇO

f'{valor:=+20d}'
```

```
'+                 42'
```


```python
# FORMAÇÃO DE NÚMERO EM DECIMAL COM SINAL E ESPAÇO

f'{valor*-1:=+20d}'
```

```
'-                 42'
```


### FORMATANDO NÚMEROS RACIONAL


```python
# DECLARAÇÃO DA VARIÁVEL

valor = 3.141592653
```


```python
# FORMAÇÃO DE NÚMERO EM RACIONAL COM DUAS CASAS DECIMAIS

f'{valor:2.2f}'
```

```
'3.14'
```


```python
# FORMAÇÃO DE NÚMERO EM RACIONAL COM TRÊS CASAS DECIMAIS

f'{valor:2.3f}'
```

```
'3.142'
```


```python
# FORMAÇÃO DE NÚMERO EM RACIONAL COM DUAS CASAS ANTES DA VÍRGULA E DUAS CASAS DECIMAIS

f'{valor:+2.2f}'
```

```
'+3.14'
```


```python
# FORMAÇÃO DE NÚMERO EM RACIONAL COM DUAS CASAS ANTES DA VÍRGULA E DUAS CASAS DECIMAIS E O SINAL

f'{valor:+2.2f}'
```

```
'+3.14'
```


```python
# FORMAÇÃO DE NÚMERO EM RACIONAL EM NOTAÇÃO CIÊNTIFICA

f'{valor:2.4e}'
```

```
'3.1416e+00'
```


```python
# FORMAÇÃO DE NÚMERO EM RACIONAL EM PERCENTUAL

f'{valor:2.4%}'
```

```
'314.1593%'
```


```python
# FORMAÇÃO DE NÚMERO EM RACIONAL EM PERCENTUAL COM ESPAÇO

f'{valor:=20.4%}'
```

```
'           314.1593%'
```


```python
# FORMAÇÃO DE NÚMERO EM RACIONAL COM O SINAL NO INÍCIO

f'{valor:=+20.4%}'
```

```
'+          314.1593%'
```


```python
# FORMAÇÃO DE NÚMERO EM RACIONAL COM CARACTERES

f'{valor:.>20.4%}'
```

```
'...........314.1593%'
```


```python
# FORMAÇÃO DE NÚMERO EM RACIONAL COM CARACTERES

f'{valor*-1:.>20.4%}'
```

```
'..........-314.1593%'
```


```python
# FORMAÇÃO DE NÚMERO EM RACIONAL COM CARACTERES

f'{valor:.<20.4%}'
```

```
'314.1593%...........'
```


```python
# FORMAÇÃO DE NÚMERO EM RACIONAL  COM CARACTERES

f'{valor:.^20.4%}'
```

```
'.....314.1593%......'
```


### FORMATANDO DATAS E HORAS


```python
# IMPORTAR MÓDULO
from datetime import datetime

# PEGAR A DATA DO SISTEMA
data = datetime.now()
data
```

```
datetime.datetime(2022, 10, 25, 10, 57, 33, 839083)
```


```python
# FORMAÇÃO DE DATA

f'{data}'
```

```
'2022-10-25 10:57:33.839083'
```


```python
# FORMAÇÃO DE DATA EM DIA

f'{data:%d}'
```

```
'25'
```


```python
# FORMAÇÃO DE DATA EM MÊS

f'{data:%m}'
```

```
'10'
```


```python
# FORMAÇÃO DE DATA EM ANO

f'{data:%y}'
```

```
'22'
```


```python
# FORMAÇÃO DE DATA EM DIA MÊS E ANO

f'{data:%d-%m-%y}'
```

```
'25-10-22'
```


```python
# FORMAÇÃO DE DATA EM DIA MÊS E ANO

f'{data:%d-%m-%Y}'
```

```
'25-10-2022'
```


```python
# FORMAÇÃO DE DATA EM ANO DIA MÊS

f'{data:%Y-%d-%m}'
```

```
'2022-25-10'
```


```python
# FORMAÇÃO DE DATA EM ANO MÊS E DIA

f'{data:%Y-%m-%d}'
```

```
'2022-10-25'
```


```python
# FORMAÇÃO DE HORA EM HORA E MINUTO

f'{data:%H:%M}'
```

```
'10:57'
```


```python
# FORMAÇÃO DE HORA EM HORA MINUTO E SEGUNDO

f'{data:%H:%M:%S}'
```

```
'10:57:33'
```


```python
# FORMAÇÃO DE DATA COMPLETA

f'{data:%c}'
```

```
'Tue Oct 25 10:57:33 2022'
```

