
# MERMAID


```python
import base64
from IPython.display import Image, display
import matplotlib.pyplot as plt
```


```python
def mm(graph):
    graphbytes = graph.encode("utf-8")
    base64_bytes = base64.b64encode(graphbytes)
    base64_string = base64_bytes.decode("utf-8")
    display(Image(url="https://mermaid.ink/img/" + base64_string))
```


```python
mm("""flowchart LR
a((Início));
b[Ação];
c{Teste};
d[Ação];
e[Ação];
f((Fim));

a --> b --> c
c -- Sim --> d --> f
c -- Não --> e --> f""")
```


<img src="https://mermaid.ink/img/Zmxvd2NoYXJ0IExSCmEoKEluw61jaW8pKTsKYltBw6fDo29dOwpje1Rlc3RlfTsKZFtBw6fDo29dOwplW0HDp8Ojb107CmYoKEZpbSkpOwoKYSAtLT4gYiAtLT4gYwpjIC0tIFNpbSAtLT4gZCAtLT4gZgpjIC0tIE7Do28gLS0+IGUgLS0+IGY="/>


```python
mm("""flowchart TD
a((Início));
b[Ação];
c{Teste};
d[Ação];
e[Ação];
f((Fim));

a --> b --> c
c -- Sim --> d --> f
c -- Não --> e --> f""")
```


<img src="https://mermaid.ink/img/Zmxvd2NoYXJ0IFRECmEoKEluw61jaW8pKTsKYltBw6fDo29dOwpje1Rlc3RlfTsKZFtBw6fDo29dOwplW0HDp8Ojb107CmYoKEZpbSkpOwoKYSAtLT4gYiAtLT4gYwpjIC0tIFNpbSAtLT4gZCAtLT4gZgpjIC0tIE7Do28gLS0+IGUgLS0+IGY="/>

