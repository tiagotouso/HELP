# UUID - Gerador de id

```python
# IMPORTAR MÓDULO

import uuid
```

```python
# GERAR UM ID ALEATÓRIO

id1 = uuid.uuid1()
id1
```

<pre>
UUID('929c60bb-4c19-11ed-b886-e454e8023acc')</pre>

```python
# EXIBIR INFORMAÇÃO DO ID

id1.bytes
```

<pre>
b'\x92\x9c`\xbbL\x19\x11\xed\xb8\x86\xe4T\xe8\x02:\xcc'</pre>

```python
# EXIBIR INFORMAÇÃO DO ID

id1.int
```

<pre>
194879247645068659839116128365893008076</pre>

```python
# EXIBIR INFORMAÇÃO DO ID

id1.hex
```

<pre>
'929c60bb4c1911edb886e454e8023acc'</pre>

```python
# EXIBIR INFORMAÇÃO DO ID

id1.variant
```

<pre>
'specified in RFC 4122'</pre>

```python
# EXIBIR INFORMAÇÃO DO ID

id1.fields
```

<pre>
(2459721915, 19481, 4589, 184, 134, 251053320846028)</pre>

```python
# EXIBIR INFORMAÇÃO DO ID

id1.node
```

<pre>
251053320846028</pre>

```python
# GERAR UM ID ALEATÓRIO COM BASE EM UMA SEQUÊNCIA

clockseq = 4242

for node in [0x1cf5c0c27837,  0x1b0702e8ff4e, 0x7fcec9fb9f40, 0x3139b78d213b, 0xa358f02dc954]:
    print(uuid.uuid1(node, clockseq))
```

<pre>
93a781a9-4c19-11ed-9092-1cf5c0c27837
93a7b609-4c19-11ed-9092-1b0702e8ff4e
93a7b60a-4c19-11ed-9092-7fcec9fb9f40
93a7b60b-4c19-11ed-9092-3139b78d213b
93a7b60c-4c19-11ed-9092-a358f02dc954
</pre>

```python
# GERAR UM ID ALEATÓRIO

id3 = uuid.uuid3(uuid.NAMESPACE_X500, str(id1))
print(id3)
```

<pre>
cc4bc6fc-6402-3192-88c0-e83a8fbe5113
</pre>

```python
# GERAR UM ID ALEATÓRIO

id4 = uuid.uuid4()
print(id4)
```

<pre>
49b05e62-729c-4a48-9072-5cbf40dc2dbd
</pre>

```python
# GERAR UM ID ALEATÓRIO

id5 = uuid.uuid5(uuid.NAMESPACE_DNS, str(id4))
print(id5)
```

<pre>
f5f5c2d8-26ef-52a4-8c26-4546f212ce36
</pre>

