# COMBINAÇÃO E PERMUTAÇÃO

```python
# IMPORTAR MÓDULOS

from itertools import permutations, combinations
```

```python
# CRIAR UM ARRANJO COM TODAS AS COMBINAÇÕES POSSÍVEIS

perm = permutations(['A', 'B', 'C'])

for vl in perm:
    print(vl)
```

<pre>
('A', 'B', 'C')
('A', 'C', 'B')
('B', 'A', 'C')
('B', 'C', 'A')
('C', 'A', 'B')
('C', 'B', 'A')
</pre>

```python
# CRIAR UM ARRANJO COM DOIS ELEMENTOS

perm = permutations(['A', 'B', 'C'], 2)

for vl in perm:
    print(vl)
```

<pre>
('A', 'B')
('A', 'C')
('B', 'A')
('B', 'C')
('C', 'A')
('C', 'B')
</pre>

```python
# CRIAR UM COMBINAÇÃO COM TRÊS ELEMENTOS

comb = combinations(['A', 'B', 'C'], 3)

for vl in comb:
    print(vl)
```

<pre>
('A', 'B', 'C')
</pre>

```python
# CRIAR UMA  COMBINAÇÃO COM DOIS ELEMENTOS

comb = combinations(['A', 'B', 'C'], 2)

for vl in comb:
    print(vl)
```

<pre>
('A', 'B')
('A', 'C')
('B', 'C')
</pre>

