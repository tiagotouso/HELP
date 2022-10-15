# PAFY - Baixar conteúdo do YouTube e recuperar metadados

```python
# IMPORTAR MÓDULO

import pafy
```

Se necessário instalar o módulo abaixo  
!pip install youtube-dl==2020.12.2

```python
# DEFINIR A URL

url = "https://youtu.be/8Pa9x9fZBtY"
```

```python
# CRIAR O OBJETO VÍDEO

video = pafy.new(url)
```

```python
# EXIBIR INFORMAÇÃO SOBRE O VÍDEO

video
```

<pre>
Title: Dire Straits - Sultans Of Swing (Alchemy Live)
Author: DireStraitsVEVO
ID: 8Pa9x9fZBtY
Duration: 00:10:47
Rating: None
Views: 216322427
Thumbnail: http://i.ytimg.com/vi/8Pa9x9fZBtY/default.jpg</pre>

```python
# CRIAR O OBJETO STREAM DE ÁUDIO

sa = video.getbestaudio()
```

```python
# FAZ O DOWNLOAD

filename = sa.download(f'{video.title}.mp3', quiet=True)
```

<pre>

</pre>

```python
# CRIAR O OBJETO STREAM DE VÍDEO

sv = video.getbestvideo()
```

```python
# FAZ O DOWNLOAD

sv.download(quiet=True)
```

<pre>

</pre>

