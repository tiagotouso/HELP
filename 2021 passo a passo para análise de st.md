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


# ESTACIONARIEDADE
### _R_ 
* Box.test(dados, type="Ljung-Box")

* diff(dados)
> Faz a diferenciação

* ndiffs(airmiles, test="pp")
> Phillips-Perron test


# DECOMPOSIÇÃO
### _R_ 
* decompose  
> Decomposicao classica

* seas  
> X-13ARIMA-SEATS

* mstl

* ets


# TRANSFORMAÇÃO
### _R_ 
* BoxCox(AirPassengers, lambda =0 )  
> lambda = 0, logaritmica 

* BoxCox(AirPassengers, lambda =.1 )
> lambda <> 0

* lbd = BoxCox.lambda(AirPassengers)  
> gera labda automático

* BoxCox(AirPassengers, lambda =lbd )

* diff(AirPassengers)  
> diferenciacao

* log10(AirPassengers)  
> logaritmica


# MÉDIAS MÓVEIS
### _R_ 
* ma

* tsclean
> Limpeza dos dados


# RESÍDUOS
### _R_ 
* md = auto.arima(dados)
* hist(md$residuals)
* var(md$residuals, na.rm = T)
* mean(as.vector(md$residuals), na.rm = T)
* acf(md$residuals, na.action = na.pass )
* checkresiduals(md)
* shapiro.test(md$residuals)



# PREVISÕES
### _R_ 
* naive
* snaive
* meanf
* rwf
> drift = F ou T

* stlf
* holt
>  alpha - damped - phi










