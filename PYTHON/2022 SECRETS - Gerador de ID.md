
# SECRETS - Gerador de ID


```python
# IMPORTAR MÓDULO

import string
import secrets
```


```python
# CRIAR UMA VARIÁVEL ALPHABET

alphabet = string.ascii_letters + string.digits

alphabet
```

```
'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789'
```


```python
# CRIAR UM PASSWORD

password = ''.join(secrets.choice(alphabet) for i in range(8))

password
```

```
'PkmVEcDf'
```


```python
# CRIAR UM PASSWORD

password = ''.join(secrets.choice(alphabet) for i in range(16))

password
```

```
'8AB48i3uwW4Yc0Ks'
```


```python
# CRIAR UM PASSWORD COM PELO NEMOS UMA LETRA MAIÚSCULA - UMA MINÚSCULA - TRÊS DÍGITOS

while True:
    password = ''.join(secrets.choice(alphabet) for i in range(10))
    if (any(c.islower() for c in password)
            and any(c.isupper() for c in password)
            and sum(c.isdigit() for c in password) >= 3):
        break

password
```

```
'XD8Uov9u9Y'
```


```python
# CRIAR UMA URL SECRETS

url = 'https://example.com/reset=' + secrets.token_urlsafe()

url
```

```
'https://example.com/reset=vMc5aD9sLz4dT5miIE6NgWAmsqvIMXHEgZdqP75_ay0'
```

