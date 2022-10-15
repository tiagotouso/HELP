# Quarteto de Anscombe

```python
# Importar módulos

import pandas as pd
import numpy as np

import matplotlib
import matplotlib.pyplot as plt
```

```python
# Versões dos módulos

!python --version
%reload_ext watermark
%watermark --iversions
```

<pre>
Python 3.9.7
pandas    : 1.3.4
matplotlib: 3.4.3
numpy     : 1.20.3

</pre>

```python
# Valores do quarteto de anscombe

dadostxt = """I	II	III	IV
x	y	x	y	x	y	x	y
10,0	8,04	10,0	9,14	10,0	7,46	8,0	6,58
8,0	6,95	8,0	8,14	8,0	6,77	8,0	5,76
13,0	7,58	13,0	8,74	13,0	12,74	8,0	7,71
9,0	8,81	9,0	8,77	9,0	7,11	8,0	8,84
11,0	8,33	11,0	9,26	11,0	7,81	8,0	8,47
14,0	9,96	14,0	8,10	14,0	8,84	8,0	7,04
6,0	7,24	6,0	6,13	6,0	6,08	8,0	5,25
4,0	4,26	4,0	3,10	4,0	5,39	19,0	12,50
12,0	10,84	12,0	9,13	12,0	8,15	8,0	5,56
7,0	4,82	7,0	7,26	7,0	6,42	8,0	7,91
5,0	5,68	5,0	4,74	5,0	5,73	8,0	6,89""".replace(',', '.')

dados = [vl.split() for vl in dadostxt.split('\n')]
```

```python
# Criar dataset

dados = pd.DataFrame(dados[2:])
```

```python
# Transformar os valores em float

for cl in dados.columns:
  dados[cl] = dados[cl].apply(float)
```

```python
# Vivualizar os dados

dados
```

<pre>
       0      1     2     3     4      5     6      7
0   10.0   8.04  10.0  9.14  10.0   7.46   8.0   6.58
1    8.0   6.95   8.0  8.14   8.0   6.77   8.0   5.76
2   13.0   7.58  13.0  8.74  13.0  12.74   8.0   7.71
3    9.0   8.81   9.0  8.77   9.0   7.11   8.0   8.84
4   11.0   8.33  11.0  9.26  11.0   7.81   8.0   8.47
5   14.0   9.96  14.0  8.10  14.0   8.84   8.0   7.04
6    6.0   7.24   6.0  6.13   6.0   6.08   8.0   5.25
7    4.0   4.26   4.0  3.10   4.0   5.39  19.0  12.50
8   12.0  10.84  12.0  9.13  12.0   8.15   8.0   5.56
9    7.0   4.82   7.0  7.26   7.0   6.42   8.0   7.91
10   5.0   5.68   5.0  4.74   5.0   5.73   8.0   6.89</pre>

```python
# Verificar os dados do dataset

dados.describe()
```

<pre>
               0          1          2          3          4          5  \
count  11.000000  11.000000  11.000000  11.000000  11.000000  11.000000   
mean    9.000000   7.500909   9.000000   7.500909   9.000000   7.500000   
std     3.316625   2.031568   3.316625   2.031657   3.316625   2.030424   
min     4.000000   4.260000   4.000000   3.100000   4.000000   5.390000   
25%     6.500000   6.315000   6.500000   6.695000   6.500000   6.250000   
50%     9.000000   7.580000   9.000000   8.140000   9.000000   7.110000   
75%    11.500000   8.570000  11.500000   8.950000  11.500000   7.980000   
max    14.000000  10.840000  14.000000   9.260000  14.000000  12.740000   

               6          7  
count  11.000000  11.000000  
mean    9.000000   7.500909  
std     3.316625   2.030579  
min     8.000000   5.250000  
25%     8.000000   6.170000  
50%     8.000000   7.040000  
75%     8.000000   8.190000  
max    19.000000  12.500000  </pre>

```python
# Plotar os dados

plt.scatter(dados[0], dados[1])
```

<pre>
<matplotlib.collections.PathCollection at 0x240e94ca2b0></pre>

```python
# Plotar os dados

plt.scatter(dados[2], dados[3])
```

<pre>
<matplotlib.collections.PathCollection at 0x240e9c85670></pre>

```python
# Plotar os dados

plt.scatter(dados[4], dados[5])
```

<pre>
<matplotlib.collections.PathCollection at 0x240e9cf45b0></pre>

```python
# Plotar os dados

plt.scatter(dados[6], dados[7])
```

<pre>
<matplotlib.collections.PathCollection at 0x240e9d5b6a0></pre>

```python
# Plotar os dados

plt.scatter(dados[0], dados[1])
plt.scatter(dados[2], dados[3])
plt.scatter(dados[6], dados[7])
```

<pre>
<matplotlib.collections.PathCollection at 0x240eada4430></pre>

