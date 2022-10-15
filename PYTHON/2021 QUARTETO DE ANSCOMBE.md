
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


<pre>Python 3.9.7
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


<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>0</th>
      <th>1</th>
      <th>2</th>
      <th>3</th>
      <th>4</th>
      <th>5</th>
      <th>6</th>
      <th>7</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>10.0</td>
      <td>8.04</td>
      <td>10.0</td>
      <td>9.14</td>
      <td>10.0</td>
      <td>7.46</td>
      <td>8.0</td>
      <td>6.58</td>
    </tr>
    <tr>
      <th>1</th>
      <td>8.0</td>
      <td>6.95</td>
      <td>8.0</td>
      <td>8.14</td>
      <td>8.0</td>
      <td>6.77</td>
      <td>8.0</td>
      <td>5.76</td>
    </tr>
    <tr>
      <th>2</th>
      <td>13.0</td>
      <td>7.58</td>
      <td>13.0</td>
      <td>8.74</td>
      <td>13.0</td>
      <td>12.74</td>
      <td>8.0</td>
      <td>7.71</td>
    </tr>
    <tr>
      <th>3</th>
      <td>9.0</td>
      <td>8.81</td>
      <td>9.0</td>
      <td>8.77</td>
      <td>9.0</td>
      <td>7.11</td>
      <td>8.0</td>
      <td>8.84</td>
    </tr>
    <tr>
      <th>4</th>
      <td>11.0</td>
      <td>8.33</td>
      <td>11.0</td>
      <td>9.26</td>
      <td>11.0</td>
      <td>7.81</td>
      <td>8.0</td>
      <td>8.47</td>
    </tr>
    <tr>
      <th>5</th>
      <td>14.0</td>
      <td>9.96</td>
      <td>14.0</td>
      <td>8.10</td>
      <td>14.0</td>
      <td>8.84</td>
      <td>8.0</td>
      <td>7.04</td>
    </tr>
    <tr>
      <th>6</th>
      <td>6.0</td>
      <td>7.24</td>
      <td>6.0</td>
      <td>6.13</td>
      <td>6.0</td>
      <td>6.08</td>
      <td>8.0</td>
      <td>5.25</td>
    </tr>
    <tr>
      <th>7</th>
      <td>4.0</td>
      <td>4.26</td>
      <td>4.0</td>
      <td>3.10</td>
      <td>4.0</td>
      <td>5.39</td>
      <td>19.0</td>
      <td>12.50</td>
    </tr>
    <tr>
      <th>8</th>
      <td>12.0</td>
      <td>10.84</td>
      <td>12.0</td>
      <td>9.13</td>
      <td>12.0</td>
      <td>8.15</td>
      <td>8.0</td>
      <td>5.56</td>
    </tr>
    <tr>
      <th>9</th>
      <td>7.0</td>
      <td>4.82</td>
      <td>7.0</td>
      <td>7.26</td>
      <td>7.0</td>
      <td>6.42</td>
      <td>8.0</td>
      <td>7.91</td>
    </tr>
    <tr>
      <th>10</th>
      <td>5.0</td>
      <td>5.68</td>
      <td>5.0</td>
      <td>4.74</td>
      <td>5.0</td>
      <td>5.73</td>
      <td>8.0</td>
      <td>6.89</td>
    </tr>
  </tbody>
</table>
</div>


```python
# Verificar os dados do dataset

dados.describe()
```


<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>0</th>
      <th>1</th>
      <th>2</th>
      <th>3</th>
      <th>4</th>
      <th>5</th>
      <th>6</th>
      <th>7</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>count</th>
      <td>11.000000</td>
      <td>11.000000</td>
      <td>11.000000</td>
      <td>11.000000</td>
      <td>11.000000</td>
      <td>11.000000</td>
      <td>11.000000</td>
      <td>11.000000</td>
    </tr>
    <tr>
      <th>mean</th>
      <td>9.000000</td>
      <td>7.500909</td>
      <td>9.000000</td>
      <td>7.500909</td>
      <td>9.000000</td>
      <td>7.500000</td>
      <td>9.000000</td>
      <td>7.500909</td>
    </tr>
    <tr>
      <th>std</th>
      <td>3.316625</td>
      <td>2.031568</td>
      <td>3.316625</td>
      <td>2.031657</td>
      <td>3.316625</td>
      <td>2.030424</td>
      <td>3.316625</td>
      <td>2.030579</td>
    </tr>
    <tr>
      <th>min</th>
      <td>4.000000</td>
      <td>4.260000</td>
      <td>4.000000</td>
      <td>3.100000</td>
      <td>4.000000</td>
      <td>5.390000</td>
      <td>8.000000</td>
      <td>5.250000</td>
    </tr>
    <tr>
      <th>25%</th>
      <td>6.500000</td>
      <td>6.315000</td>
      <td>6.500000</td>
      <td>6.695000</td>
      <td>6.500000</td>
      <td>6.250000</td>
      <td>8.000000</td>
      <td>6.170000</td>
    </tr>
    <tr>
      <th>50%</th>
      <td>9.000000</td>
      <td>7.580000</td>
      <td>9.000000</td>
      <td>8.140000</td>
      <td>9.000000</td>
      <td>7.110000</td>
      <td>8.000000</td>
      <td>7.040000</td>
    </tr>
    <tr>
      <th>75%</th>
      <td>11.500000</td>
      <td>8.570000</td>
      <td>11.500000</td>
      <td>8.950000</td>
      <td>11.500000</td>
      <td>7.980000</td>
      <td>8.000000</td>
      <td>8.190000</td>
    </tr>
    <tr>
      <th>max</th>
      <td>14.000000</td>
      <td>10.840000</td>
      <td>14.000000</td>
      <td>9.260000</td>
      <td>14.000000</td>
      <td>12.740000</td>
      <td>19.000000</td>
      <td>12.500000</td>
    </tr>
  </tbody>
</table>
</div>


```python
# Plotar os dados

plt.scatter(dados[0], dados[1])
```


<img src = "data:image/png;base64,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
">


```python
# Plotar os dados

plt.scatter(dados[2], dados[3])
```


<img src = "data:image/png;base64,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
">


```python
# Plotar os dados

plt.scatter(dados[4], dados[5])
```


<img src = "data:image/png;base64,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
">


```python
# Plotar os dados

plt.scatter(dados[6], dados[7])
```


<img src = "data:image/png;base64,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
">


```python
# Plotar os dados

plt.scatter(dados[0], dados[1])
plt.scatter(dados[2], dados[3])
plt.scatter(dados[6], dados[7])
```


<img src = "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAXAAAAD4CAYAAAD1jb0+AAAAOXRFWHRTb2Z0d2FyZQBNYXRwbG90bGliIHZlcnNpb24zLjQuMywgaHR0cHM6Ly9tYXRwbG90bGliLm9yZy/MnkTPAAAACXBIWXMAAAsTAAALEwEAmpwYAAAUgUlEQVR4nO3df2xdZ33H8c83jqkds8aFpDiJq4VMEKQFQz1vKu1WWA1OkdsmQlvENqSKX5X4g3hFCxChBRNpoiJIxWViKCqQaEUFz0oD5QrSKhWLUNdOTlKcjjZ0C9DYcYg7lExL7dVNv/vj3pva1762773n+pznnPdLiq7vN9f3fuUfH5/7nOc8j7m7AADhWRF3AwCA6hDgABAoAhwAAkWAA0CgCHAACNTK5XyxNWvW+MaNG5fzJQEgeMePH3/J3deW1pc1wDdu3Kjh4eHlfEkACJ6Z/Wa+OkMoABAoAhwAAkWAA0CgCHAACBQBDgCBIsABoI5yZ3LqGepRx8EO9Qz1KHcmF9lzL+s0QgDIktyZnPqf7NfUlSlJ0vjlcfU/2S9J6t3UW/PzcwQOAHUycGLgangXTV2Z0sCJgUienwAHgDo5f/l8RfVKEeAAUCdtLW0V1StFgANAnfR19qmpoWlWramhSX2dfZE8PycxAaBOiicqB04M6Pzl82praVNfZ18kJzAlAhwA6qp3U29kgV2KIRQACBQBDgCBIsABIFCLBriZfdvMLpjZszNq+8zseTMbMbNHzKy1rl0CAOZYyhH4AUm3l9Qel7TF3Tsk/VLS7oj7AgAsYtEAd/djkn5XUnvM3V8t3H1KUnsdegMALCCKMfCPSfpxuf80s3vMbNjMhicmJiJ4OQCAVGOAm9kXJL0q6bvlHuPu+929y9271q6ds6kyAKBKVV/IY2Z3S7pDUre7e3QtAQCWoqoAN7PbJX1O0nvd/eVoWwIALMVSphE+LOnfJG02s1Ez+7ikf5T0e5IeN7NnzOybde4TAFBi0SNwd/+recrfqkMvAIAKcCUmAASKAAeAQBHgABAoAhwAAkWAA0CgCHAACBQBDgCBIsABIFAEOAAEigAHgEAR4AAQKAIcAAJFgANAoAhwAAgUAQ4Agap6SzUgSw6fHNO+I6d17uKk1rc2a9fWzdp+44a420LGEeDAIg6fHNPuQ6c0OX1FkjR2cVK7D52SJEIcsWIIBVjEviOnr4Z30eT0Fe07cjqmjoA8AhxYxLmLkxXVgeVCgAOLWN/aXFEdWC4EOLCIXVs3q7mxYVatubFBu7ZujqkjII+TmMAiiicqmYWCpCHAgSXYfuMGAhuJwxAKAASKAAeAQBHgABAoAhwAAkWAA0CgCHAACBQBDgCBIsABIFAEOAAEigAHgEAtGuBm9m0zu2Bmz86ovcnMHjezFwq319W3TQBAqaUcgR+QdHtJ7fOSjrr72yQdLdwHEKPDJ8d0y31P6K2fz+mW+57Q4ZNjcbeEOls0wN39mKTflZS3STpY+PigpO3RtgWgEsVt38YuTsr1+rZvhHi6VTsG/hZ3H5ekwu315R5oZveY2bCZDU9MTFT5cgAWwrZv2VT3k5juvt/du9y9a+3atfV+OSCT2PYtm6oN8N+a2TpJKtxeiK4lAJVi27dsqjbAfyjp7sLHd0v6QTTtAKgG275l06I78pjZw5LeJ2mNmY1K+qKk+yQNmtnHJb0o6S/r2SSAhbHtWzaZuy/bi3V1dfnw8PCyvR4ApIGZHXf3rtI6V2ICQKAIcAAIFAEOAIEiwAEgUAQ4AASKAAeAQBHgSKeRQen+LVJ/a/52ZDDujoDILXohDxCckUHp0Z3SdGEdkEtn8/clqWNHfH0BEeMIHOlzdO/r4V00PZmvAylCgCMZohzyuDRaWX0pGJJBAjGEgvhFPeSxuj3/HPPVk9AfEBGOwBG/qIc8uvdIjSXLqDY25+tJ6A+ICAGO+EU95NGxQ7rzAWn1DZIsf3vnA9UfLddjSAaIAEMoiF/UQx5SPqyjGt6oR39ABDgCR/yiHvKIWtL7Q2YR4BmQO5NTz1CPOg52qGeoR7kzubhbmi3qIY+oJb0/ZBYbOqRc7kxO/U/2a+rK1NVaU0OT+m/uV++m3qqf9/DJMXZ/AZYJGzpk1MCJgVnhLUlTV6Y0cGKg6uc8fHJMP3vkG/r+y5/Uf13z1/r+y5/Uzx75hg6fHKu13WxhbjlqRICn3PnL5yuqL8Uzuf3aa/vVvuIlrTCpfcVL2mv79Uxuf9XPmTnFueWXzkry1+eWE+KoAAGecm0tbRXVl+ITrzykVfbKrNoqe0WfeOWhqp8zc5hbjggQ4CnX19mnpoamWbWmhib1dfZV/ZzrV/x3RXXMg7nliAABnnK9m3rVf3O/1rWsk8m0rmVdzScwp5rnP3ovV8c8ys0hZ245KsCFPBnQu6m3psAuteqDe/XqDz6tlTNOjr7a0KRVH+Tt/5J175m9vorE3HJUjCPwDIh8HnjHDq3c9vVZ86JXbvs686IrwdxyRIB54ClXr3ngAJYP88Azqh7zwAEkA2PgKVePeeAh4EpRZAFH4ClXj3ngSXf45Jh2HzqlsYuTckljFye1+9AprhRF6hDgKVePeeBJt+/IaU1OX5lVm5y+on1HTsfUEVAfDKGkXPFE5cCJAZ2/fF5tLW3q6+xL9QnMcxcnK6oDoSLAM6D3fy+r9+y5/FV+q1+T3n457pbqan1rs8bmCev1rc3zPBoIF0MoaZfBRZN2bd2s5saGWbXmxgbt2ro5po6WCasbZg5H4Gm30KJJCbpoJMpZI8XPy9QslOIf6uL3uviHWkrU9xnRqinAzexeSZ+Q5JJOSfqou08t/FlYVgEsmlScNVI88VicNSKpphBPdWCXCuQPNaJV9RCKmW2QtFNSl7tvkdQg6cNRNYaIBLBoErNGIhDAH2pEr9Yx8JWSms1spaRVks7V3hIi1b1HuWtb1dO+Xh0bb1BP+3rlrm1N1KJJzBqJQAB/qBG9qgPc3cckfVXSi5LGJV1y98dKH2dm95jZsJkNT0xMVN8pqpJ7Y4v617xZ440r5WYab1yp/jVvVu6NLXG3dlW52SHMGqlA9578aoYzsbph6tUyhHKdpG2S3ippvaQWM/tI6ePcfb+7d7l719q1a6vvFFUZODGgKZ+eVZvy6USthZLZWSNRYnXDTKrlJOb7Jf3K3SckycwOSbpZEvtqJUgIa6FkctZIPXTsILAzppYAf1HSTWa2StKkpG5JrBWbMG0tbRq/PD5vPUkyN2sEiEAtY+BPSxqSdEL5KYQrJLEtecLc2n5rRXUA4ahpHri7f1HSFyPqBXVwbPRYRXUA4eBKzJQLYQw8q1izHLViLZSUy+J64CFgzXJEgQBPuSyuBx4Crj5FFBhCSbksrgceAq4+RRQI8Azo3dRLYCcMa5YjCgyhADHg6lNEgSPwJBoZzC8Demk0vxhR9x6usEsZrj5FFAjwCEQ6HYyF+TODq09RK4ZQahT5dLCFFuYHgBkI8BpFPh2MhfkBLBEBXqPIp4OxMD+AJSLAaxT5ZgR1WJg/dyannqEedRzsUM9Qj3JnclU/F4DkIMBrFPl0sIgX5s+dyan/yX6NXx6XyzV+eVz9T/YT4kAKmLsv24t1dXX58HD6lgxP8qJEPUM9864Hvq5lnR77izk74AFIIDM77u5dpXWmEUYgydPBxsusOliuDiAcDKGk3ZUyY/Hl6gCCQYCn3GtlRsjK1QGEgwBPuRUNL1dUBxAOAjzlVr/h+orqAMJBgKfc7ps+o0a7Zlat0a7R7ps+E1NHAKLCLJSUY0MHIL04AgeAQHEEnnLFKzGnrkxJ0tUrMSVxFA4EjiPwlBs4MXA1vIumrkxp4MRATB0BiAoBnnLny1xxWa4OIBwEeMq1tbRVVAcQDgI85fo6+9TU0DSr1tTQpL7Ovpg6AhAVTmKmHNMIgfQiwDOgd1MvgQ2kEEMoABAoAjwKI4PS/Vuk/tb87chg3B0ByACGUGo1Mig9ulOaLmxifOls/r5U9TZoALAUHIHX6uje18O7aHoyXweAOqopwM2s1cyGzOx5M3vOzN4TVWPBuDRaWR0AIlLrEfiApJ+4+zskvUvSc7W3FJjV7ZXVASAiVQe4mV0r6VZJ35Ikd3/F3S9G1Fc4uvdIjSX7SzY25+sAUEe1HIFvkjQh6TtmdtLMHjSzltIHmdk9ZjZsZsMTExM1vFxCdeyQ7nxAWn2DJMvf3vkAJzAB1J25V7e7rZl1SXpK0i3u/rSZDUj6H3f/+3Kf09XV5cPDw9V1CgAZZWbH3b2rtF7LEfiopFF3f7pwf0hSZw3PhzrJncmpZ6hHHQc71DPUo9yZXNwtAYhA1QHu7uclnTWzzYVSt6RfRNIVIlPc0GH88rhcfnVDB0IcCF+tF/J8WtJ3zewNks5I+mjtLdXX4ZNj2nfktM5dnNT61mbt2rpZ22/cEHdbdbPQhg6sjwKEraYAd/dnJM0Zl0mqwyfHtPvQKU1OX5EkjV2c1O5DpyQptSHOhg5AemXqSsx9R05fDe+iyekr2nfkdEwd1R8bOgDplakAP3dxsqJ6GtzafmtFdQDhyFSAr29trqieBsdGj1VUBxCOTAX4rq2b1dzYMKvW3NigXVs3l/mM8DEGDqRXpgJ8+40b9OUPvVMbWptlkja0NuvLH3pnak9gSoyBA2mWufXAt9+4IdWBXaqvs0/9T/bPmkrIpsZAOmQuwLOGTY2B9MrUEAoApAlH4ClXvJS+OIRSvJReEkfhQOA4Ak+5hS6lBxA2AjzlmEYIpBcBnnJMIwTSiwBPub7OPjU1NM2qMY0QSAdOYqYc0wiB9CLAM6B3Uy+BDaQQQygAECiOwBMoa7sGAahO9gJ8ZFA6ule6NCqtbpe690gdO+Lu6qos7hoEoDrZGkIZGZQe3SldOivJ87eP7szXEyKLuwYBqE62AvzoXmm6ZPed6cl8PSGyuGsQgOpkK8AvjVZWj0EWdw0CUJ1sBfjq9srqMcjirkEAqpOtAO/eIzWWHMk2NufrCZHFXYMAVCdbs1CKs00SPAtFyt6uQQCqk60Al/JhnbDABoBqZGsIBQBShAAHgEAR4AAQqMSPgbMuCADML9EBzrogAFBeoodQWBcEAMpLdICzLggAlJfoAGddEAAor+YAN7MGMztpZj+KoqGZWBcEAMqL4iRmn6TnJF0bwXPNUjxRySwUAJirpgA3s3ZJvZL+QdJnIumoBOuCAMD8ah1C+Zqkz0p6rdwDzOweMxs2s+GJiYkaXw4AUFR1gJvZHZIuuPvxhR7n7vvdvcvdu9auXVvtywEAStRyBH6LpLvM7NeSvifpNjN7KJKuAACLqjrA3X23u7e7+0ZJH5b0hLt/JLLOAAALSvQ8cABAeZGsheLuP5X00yieCwCwNByBA0CgCHAACBQBDgCBIsABIFAEOAAEigAHgEAR4AAQKAIcAAJFgANAoAhwAAhU8gN8ZFC6f4vU35q/HRmMuyMASIRI1kKpm5FB6dGd0nRhF/pLZ/P3JaljR3x9AUACJPsI/Oje18O7aHoyXweAjEt2gF8arawOABmS7ABf3V5ZHQAyJNkB3r1HamyeXWtsztcBIOOSHeAdO6Q7H5BW3yDJ8rd3PsAJTABQ0mehSPmwJrABYI5kH4EDAMoiwAEgUAQ4AASKAAeAQBHgABAoc/flezGzCUm/qfLT10h6KcJ26iHpPSa9Pyn5PSa9P4keo5C0/n7f3deWFpc1wGthZsPu3hV3HwtJeo9J709Kfo9J70+ixygkvb8ihlAAIFAEOAAEKqQA3x93A0uQ9B6T3p+U/B6T3p9Ej1FIen+SAhoDBwDMFtIROABgBgIcAAIVRICbWYOZnTSzH8Xdy3zMrNXMhszseTN7zszeE3dPpczsXjP7DzN71sweNrOmBPT0bTO7YGbPzqi9ycweN7MXCrfXJay/fYXv84iZPWJmrXH1V+hnTo8z/u/vzMzNbE0cvRV6mLc/M/u0mZ0u/Ex+Ja7+Cr3M931+t5k9ZWbPmNmwmf1JnD2WE0SAS+qT9FzcTSxgQNJP3P0dkt6lhPVqZhsk7ZTU5e5bJDVI+nC8XUmSDki6vaT2eUlH3f1tko4W7sflgOb297ikLe7eIemXknYvd1MlDmhujzKzGyR9QNKLy91QiQMq6c/M/lzSNkkd7v6Hkr4aQ18zHdDcr+FXJH3J3d8taU/hfuIkPsDNrF1Sr6QH4+5lPmZ2raRbJX1Lktz9FXe/GGtT81spqdnMVkpaJelczP3I3Y9J+l1JeZukg4WPD0ravpw9zTRff+7+mLu/Wrj7lKRY9/cr8zWUpPslfVZSrLMUyvT3KUn3ufv/FR5zYdkbm6FMjy7p2sLHq5WA35f5JD7AJX1N+R/E12Luo5xNkiYkfacwzPOgmbXE3dRM7j6m/FHOi5LGJV1y98fi7aqst7j7uCQVbq+PuZ+FfEzSj+NuopSZ3SVpzN1/HncvZbxd0p+Z2dNm9q9m9sdxNzSPv5W0z8zOKv+7E/c7rXklOsDN7A5JF9z9eNy9LGClpE5J/+TuN0q6rHjf9s9RGEfeJumtktZLajGzj8TbVdjM7AuSXpX03bh7mcnMVkn6gvJv+5NqpaTrJN0kaZekQTOzeFua41OS7nX3GyTdq8I77KRJdIBLukXSXWb2a0nfk3SbmT0Ub0tzjEoadfenC/eHlA/0JHm/pF+5+4S7T0s6JOnmmHsq57dmtk6SCrexvr2ej5ndLekOSX/jybuQ4g+U/0P988LvTbukE2bWFmtXs41KOuR5/678u+vYTrSWcbfyvyeS9C+SOIlZKXff7e7t7r5R+ZNuT7h7oo4c3f28pLNmtrlQ6pb0ixhbms+Lkm4ys1WFI51uJexE6ww/VP6XR4XbH8TYyxxmdrukz0m6y91fjrufUu5+yt2vd/eNhd+bUUmdhZ/TpDgs6TZJMrO3S3qDkrXyn5Qf835v4ePbJL0QYy/luXsQ/yS9T9KP4u6jTG/vljQsaUT5H87r4u5pnh6/JOl5Sc9K+mdJ1ySgp4eVH5OfVj5oPi7pzcrPPnmhcPumhPX3n5LOSnqm8O+bSfsalvz/ryWtSVJ/ygf2Q4WfxROSbkva11DSn0o6Lunnkp6W9Edx9ljuH5fSA0CgEj2EAgAojwAHgEAR4AAQKAIcAAJFgANAoAhwAAgUAQ4Agfp/r6wIttQriMsAAAAASUVORK5CYII=
">

