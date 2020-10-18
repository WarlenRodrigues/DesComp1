# Design de Computadores - Projeto 1 - Relógio digital
#### Felipe Aron Nudelman, Gabriel Magalhães Duarte Klabin e Warlen César Rodrigues Filho

## :computer: Ferramentas de desenvolvimento

#### Assembler
Nosso projeto é controlado, essencialmente, por instruções binárias que são interpretadas pelo nosso hardware e direcionam o funcionamento do relógio. Para gerar as instruções binárias com mais clareza e organização, utilizamos o esqueleto do assembler disponibilizado pelo professor com algumas adaptações para o nosso maior conforto e entendimento.
O código fonte dessa ferramenta com as nossas alterações pode ser encontrado em `assembler/assembler.py`

O assembler desse projeto é um objeto que possui os seguintes atributos e métodos:

- Atributos  
`self.registers` Um dicionário de Registradores que guarda os registradores e seus endereções binários (i.e.: `{"R1": "001"}`)  
`self.opcodes` Um dicionário que guarda os comandos esperados do Assembly e seus respectivos OpCodes em binário (i.e.: `{"JMP": "0110"}`)  
`self.functions` Um dicionário que guardará os endereços das funções definidas no Assembly conforme forem interpretadas (i.e.: `{"IFS":  "000001010"}`)  
`self.binary` Um dicionário que guarda o número da linha do Assembly e uma lista que representa a instrução em binário dividida em OpCode, Registrador, Dado (i.e.: `{1: [0110, 000, 00000011]}`)  

- Métodos  
`get_code()` Carrega o código Assembly para interpretação  
`get_functions()` Guarda as funções definidas no Assembly e seus endereços povoando o atributo `self.functions`  
`replace_opcodes_and_registers()` Faz o parse completo das linhas do Assembly para os binários correspondentes  
`generate_bin_code()` Gera o código esperado pela ROM no VHDL. Adiciona trechos de VHDL necessários, as intruções completas e um comentário VHDL com a instrução Assembly original  

#### Assembly
O nosso processador nos permite escrever código em assembly utilizando as seguintes instruções:

|            Instrução      | OpCode        | Descrição                                                       |
| --------------------------|:-------------:|----------------------------------------------------------------:|
| LOAD REG, #IMEDIATO       |      0001     | Carrega o valor <IMEDIATO> no registrador de endereço <REG>.    |
| ADD REG, %MEM[IMEDIATO]   |      0010     | Carrega um valor da memória e soma com o registrador <REG>.     |
| ADDI REG, #IMEDIATO       |      0100     | Soma um valor constante em um registrador de endereço <REG>.    |
| STORE REG, %MEM[IMEDIATO] |      1000     | Guarda o valor em <REG> no endereço de <MEM>.                   |
| SUB REG, %MEM[IMEDIATO]   |      0011     | Carrega um valor da memória e subtrai com o registrador <REG>.  |
| SUBI REG, #IMEDIATO       |      0101     | Subtrai um valor constante em um registrador de endereço <REG>  |
| JMP MEM[Imediato]         |      0110     | Redireciona para a instrução <MEM> na memória de Instruções     |
| CMP REG, %MEM             |      1001     | Realiza a comparação entre <REG> e <MEM> e guarda no flip flop. |
| JE MEM[Imediato]          |      0111     | Redireciona instrução se o bit no flip flop é igual a 1.        |


Todos os valores são escritos em decimal, e os prefixos `#` e `%` indicam se são valores numéricos ou endereços da memória respectivamente. 
As Labels também são utilizadas como um forma de gravar o endereço de alguma instrução na ROM, para  executar loops ou funções e seguem o formato <NOME_LABEL>: <INSTRUCAO>.


## :clock10: Ajuste e manuseio do tempo no relógio

#### Alteração de velocidade da base de tempo
Esta função altera a velocidade com a qual os segundos passam, de modo que seja possível validar mais rapidamente o funcionamento pleno do relógio. Sua ativação é controlada pela chave SW0 que, quando posicionada para baixo, 
faz com que o tempo passe normalmente, ou seja, um segundo por segundo. Quando SW0 está acionada (para cima), o tempo no relógio passa mais rápido.

#### Ajuste do tempo com base nas casas temporais 
Esta função nos permite ajustar o horário exibido nos displays de sete segmentos controlando as casas de segundo, minuto e hora. Cada casa é controlada por uma chave sendo:  

O controle é bem simples, ao acionar a chave de controle, a contagem padrão congela e a casa selecionada passa a ser incrementada em uma unidade por segundo. (i.e.: Se a chave SW3 for ativada, as casas de minutos e segundos congelam enquanto a casa das horas é incrementada em uma unidade por segundo.)  
Esta função exerce o papel de ajuste de horário, como previsto nos requisitos do projeto.

#### Congelamento de tempo
Esta função consiste em pausar o relógio. Ao acionar a chave SW4, o relógio congelará até que a chave volte ao seu estado inativo.
- SW0 - Altera para modo acelerado  
- SW1 - Ajusta segundos  
- SW2 - Ajusta minutos  
- SW3 - Ajusta houras  
- SW4 - Pausa o relógio  

###### :no_entry: IMPORTANTE: As chaves devem ser acionadas separadamente. Ou seja, somente uma chave acionada por vez. Acionar as chaves simultaneamente pode gerar comportamentos inesperados.
 
## Informações técnicas e diagramas
- Entenda nossa arquitetura, diagramas, unidades funcionais e mais detalhes do projeto...  
:point_right: [Acesse às informações do projeto](https://docs.google.com/document/d/1iSeh1RMxmLeC8MS8Etr-W29YoRSlrA4OQO4GgeF3XZ4/edit?usp=sharing)

## Vídeo demonstrativo do projeto
[Assista ao vídeo](https://www.youtube.com/watch?v=F1zJpvmqpkM&feature=youtu.be)

