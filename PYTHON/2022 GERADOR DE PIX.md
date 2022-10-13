# GERADOR DE PIX

```python
# IMPORTAR MÓDULOS

import segno
import crcmod
```

```python
# CRIAR A CLASS GERADORA DE PIX

class GeradorPix():
    
    def __init__(self, nome, chavepix, valor, cidade, idtxt):
        def tamanhostr(valor):
            return str(len(valor)).zfill(2)
        
        record = {
                  '00': ('02', '01', '___Payload Format Indicator ***'), # VALOR FIXO
                  '52': ('04', '0000','___Merchant Category Code ***'), # VALOR FIXO
                  '53': ('03', '986', '___Transaction Currency ***'), # VALOR FIXO
                  '58': ('02', 'BR', '__Country Code ***'), # VALOR FIXO
                  '54': [tamanhostr(valor), valor, '___Transaction Amount'],
                  '59': [tamanhostr(nome), nome, '___Merchant Name'],
                  '60': (tamanhostr(cidade), cidade),
                 }
        
        recordMAIPax = {'00': ('14', 'BR.GOV.BCB.PIX', '___GUI ***'), # VALOR FIXO
                       '01': (len(chavepix), chavepix, '___Chave PIX')}
        tamanho, valor = self.Juntar_Dicionario(recordMAIPax)
        recordMAIP = {'26':(tamanho, valor, '___Merchant Account Information - PIX')}
        
        record.update(recordMAIP)
        
        recodrADFax = {'05': (tamanhostr(idtxt), idtxt,'___Reference Label')}
        tamanho, valor = self.Juntar_Dicionario(recodrADFax)
        recordADF = {'62':(tamanho, valor, '___Additional Data Field')}
        
        record.update(recordADF)
        
        record['63'] = ['04', '', '___CRC16-CCITT']
        
        tamanho, valor = self.Juntar_Dicionario(record)
        crc16 = self.GerarCrc16(valor)
        record['63'][1] = crc16

        _, codigopix = self.Juntar_Dicionario(record)
        
        self.GerarQrCode(codigopix + '\x00\x00')
        
        self.pixtxt = codigopix

        
    def Resultado(self):
            
        return self.pixtxt
        
    
    def GerarCrc16(self, payload):
        
        modelo = crcmod.mkCrcFun(poly=0x11021, initCrc=0xFFFF, rev=False, xorOut=0x0000)
        crc16code = hex(modelo(str(payload).encode('utf-8')))
        crc16codestr = str(crc16code).replace('0x', '').upper()
        
        return crc16codestr
        

    def Juntar_Dicionario(self, dicionario):

        concatenar = ''
        keys = list(set(dicionario.keys())).copy()
        keys.sort()
        for key in keys:
            valores = dicionario[key]
            tamanho = str(valores[0])
            valor = str(valores[1])

            concatenar += f'{key}{tamanho}{valor}'

        return len(concatenar), concatenar
    
    
    def GerarQrCode(self, payload):
        
        img = segno.make(payload)
        img.save('qrcpixr.png', scale = 10 )
```

```python
# CRIAR O OBJETO

newpix = GeradorPix('TIAGO TOUSO', 
                    'tiagotouso@gmail.com', 
                    '10.00', 
                    'UBERABA-MG', 
                    'CODIGO01')
```

```python
# GERAR O PIX

newpix.Resultado()
```

<pre>
'00020126420014BR.GOV.BCB.PIX0120tiagotouso@gmail.com520400005303986540510.005802BR5911TIAGO TOUSO6010UBERABA-MG62120508CODIGO016304BEBA'</pre>

