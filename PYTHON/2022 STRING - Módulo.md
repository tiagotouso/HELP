
# STRING - Módulo


```python
# IMPORTAR MÓDULO

import string
```


```python
# COLEÇÃO DE DADOS

string.ascii_letters
```


```python
# COLEÇÃO DE DADOS

string.ascii_lowercase
```


```python
# COLEÇÃO DE DADOS

string.ascii_uppercase
```


```python
# COLEÇÃO DE DADOS

string.digits
```


```python
# COLEÇÃO DE DADOS

string.hexdigits
```


```python
# COLEÇÃO DE DADOS

string.octdigits
```


```python
# COLEÇÃO DE DADOS

string.printable
```


```python
# COLEÇÃO DE DADOS

string.punctuation
```


```python
# COLEÇÃO DE DADOS

string.whitespace
```


### Template


```python
# CRIANDO UM TEMPLATE

template = string.Template('Nome: $nome - Telefone: $telefone')
```


```python
# SUBSTITUINDO OS VALORES DO TEMPLATE

template.substitute(nome=1, telefone=2)
```


```python
# CRIANDO UM DICIONÁRIO

dic = {'nome': 10, 'telefone': 20}
```


```python
# SUBSTITUINDO OS VALORES DO DICIONÁRIO

template.substitute(dic)
```

