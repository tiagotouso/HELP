
# Map filenames to MIME types


```python
# IMPORTAR MÓDULO

import mimetypes

import pandas as pd
pd.set_option('display.max_rows', None)
```


```python
# CRIAR O OBJETO

types = mimetypes
```


```python
# TRANSFORMAR EM UMA TABELA O DICIONÁRIO

tabela = zip(types.types_map.keys(), types.types_map.values())
```


```python
# CRIAR UM DATAFRAME

dados = pd.DataFrame(data = tabela, 
                     columns=['extensao', 'tipo'], 
                     index=list(range(0, len(types.types_map))))
```


```python
# LISTA DE DOCUMENTOS MAIS COMUNS

lista = ['.doc', '.xls', '.pdf', '.txt', '.py',
         '.html', '.xml',
         '.jpeg', '.png', '.svg',
         '.mp3', '.mp4']
```


```python
# FILTRAR OS DADOS

dados.query(f'extensao in {lista}')
```


<div>

<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>extensao</th>
      <th>tipo</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>4</th>
      <td>.doc</td>
      <td>application/msword</td>
    </tr>
    <tr>
      <th>15</th>
      <td>.pdf</td>
      <td>application/pdf</td>
    </tr>
    <tr>
      <th>22</th>
      <td>.xls</td>
      <td>application/vnd.ms-excel</td>
    </tr>
    <tr>
      <th>70</th>
      <td>.mp3</td>
      <td>audio/mpeg</td>
    </tr>
    <tr>
      <th>82</th>
      <td>.jpeg</td>
      <td>image/jpeg</td>
    </tr>
    <tr>
      <th>83</th>
      <td>.png</td>
      <td>image/png</td>
    </tr>
    <tr>
      <th>84</th>
      <td>.svg</td>
      <td>image/svg+xml</td>
    </tr>
    <tr>
      <th>103</th>
      <td>.html</td>
      <td>text/html</td>
    </tr>
    <tr>
      <th>105</th>
      <td>.txt</td>
      <td>text/plain</td>
    </tr>
    <tr>
      <th>113</th>
      <td>.py</td>
      <td>text/x-python</td>
    </tr>
    <tr>
      <th>118</th>
      <td>.xml</td>
      <td>text/xml</td>
    </tr>
    <tr>
      <th>119</th>
      <td>.mp4</td>
      <td>video/mp4</td>
    </tr>
  </tbody>
</table>
</div>

