
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


```python
# FORMAÇÃO TIPO STRING

f'{valor!s}'
```


```python
# FORMAÇÃO ASCII

f'{valor!a}'
```


```python
# FORMAÇÃO E COLOCANDO EM CAIXA ALTA

f'{valor.upper()}'
```


```python
# FORMAÇÃO E COLOCNADO EM CAIXA BAIXA

f'{valor.lower()}'
```


```python
# FORMAÇÃO E COLOCANDO ESPAÇOS

f'{valor:50}'
```


```python
# FORMAÇÃO E COLOCANDO ESPAÇOS E CENTRALIZANDO

f'{valor:^50}'
```


```python
# FORMAÇÃO E COLOCANDO ESPAÇOS E ALIANDO

f'{valor:>50}'
```


```python
# FORMAÇÃO E COLOCANDO CARACTERES E ALIANDO

f'{valor:-^50}'
```


```python
# FORMAÇÃO E COLOCANDO CARACTERES E ALIANDO

f'{valor:-<50}'
```


```python
# FORMAÇÃO E COLOCANDO CARACTERES E ALIANDO

f'{valor:->50}'
```


```python
# FORMAÇÃO E EXIBINDO A VARIÁVEL E O VALOR

f'{valor=}'
```


```python
# FORMAÇÃO E EXIBINDO A VARIÁVEL E O VALOR  COLOCANDO ESPAÇOS E ALIANDO

f'{valor=:50}'
```


```python
# FORMAÇÃO E EXIBINDO A VARIÁVEL E O VALOR  COLOCANDO ESPAÇOS E ALIANDO

f'{valor.upper()=!r:*^15}'
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


```python
# FORMAÇÃO DE NÚMERO EM OCTAL

f'{valor:o}'
```


```python
# FORMAÇÃO DE NÚMERO EM BINÁRIO

f'{valor:b}'
```


```python
# FORMAÇÃO DE NÚMERO EM HEXADECIMAL

f'{valor:x}'
```


```python
# FORMAÇÃO DE NÚMERO EM HEXADECIMAL

f'{valor:X}'
```


```python
# FORMAÇÃO DE NÚMERO EM DECIMAL COM ESPAÇO

f'{valor:20d}'
```


```python
# FORMAÇÃO DE NÚMERO EM DECIMAL COM ESPAÇO

f'{valor:^20d}'
```


```python
# FORMAÇÃO DE NÚMERO EM DECIMAL COM CARACTERES

f'{valor:-^20d}'
```


```python
# FORMAÇÃO DE NÚMERO EM DECIMAL COM SINAL

f'{valor:+d}'
```


```python
# FORMAÇÃO DE NÚMERO EM DECIMAL COM SINAL

f'{valor*-1:+d}'
```


```python
# FORMAÇÃO DE NÚMERO EM DECIMAL COM SINAL E ESPAÇO

f'{valor:=+20d}'
```


```python
# FORMAÇÃO DE NÚMERO EM DECIMAL COM SINAL E ESPAÇO

f'{valor*-1:=+20d}'
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


```python
# FORMAÇÃO DE NÚMERO EM RACIONAL COM TRÊS CASAS DECIMAIS

f'{valor:2.3f}'
```


```python
# FORMAÇÃO DE NÚMERO EM RACIONAL COM DUAS CASAS ANTES DA VÍRGULA E DUAS CASAS DECIMAIS

f'{valor:+2.2f}'
```


```python
# FORMAÇÃO DE NÚMERO EM RACIONAL COM DUAS CASAS ANTES DA VÍRGULA E DUAS CASAS DECIMAIS E O SINAL

f'{valor:+2.2f}'
```


```python
# FORMAÇÃO DE NÚMERO EM RACIONAL EM NOTAÇÃO CIÊNTIFICA

f'{valor:2.4e}'
```


```python
# FORMAÇÃO DE NÚMERO EM RACIONAL EM PERCENTUAL

f'{valor:2.4%}'
```


```python
# FORMAÇÃO DE NÚMERO EM RACIONAL EM PERCENTUAL COM ESPAÇO

f'{valor:=20.4%}'
```


```python
# FORMAÇÃO DE NÚMERO EM RACIONAL COM O SINAL NO INÍCIO

f'{valor:=+20.4%}'
```


```python
# FORMAÇÃO DE NÚMERO EM RACIONAL COM CARACTERES

f'{valor:.>20.4%}'
```


```python
# FORMAÇÃO DE NÚMERO EM RACIONAL COM CARACTERES

f'{valor*-1:.>20.4%}'
```


```python
# FORMAÇÃO DE NÚMERO EM RACIONAL COM CARACTERES

f'{valor:.<20.4%}'
```


```python
# FORMAÇÃO DE NÚMERO EM RACIONAL  COM CARACTERES

f'{valor:.^20.4%}'
```


### FORMATANDO DATAS E HORAS


```python
# IMPORTAR MÓDULO
from datetime import datetime

# PEGAR A DATA DO SISTEMA
data = datetime.now()
data
```


```python
# FORMAÇÃO DE DATA

f'{data}'
```


```python
# FORMAÇÃO DE DATA EM DIA

f'{data:%d}'
```


```python
# FORMAÇÃO DE DATA EM MÊS

f'{data:%m}'
```


```python
# FORMAÇÃO DE DATA EM ANO

f'{data:%y}'
```


```python
# FORMAÇÃO DE DATA EM DIA MÊS E ANO

f'{data:%d-%m-%y}'
```


```python
# FORMAÇÃO DE DATA EM DIA MÊS E ANO

f'{data:%d-%m-%Y}'
```


```python
# FORMAÇÃO DE DATA EM ANO DIA MÊS

f'{data:%Y-%d-%m}'
```


```python
# FORMAÇÃO DE DATA EM ANO MÊS E DIA

f'{data:%Y-%m-%d}'
```


```python
# FORMAÇÃO DE HORA EM HORA E MINUTO

f'{data:%H:%M}'
```


```python
# FORMAÇÃO DE HORA EM HORA MINUTO E SEGUNDO

f'{data:%H:%M:%S}'
```


```python
# FORMAÇÃO DE DATA COMPLETA

f'{data:%c}'
```

