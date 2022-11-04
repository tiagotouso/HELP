
# MAP - FILTRE - REDUCE


```python
# IMPORTA OS MÓDULOS

from functools import reduce

import random as rd
import numpy as np
```


```python
# SORTEIAR UM NÚMERO

rd.sample([1, 2, 3, 4], 1)
```

```
[1]
```


```python
# CRIAR UMA TABELA COM VALORES ALEATÓRIOS

tabela = []

for _ in range(20):
    linha = {'sexo': rd.sample(['m', 'f'], 1)[0], 
             'idade': rd.sample(list(range(18,70)), 1)[0],
             'estado_civil': rd.sample(['solteiro', 'casado', 'viúvo'], 1)[0],
             'salario': rd.sample(list(range(10**3, 10**4, 10**3)), 1)[0]}
    tabela.append(linha)
    
print(tabela[0])
print()
print(tabela)
```

```
{'sexo': 'f', 'idade': 22, 'estado_civil': 'casado', 'salario': 7000}

[{'sexo': 'f', 'idade': 22, 'estado_civil': 'casado', 'salario': 7000}, {'sexo': 'm', 'idade': 31, 'estado_civil': 'casado', 'salario': 4000}, {'sexo': 'm', 'idade': 34, 'estado_civil': 'solteiro', 'salario': 3000}, {'sexo': 'f', 'idade': 54, 'estado_civil': 'solteiro', 'salario': 4000}, {'sexo': 'f', 'idade': 57, 'estado_civil': 'casado', 'salario': 8000}, {'sexo': 'm', 'idade': 23, 'estado_civil': 'casado', 'salario': 2000}, {'sexo': 'f', 'idade': 52, 'estado_civil': 'solteiro', 'salario': 8000}, {'sexo': 'm', 'idade': 22, 'estado_civil': 'casado', 'salario': 7000}, {'sexo': 'm', 'idade': 42, 'estado_civil': 'solteiro', 'salario': 3000}, {'sexo': 'f', 'idade': 51, 'estado_civil': 'solteiro', 'salario': 2000}, {'sexo': 'm', 'idade': 36, 'estado_civil': 'viúvo', 'salario': 7000}, {'sexo': 'f', 'idade': 33, 'estado_civil': 'solteiro', 'salario': 4000}, {'sexo': 'f', 'idade': 38, 'estado_civil': 'viúvo', 'salario': 6000}, {'sexo': 'm', 'idade': 47, 'estado_civil': 'casado', 'salario': 8000}, {'sexo': 'm', 'idade': 19, 'estado_civil': 'solteiro', 'salario': 2000}, {'sexo': 'm', 'idade': 67, 'estado_civil': 'solteiro', 'salario': 2000}, {'sexo': 'f', 'idade': 46, 'estado_civil': 'casado', 'salario': 8000}, {'sexo': 'f', 'idade': 45, 'estado_civil': 'solteiro', 'salario': 7000}, {'sexo': 'm', 'idade': 47, 'estado_civil': 'casado', 'salario': 6000}, {'sexo': 'f', 'idade': 26, 'estado_civil': 'casado', 'salario': 5000}]

```


# MAP


```python
# USANDO A FUNÇÃO MAP

valores_idade = map(lambda m: m['idade'], tabela)

# RETORNA UM ITERATOR

valores_idade
```

```
<map at 0x1eb68830430>
```


```python
# ACESSANDO OS ITERATOR

for _ in range(5):
    print(next(valores_idade))
```

```
22
31
34
54
57

```


```python
# TRANSFORMANDO OS ITERATOR

print(list(valores_idade))
```

```
[23, 52, 22, 42, 51, 36, 33, 38, 47, 19, 67, 46, 45, 47, 26]

```


```python
# ITERATOR LIBERADOS

print(list(valores_idade))
```

```
[]

```


```python
# USAR MAP PARA CALCULAR A MÉDIA

lista_idade = list(map(lambda m: m['idade'], tabela))
np.mean(lista_idade)
```

```
39.6
```


# FILTER


```python
# USANDO FIILTER

list(filter(lambda m: m['sexo'] == 'm', tabela))
```

```
[{'sexo': 'm', 'idade': 31, 'estado_civil': 'casado', 'salario': 4000},
 {'sexo': 'm', 'idade': 34, 'estado_civil': 'solteiro', 'salario': 3000},
 {'sexo': 'm', 'idade': 23, 'estado_civil': 'casado', 'salario': 2000},
 {'sexo': 'm', 'idade': 22, 'estado_civil': 'casado', 'salario': 7000},
 {'sexo': 'm', 'idade': 42, 'estado_civil': 'solteiro', 'salario': 3000},
 {'sexo': 'm', 'idade': 36, 'estado_civil': 'viúvo', 'salario': 7000},
 {'sexo': 'm', 'idade': 47, 'estado_civil': 'casado', 'salario': 8000},
 {'sexo': 'm', 'idade': 19, 'estado_civil': 'solteiro', 'salario': 2000},
 {'sexo': 'm', 'idade': 67, 'estado_civil': 'solteiro', 'salario': 2000},
 {'sexo': 'm', 'idade': 47, 'estado_civil': 'casado', 'salario': 6000}]
```


```python
# USANDO O FILTER

list(filter(lambda m: m['idade'] < 20, tabela))
```

```
[{'sexo': 'm', 'idade': 19, 'estado_civil': 'solteiro', 'salario': 2000}]
```


```python
# USANDO O FILTER

list(filter(lambda m: m['idade'] > 20 and m['estado_civil'] == 'casado', tabela))
```

```
[{'sexo': 'f', 'idade': 22, 'estado_civil': 'casado', 'salario': 7000},
 {'sexo': 'm', 'idade': 31, 'estado_civil': 'casado', 'salario': 4000},
 {'sexo': 'f', 'idade': 57, 'estado_civil': 'casado', 'salario': 8000},
 {'sexo': 'm', 'idade': 23, 'estado_civil': 'casado', 'salario': 2000},
 {'sexo': 'm', 'idade': 22, 'estado_civil': 'casado', 'salario': 7000},
 {'sexo': 'm', 'idade': 47, 'estado_civil': 'casado', 'salario': 8000},
 {'sexo': 'f', 'idade': 46, 'estado_civil': 'casado', 'salario': 8000},
 {'sexo': 'm', 'idade': 47, 'estado_civil': 'casado', 'salario': 6000},
 {'sexo': 'f', 'idade': 26, 'estado_civil': 'casado', 'salario': 5000}]
```


```python
# USANDO O FILTER COM MAP

list(
    map(lambda n: n['salario'],
    filter(lambda m: m['idade'] > 20 and m['estado_civil'] == 'casado', tabela)
        )
)
```

```
[7000, 4000, 8000, 2000, 7000, 8000, 8000, 6000, 5000]
```


```python
# USANDO O FILTER COM MAP PARA CALCULAR A MÉDIA

np.mean(
    list(
    map(lambda n: n['salario'],
    filter(lambda m: m['idade'] > 20 and m['estado_civil'] == 'casado', tabela)
        )
    )
)
```

```
6111.111111111111
```


# REDUCE


```python
# USANDO O REDUCE PARA SOMAR

reduce(lambda soma, t: soma + t['salario'], tabela, 0)
```

```
103000
```


```python
# USANDO O MAP PARA SOMAR O TOTAL

np.sum(list(map(lambda v: v['salario'], tabela)))
```

```
103000
```


```python
# USANDO O REDUCE PARA CALCULAR A MÉDIA

reduce(lambda soma, t: soma + t['salario'] / len(tabela), tabela, 0)
```

```
5150.0
```


```python
# USANDO O MAP PARA CALCULAR A MÉIA

np.mean(list(map(lambda v: v['salario'], tabela)))
```

```
5150.0
```


```python
# REDUCE COM FILTER

reduce(lambda soma, tabela:
      soma + tabela['salario'],
      filter(lambda m: m['idade'] > 20 and m['estado_civil'] == 'casado', tabela),
      0)
```

```
55000
```


```python
# USANDO O FILTER COM MAP PARA CALCULAR A MÉDIA

np.sum(
    list(
    map(lambda n: n['salario'],
    filter(lambda m: m['idade'] > 20 and m['estado_civil'] == 'casado', tabela)
        )
    )
)
```

```
55000
```

