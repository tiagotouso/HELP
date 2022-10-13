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

<pre>
(1,)
</pre>

```python
# EXECUTAR A FUNÇÃO

print_lista(1, 2)
```

<pre>
(1, 2)
</pre>

```python
# EXECUTAR A FUNÇÃO

print_lista(1, 2, 3)
```

<pre>
(1, 2, 3)
</pre>

```python
# EXECUTAR A FUNÇÃO

print_lista(1, 2, 3, 'tiago')
```

<pre>
(1, 2, 3, 'tiago')
</pre>

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

<pre>
1
</pre>

```python
# EXECUTAR A FUNÇÃO

print_listaii(1, 2, 3)
```

<pre>
1
2
3
</pre>

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

<pre>
{'nome': 'tiago'}
</pre>

```python
# EXECUTAR A FUNÇÃO

printii(nome = 'tiago', idade = 42 )
```

<pre>
{'nome': 'tiago', 'idade': 42}
</pre>

```python
def valor_chave(**kwags):
    
    if kwags.get('key'):
        print(kwags)
```

```python
# EXECUTAR A FUNÇÃO

valor_chave(nome = 'tiago', idade = 42, key = 10)
```

<pre>
{'nome': 'tiago', 'idade': 42, 'key': 10}
</pre>

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

<pre>
{}</pre>

```python
# EXECUTAR A FUNÇÃO

operacoes(1, 2, 3, tipo = 'soma')
```

<pre>
{'soma': 6}</pre>

```python
# EXECUTAR A FUNÇÃO

operacoes(1, 2, 3, tipo = 'média')
```

<pre>
{'média': 2.0}</pre>

```python
# EXECUTAR A FUNÇÃO

operacoes(1, 2, 3, tipo = 'soma', elemento = 'min')
```

<pre>
{'soma': 6, 'min': 1}</pre>

```python
# EXECUTAR A FUNÇÃO

operacoes(1, 2, 3, tipo = 'soma', elemento = 'min')
```

<pre>
{'soma': 6, 'min': 1}</pre>

```python
# EXECUTAR A FUNÇÃO

operacoes(1, 2, 3, elemento = 'min')
```

<pre>
{'min': 1}</pre>

```python
# EXECUTAR A FUNÇÃO

operacoes(1, 2, 3, elemento = 'max')
```

<pre>
{'max': 3}</pre>

