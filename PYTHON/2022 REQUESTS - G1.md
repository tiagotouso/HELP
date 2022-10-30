
# REQUESTS - G1


```python
# IMPORTAR MÓDULOS

import requests
from bs4 import BeautifulSoup
```


```python
# DEFINIR A URL

url = 'https://g1.globo.com/'
```


```python
# FAZER A REQUISIÇÃO

resposta = requests.get(url)
```


```python
# VERIFICAR A RESOSTA DA REQUISIÇÃO

resposta.status_code
```


```python
# CRIAR O OBJETO SITE

site = BeautifulSoup(resposta.content, 'html.parser')
```


```python
# VERIFICAR OS VALORES DA TAG

for bloco in site.find_all('div', attrs={'class': 'feed-post-body'}):
    print(bloco.get_text())
    print()
```

```
Corrida presidencialVeja o que é #FATO e o que é #FAKE na entrevista de Lula para o JNHá 8 horas Eleições 'Corrupção só aparece quando você permite que seja investigada'Há 8 horasO que é #FATO ou #FAKE nas falas dos presidenciáveisHá 8 horas

Veja entrevista de Lula na íntegraHá 15 horas Jornal Nacional Como foi o desempenho de Lula na entrevista? Veja análisesHá 15 horas

Entenda o contexto da frase de Paulo Freire citada por LulaFrase foi tirada de livro do educador que faz apelo ao diálogo democrático.Há 2 horas Pernambuco 

Jornal Nacional entrevista Simone Tebet hoje às 20h55Há 7 horas Jornal Nacional 

OportunidadesCenso 2022: IBGE abre novo concurso para 6,8 mil vagas temporáriasHá 5 horas Concursos PIS-Pasep: como consultar e sacar pelo aplicativo do FGTSHá 5 horasAté quando posso sacar as parcelas do Auxílio Brasil?Há 5 horas

Sucessão no VaticanoComo Francisco está formando grupo que escolherá próximo papaHá 8 horas Mundo Papa pede à Coreia do Norte que o convide para visitaHá 8 horas

EleiçõesApós fala de Lula, Bolsonaro diz que 'não tem filé mignon para todo mundo'Há 56 minutos Eleições 2022 em São Paulo VALDO CRUZ: presidente tenta unir críticos a operação contra empresáriosHá 56 minutos

Blog da Andréia SadiLista tríplice em aberto é cartada de Lula para negociar com MP e Centrão Petista discute ampliar para 6 a relação de indicações para a PGR.Há 3 horas Blog da Andréia Sadi 

Campanha na TV e no rádioHorário eleitoral começa hoje; veja o que pode e o que não pode1º dia terá candidatos a senador, deputado estadual e governador.Há 5 horas Eleições 2022 

```


```python
# IMPRIMIR NOTÍCIAS

for bloco in site.find_all('div', attrs={'class': 'feed-post-body'}):

    titulo = bloco.find('a', attrs={'class': 'feed-post-link'})
    noticia = bloco.find('div', attrs={'class': 'feed-post-body-resumo'})
    
    print('TITULO:', titulo.text)
    if noticia != None:
        print('NOTÍCIA:', noticia.text)
    print('LINK:', titulo['href'])
    print('-' * 20)
    print()
```

```
TITULO: Veja o que é #FATO e o que é #FAKE na entrevista de Lula para o JN
LINK: https://g1.globo.com/fato-ou-fake/eleicoes/noticia/2022/08/26/veja-o-que-e-fato-ou-fake-na-entrevista-de-lula-para-o-jornal-nacional.ghtml
--------------------

TITULO: Veja entrevista de Lula na íntegra
LINK: https://g1.globo.com/jornal-nacional/noticia/2022/08/25/lula-pt-e-entrevistado-no-jornal-nacional.ghtml
--------------------

TITULO: Entenda o contexto da frase de Paulo Freire citada por Lula
NOTÍCIA: Frase foi tirada de livro do educador que faz apelo ao diálogo democrático.
LINK: https://g1.globo.com/pe/pernambuco/noticia/2022/08/26/entenda-o-contexto-da-frase-de-paulo-freire-citada-por-lula-durante-sabatina-do-jornal-nacional.ghtml
--------------------

TITULO: Jornal Nacional entrevista Simone Tebet hoje às 20h55
LINK: https://g1.globo.com/jornal-nacional/ao-vivo/jornal-nacional-entrevista-simone-tebet-candidata-do-mdb-a-presidencia-da-republica.ghtml
--------------------

TITULO: Censo 2022: IBGE abre novo concurso para 6,8 mil vagas temporárias
LINK: https://g1.globo.com/trabalho-e-carreira/concursos/noticia/2022/08/26/ibge-abre-novo-concurso-para-68-mil-vagas-temporarias-para-o-censo-2022.ghtml
--------------------

TITULO: Como Francisco está formando grupo que escolherá próximo papa
LINK: https://g1.globo.com/mundo/noticia/2022/08/26/entenda-como-francisco-esta-formando-o-grupo-que-vai-escolher-o-proximo-papa.ghtml
--------------------

TITULO: Após fala de Lula, Bolsonaro diz que 'não tem filé mignon para todo mundo'
LINK: https://g1.globo.com/sp/sao-paulo/eleicoes/2022/noticia/2022/08/26/apos-fala-de-lula-sobre-carne-bolsonaro-diz-que-nao-tem-file-mignon-para-todo-mundo.ghtml
--------------------

TITULO: Lista tríplice em aberto é cartada de Lula para negociar com MP e Centrão 
NOTÍCIA: Petista discute ampliar para 6 a relação de indicações para a PGR.
LINK: https://g1.globo.com/politica/blog/andreia-sadi/post/2022/08/26/pgr-lista-triplice-em-aberto-e-cartada-de-lula-para-negociar-com-mp-e-centrao.ghtml
--------------------

TITULO: Horário eleitoral começa hoje; veja o que pode e o que não pode
NOTÍCIA: 1º dia terá candidatos a senador, deputado estadual e governador.
LINK: https://g1.globo.com/politica/eleicoes/2022/noticia/2022/08/26/propaganda-eleitoral-na-tv-e-no-radio-comeca-nesta-sexta-feira-conheca-as-regras.ghtml
--------------------

```

