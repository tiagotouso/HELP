# PASSO A PASSO PARA ANÁLISE DE DADOS

# DEFINIR O PROBLEMA

# CARREGAR OS MÓDULOS
### _PYTHON_
* pandas
### _R_
* readr
* dplyr 


# CARREGAR O DATASET
### _PYTHON_
* pd.read_csv
### _R_
* read_csv


# VERIFICAR O TAMANHO DO DATASET
### _PYTHON_
* pd.shape
### _R_
* dim

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

