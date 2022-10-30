
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
Solarize_Light2 ; _classic_test_patch ; bmh ; classic ; dark_background ; fast ; fivethirtyeight ; ggplot ; grayscale ; seaborn ; seaborn-bright ; seaborn-colorblind ; seaborn-dark ; seaborn-dark-palette ; seaborn-darkgrid ; seaborn-deep ; seaborn-muted ; seaborn-notebook ; seaborn-paper ; seaborn-pastel ; seaborn-poster ; seaborn-talk ; seaborn-ticks ; seaborn-white ; seaborn-whitegrid ; tableau-colorblind10 ; ```


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


![image](img//2021_STYLE_PLOT_ipynb_000.png)


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


![image](img//2021_STYLE_PLOT_ipynb_001.png)


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


![image](img//2021_STYLE_PLOT_ipynb_002.png)


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


![image](img//2021_STYLE_PLOT_ipynb_003.png)


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


![image](img//2021_STYLE_PLOT_ipynb_004.png)


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


![image](img//2021_STYLE_PLOT_ipynb_005.png)


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


![image](img//2021_STYLE_PLOT_ipynb_006.png)


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


![image](img//2021_STYLE_PLOT_ipynb_007.png)


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


![image](img//2021_STYLE_PLOT_ipynb_008.png)


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


![image](img//2021_STYLE_PLOT_ipynb_009.png)


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


![image](img//2021_STYLE_PLOT_ipynb_010.png)


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


![image](img//2021_STYLE_PLOT_ipynb_011.png)


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


![image](img//2021_STYLE_PLOT_ipynb_012.png)


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


![image](img//2021_STYLE_PLOT_ipynb_013.png)


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


![image](img//2021_STYLE_PLOT_ipynb_014.png)


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


![image](img//2021_STYLE_PLOT_ipynb_015.png)


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


![image](img//2021_STYLE_PLOT_ipynb_016.png)


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


![image](img//2021_STYLE_PLOT_ipynb_017.png)


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


![image](img//2021_STYLE_PLOT_ipynb_018.png)


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


![image](img//2021_STYLE_PLOT_ipynb_019.png)


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


![image](img//2021_STYLE_PLOT_ipynb_020.png)


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


![image](img//2021_STYLE_PLOT_ipynb_021.png)


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


![image](img//2021_STYLE_PLOT_ipynb_022.png)


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


![image](img//2021_STYLE_PLOT_ipynb_023.png)


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


![image](img//2021_STYLE_PLOT_ipynb_024.png)


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


![image](img//2021_STYLE_PLOT_ipynb_025.png)

