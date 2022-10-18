
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


```python
# CRIAR UM PASSWORD

password = ''.join(secrets.choice(alphabet) for i in range(8))

password
```


```python
# CRIAR UM PASSWORD

password = ''.join(secrets.choice(alphabet) for i in range(16))

password
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


```python
# CRIAR UMA URL SECRETS

url = 'https://example.com/reset=' + secrets.token_urlsafe()

url
```

