
# TXT TO MP3


```python
# IMPORTAR MÓDULO

from gtts import gTTS
```


```python
# VARIÁVEL TEXTO

texto = 'Eu tenho um sonho'
```


```python
# DECLARAÇÃO DO IDIOMA

language = 'pt'
```


```python
# CRIAR O OBJETO

obj = gTTS(text=texto, lang=language, slow=False)
```


```python
# SALVAR EM MP3

obj.save("texto_to_mp3.mp3")
```

