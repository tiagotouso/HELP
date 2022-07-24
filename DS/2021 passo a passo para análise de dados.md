# PASSO A PASSO PARA ANÁLISE DE ST

# DEFINIR O PROBLEMA

# CARREGAR OS MÓDULOS
### _PYTHON_
* pandas
### _R_
* readr
* dplyr 
* forecast
* urca
* seasonal
* ggplot2


# CARREGAR O DATASET
### _PYTHON_
* pd.read_csv
### _R_
* read.csv2


# VERIFICAR O TAMANHO DO DATASET
### _PYTHON_
* pd.shape
### _R_
* dim


# TRANSFORMAR DADOS EM ST
### _PYTHON_
* pd.columns
### _R_
* st

# VERIFICAR OS TIPOS DOS DADOS
### _PYTHON_
* pd.info  
* pd.describe
* for cl in pd.columns:  
    pd[cl].unique()  
### _R_ 
* str  
* summary
* glimpse


# PLOTAR OS HISTOGRAMAS
### _PYTHON_
* pd.hist
* pd.skew
* plt.hist
### _R_ 
* plot
* hist
* boxplo
* autoplo

# DECOMPOSIÇÃO DA ST
### _PYTHON_

### _R_
* decompose

* windows
* ggseasonplot
* tsdisplay



# RESÍDUOS
### _R_ 
* md = auto.arima(presidents)
* hist(md$residuals)
* var(md$residuals, na.rm = T)
* mean(as.vector(md$residuals), na.rm = T)
* acf(md$residuals, na.action = na.pass )
* checkresiduals(md)
* shapiro.test(md$residuals)



# ESTACIONARIEDADE
### _R_ 
* Box.test(dados, type="Ljung-Box")


#faz a diferenciacao
z = diff(dados)

#testa novamente
x = Box.test(z, type="Ljung-Box")
print(x)

split.screen( figs = c( 2, 1 ) )
screen(1)
plot(airmiles, main="Airmiles")
screen(2)
plot(z, main="Série Transformada")
close.screen( all = TRUE )

#quantos processos de dif. precisam
#Phillips-Perron test
ndiffs(airmiles, test="pp")
ndiffs(z, test="pp")



# DECOMPOSIÇÃO
### _R_ 
* decompose  
    decomposicao classica
* seas  
    X-13ARIMA-SEATS
* mstl


# TRANSFORMAÇÃO
### _R_ 
* BoxCox(AirPassengers, lambda =0 )  
    lambda = 0, logaritmica 

* BoxCox(AirPassengers, lambda =.1 )
    lambda <> 0

* lbd = BoxCox.lambda(AirPassengers)  
    gera labda automático
* BoxCox(AirPassengers, lambda =lbd )

* diff(AirPassengers)  
    diferenciacao

* log10(AirPassengers)  
    logaritmica





# MÉDIAS MÓVEIS
### _R_ 










# VERIFICAR OS NOMES DAS COLUNAS
### _PYTHON_
* pd.columns
### _R_
* colnames

# VERIFICAR OS NOMES DOS ÍNDICES
### _PYTHON_
* pd.index
### _R_
* rownames


# VERIFICAR O TIPO DOS DADOS
### _PYTHON_
* dp.dtypes
### _R_
* -


# VERIFICAR A QUANTIDADE DE DADOS ÚNICOS
### _PYTHON_
* pd.numique
### _R_
* -

# VERIFICAR UMA AMOSTRA DO DATASET
### _PYTHON_
* pd.sample  
* pd.tail  
* pd.head
### _R_
* sample_n
* tail
* head


# VERIFICAR OS TIPOS DOS DADOS
### _PYTHON_
* pd.info  
* pd.describe
* for cl in pd.columns:  
    pd[cl].unique()  
### _R_ 
* str  
* summary
* glimpse


# VERIFICAR O TIPO DA VARIÁVEL PREDITIVA
### _PYTHON_
* pd.value_counts
### _R_ 
* count


# VERIFICAR OS DADOS MISSING
### _PYTHON_
* pd.isnull
* pd.isna
### _R_ 
* sapply  
{function(x) sum(is.n(x))}  
{function(x) sum(is.nan(x))}


# FAZER A CORREÇÃO NO TIPOS DOS DADOS
### _PYTHON_
* pd.-
* pd.-
### _R_ 
* -


# CARREGAR OS MÓDULOS DE PLOTAR
### _PYTHON_
* matplotlib
* seaborn
### _R_ 
* ggplot


# PLOTAR OS HISTOGRAMAS
### _PYTHON_
* pd.hist
* pd.skew
* plt.hist
### _R_ 
* hist


# PLOTAR AS CORRELAÇÕES
### _PYTHON_
* pd.corr
### _R_ 
* -


# PLOTAR OUTROS GRÁFICOS
### _PYTHON_
* seaborn
### _R_ 
* ggplot

# CRIAR MODELO DE ML
# VERIFICAR A PRECISSÃO DO MODELO DE ML
# FAZER A VALIDAÇÃO CRUZADA
# CONCLUSÃO

