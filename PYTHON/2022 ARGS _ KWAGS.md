
# ARGS & KWAGS


# ARGS


```python
# CRIAR FUNÇÃO ARGS

def print_lista(*args):
    print(args)
```


```python
# EXECUTAR A FUNÇÃO

print_lista(1)
```

```
(1,)
```


```python
# EXECUTAR A FUNÇÃO

print_lista(1, 2)
```

```
(1, 2)
```


```python
# EXECUTAR A FUNÇÃO

print_lista(1, 2, 3)
```

```
(1, 2, 3)
```


```python
# EXECUTAR A FUNÇÃO

print_lista(1, 2, 3, 'tiago')
```

```
(1, 2, 3, 'tiago')
```


```python
# CRIAR A FUNÇÃO ARGS

def print_listaii(*args):
    
    for valores in args:
        print(valores)
```


```python
# EXECUTAR A FUNÇÃO

print_listaii(1)
```

```
1
```


```python
# EXECUTAR A FUNÇÃO

print_listaii(1, 2, 3)
```

```
1
2
3
```


# KWAGS


```python
# CRIAR A FUNÇÃO KWAGS

def printii(**kwags):
    print(kwags)
```


```python
# EXECUTAR A FUNÇÃO

printii(nome = 'tiago')
```

```
{'nome': 'tiago'}
```


```python
# EXECUTAR A FUNÇÃO

printii(nome = 'tiago', idade = 42 )
```

```
{'nome': 'tiago', 'idade': 42}
```


```python
def valor_chave(**kwags):
    
    if kwags.get('key'):
        print(kwags)
```


```python
# EXECUTAR A FUNÇÃO

valor_chave(nome = 'tiago', idade = 42, key = 10)
```

```
{'nome': 'tiago', 'idade': 42, 'key': 10}
```


```python
# CRIAR A FUNÇÃO ARGS & KWAGS

def operacoes(*lista, **funcoes):
    
    resultado = {}
    if funcoes.get('tipo'):
        if funcoes['tipo'] == 'soma':
            resultado['soma'] =  sum(lista)
        elif funcoes['tipo'] == 'média':
            resultado['média'] =  sum(lista) / len(lista)
        
    if funcoes.get('elemento'):
        if funcoes['elemento'] == 'max':
            resultado['max'] = max(lista)
        elif funcoes['elemento'] == 'min':
            resultado['min'] = min(lista)
        
    return resultado 
```


```python
# EXECUTAR A FUNÇÃO

operacoes(1, 2, 3)
```


```python
# EXECUTAR A FUNÇÃO

operacoes(1, 2, 3, tipo = 'soma')
```


```python
# EXECUTAR A FUNÇÃO

operacoes(1, 2, 3, tipo = 'média')
```


```python
# EXECUTAR A FUNÇÃO

operacoes(1, 2, 3, tipo = 'soma', elemento = 'min')
```


```python
# EXECUTAR A FUNÇÃO

operacoes(1, 2, 3, tipo = 'soma', elemento = 'min')
```


```python
# EXECUTAR A FUNÇÃO

operacoes(1, 2, 3, elemento = 'min')
```


```python
# EXECUTAR A FUNÇÃO

operacoes(1, 2, 3, elemento = 'max')
```

