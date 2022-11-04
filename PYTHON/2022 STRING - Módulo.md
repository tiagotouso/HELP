
# STRING - Módulo


```python
# IMPORTAR MÓDULO

import string
```


```python
# COLEÇÃO DE DADOS

string.ascii_letters
```

```
'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'
```


```python
# COLEÇÃO DE DADOS

string.ascii_lowercase
```

```
'abcdefghijklmnopqrstuvwxyz'
```


```python
# COLEÇÃO DE DADOS

string.ascii_uppercase
```

```
'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
```


```python
# COLEÇÃO DE DADOS

string.digits
```

```
'0123456789'
```


```python
# COLEÇÃO DE DADOS

string.hexdigits
```

```
'0123456789abcdefABCDEF'
```


```python
# COLEÇÃO DE DADOS

string.octdigits
```

```
'01234567'
```


```python
# COLEÇÃO DE DADOS

string.printable
```

```
'0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ!"#$%&\'()*+,-./:;<=>?@[\\]^_`{|}~ \t\n\r\x0b\x0c'
```


```python
# COLEÇÃO DE DADOS

string.punctuation
```

```
'!"#$%&\'()*+,-./:;<=>?@[\\]^_`{|}~'
```


```python
# COLEÇÃO DE DADOS

string.whitespace
```

```
' \t\n\r\x0b\x0c'
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

```
'Nome: 1 - Telefone: 2'
```


```python
# CRIANDO UM DICIONÁRIO

dic = {'nome': 10, 'telefone': 20}
```


```python
# SUBSTITUINDO OS VALORES DO DICIONÁRIO

template.substitute(dic)
```

```
'Nome: 10 - Telefone: 20'
```

