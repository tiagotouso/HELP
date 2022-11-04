
# STYLE PLOT


```python
# Importar módulos

import matplotlib.pyplot as plt
from matplotlib import style

contador = -1
```


```python
# Versões dos módulos

!python --version
%reload_ext watermark
%watermark --iversions
```

```
Python 3.9.7
matplotlib: 3.4.3


```


```python
# Print nos estilos

lista = plt.style.available
for vl in lista:
    print(vl, end=' ; ')
```

```
Solarize_Light2 ; _classic_test_patch ; bmh ; classic ; dark_background ; fast ; fivethirtyeight ; ggplot ; grayscale ; seaborn ; seaborn-bright ; seaborn-colorblind ; seaborn-dark ; seaborn-dark-palette ; seaborn-darkgrid ; seaborn-deep ; seaborn-muted ; seaborn-notebook ; seaborn-paper ; seaborn-pastel ; seaborn-poster ; seaborn-talk ; seaborn-ticks ; seaborn-white ; seaborn-whitegrid ; tableau-colorblind10 ; 
```


```python
# Plotar exemplos

contador += 1
st = lista[contador]
print(st)
fig, ax = plt.subplots(figsize=(10, 3))
plt.style.use(st)
plt.plot([1, 2, 3])
plt.show()
```

```
Solarize_Light2

```

```
<Figure size 720x216 with 1 Axes>
```


```python
contador += 1
st = lista[contador]
print(st)
fig, ax = plt.subplots(figsize=(10, 3))
plt.style.use(st)
plt.plot([1, 2, 3])
plt.show()
```

```
_classic_test_patch

```

```
<Figure size 720x216 with 1 Axes>
```


```python
contador += 1
st = lista[contador]
print(st)
fig, ax = plt.subplots(figsize=(10, 3))
plt.style.use(st)
plt.plot([1, 2, 3])
plt.show()
```

```
bmh

```

```
<Figure size 720x216 with 1 Axes>
```


```python
contador += 1
st = lista[contador]
print(st)
fig, ax = plt.subplots(figsize=(10, 3))
plt.style.use(st)
plt.plot([1, 2, 3])
plt.show()
```

```
classic

```

```
<Figure size 720x216 with 1 Axes>
```


```python
contador += 1
st = lista[contador]
print(st)
fig, ax = plt.subplots(figsize=(10, 3))
plt.style.use(st)
plt.plot([1, 2, 3])
plt.show()
```

```
dark_background

```

```
<Figure size 800x240 with 1 Axes>
```


```python
contador += 1
st = lista[contador]
print(st)
fig, ax = plt.subplots(figsize=(10, 3))
plt.style.use(st)
plt.plot([1, 2, 3])
plt.show()
```

```
fast

```

```
<Figure size 800x240 with 1 Axes>
```


```python
contador += 1
st = lista[contador]
print(st)
fig, ax = plt.subplots(figsize=(10, 3))
plt.style.use(st)
plt.plot([1, 2, 3])
plt.show()
```

```
fivethirtyeight

```

```
<Figure size 800x240 with 1 Axes>
```


```python
contador += 1
st = lista[contador]
print(st)
fig, ax = plt.subplots(figsize=(10, 3))
plt.style.use(st)
plt.plot([1, 2, 3])
plt.show()
```

```
ggplot

```

```
<Figure size 800x240 with 1 Axes>
```


```python
contador += 1
st = lista[contador]
print(st)
fig, ax = plt.subplots(figsize=(10, 3))
plt.style.use(st)
plt.plot([1, 2, 3])
plt.show()
```

```
grayscale

```

```
<Figure size 800x240 with 1 Axes>
```


```python
contador += 1
st = lista[contador]
print(st)
fig, ax = plt.subplots(figsize=(10, 3))
plt.style.use(st)
plt.plot([1, 2, 3])
plt.show()
```

```
seaborn

```

```
<Figure size 800x240 with 1 Axes>
```


```python
contador += 1
st = lista[contador]
print(st)
fig, ax = plt.subplots(figsize=(10, 3))
plt.style.use(st)
plt.plot([1, 2, 3])
plt.show()
```

```
seaborn-bright

```

```
<Figure size 800x240 with 1 Axes>
```


```python
contador += 1
st = lista[contador]
print(st)
fig, ax = plt.subplots(figsize=(10, 3))
plt.style.use(st)
plt.plot([1, 2, 3])
plt.show()
```

```
seaborn-colorblind

```

```
<Figure size 800x240 with 1 Axes>
```


```python
contador += 1
st = lista[contador]
print(st)
fig, ax = plt.subplots(figsize=(10, 3))
plt.style.use(st)
plt.plot([1, 2, 3])
plt.show()
```

```
seaborn-dark

```

```
<Figure size 800x240 with 1 Axes>
```


```python
contador += 1
st = lista[contador]
print(st)
fig, ax = plt.subplots(figsize=(10, 3))
plt.style.use(st)
plt.plot([1, 2, 3])
plt.show()
```

```
seaborn-dark-palette

```

```
<Figure size 800x240 with 1 Axes>
```


```python
contador += 1
st = lista[contador]
print(st)
fig, ax = plt.subplots(figsize=(10, 3))
plt.style.use(st)
plt.plot([1, 2, 3])
plt.show()
```

```
seaborn-darkgrid

```

```
<Figure size 800x240 with 1 Axes>
```


```python
contador += 1
st = lista[contador]
print(st)
fig, ax = plt.subplots(figsize=(10, 3))
plt.style.use(st)
plt.plot([1, 2, 3])
plt.show()
```

```
seaborn-deep

```

```
<Figure size 800x240 with 1 Axes>
```


```python
contador += 1
st = lista[contador]
print(st)
fig, ax = plt.subplots(figsize=(10, 3))
plt.style.use(st)
plt.plot([1, 2, 3])
plt.show()
```

```
seaborn-muted

```

```
<Figure size 800x240 with 1 Axes>
```


```python
contador += 1
st = lista[contador]
print(st)
fig, ax = plt.subplots(figsize=(10, 3))
plt.style.use(st)
plt.plot([1, 2, 3])
plt.show()
```

```
seaborn-notebook

```

```
<Figure size 800x240 with 1 Axes>
```


```python
contador += 1
st = lista[contador]
print(st)
fig, ax = plt.subplots(figsize=(10, 3))
plt.style.use(st)
plt.plot([1, 2, 3])
plt.show()
```

```
seaborn-paper

```

```
<Figure size 800x240 with 1 Axes>
```


```python
contador += 1
st = lista[contador]
print(st)
fig, ax = plt.subplots(figsize=(10, 3))
plt.style.use(st)
plt.plot([1, 2, 3])
plt.show()
```

```
seaborn-pastel

```

```
<Figure size 800x240 with 1 Axes>
```


```python
contador += 1
st = lista[contador]
print(st)
fig, ax = plt.subplots(figsize=(10, 3))
plt.style.use(st)
plt.plot([1, 2, 3])
plt.show()
```

```
seaborn-poster

```

```
<Figure size 800x240 with 1 Axes>
```


```python
contador += 1
st = lista[contador]
print(st)
fig, ax = plt.subplots(figsize=(10, 3))
plt.style.use(st)
plt.plot([1, 2, 3])
plt.show()
```

```
seaborn-talk

```

```
<Figure size 800x240 with 1 Axes>
```


```python
contador += 1
st = lista[contador]
print(st)
fig, ax = plt.subplots(figsize=(10, 3))
plt.style.use(st)
plt.plot([1, 2, 3])
plt.show()
```

```
seaborn-ticks

```

```
<Figure size 800x240 with 1 Axes>
```


```python
contador += 1
st = lista[contador]
print(st)
fig, ax = plt.subplots(figsize=(10, 3))
plt.style.use(st)
plt.plot([1, 2, 3])
plt.show()
```

```
seaborn-white

```

```
<Figure size 800x240 with 1 Axes>
```


```python
contador += 1
st = lista[contador]
print(st)
fig, ax = plt.subplots(figsize=(10, 3))
plt.style.use(st)
plt.plot([1, 2, 3])
plt.show()
```

```
seaborn-whitegrid

```

```
<Figure size 800x240 with 1 Axes>
```


```python
contador += 1
st = lista[contador]
print(st)
fig, ax = plt.subplots(figsize=(10, 3))
plt.style.use(st)
plt.plot([1, 2, 3])
plt.show()
```

```
tableau-colorblind10

```

```
<Figure size 800x240 with 1 Axes>
```

