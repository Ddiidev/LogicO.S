
# LogicO.S Sistema de ordem de serviço

Quando tinha uns 14 anos, meu pai tinha uma necessidade que era um sistema de OS(Order de serviço), e como eu tava estudando programação ele me propôs isso.



## Demonstração




## Aprendizados

Primeiramente aprendi a desenvolver em uma linguagem que não era BatchScript(Sim já 😢)
E assim, ela resolve bastante problema, ganhei meu primeiro dinheiro com KiXtart.

Ela é uma linguagem 100% procedural, embora seja possível manipular [objetos COM](https://en.wikipedia.org/wiki/Dynamic-link_library).

Então a primeira vez que mexi com objetos foi com ela, e daí deu início a trabalhar com POO em C#(isso tava com 17).

### Consumo de API

E já mesmo nessa linguagem aprendi a como consumir uma api(Engraçado precisar de curso ou vídeo pra aprender consumir API).

Bem... não existia uma forma tão simples de fazer isso, usei uma UDF(User-defined function)
que não sei exatamente onde encontrei para linkar aqui, mas tem dentro do arquivo da lib.
Ela era muito simples fazia apenas GET em um URL passada e retornava o body.

Mas e como eu faria para ler o retorno que o [viacep](https://viacep.com.br/) me dava, visto que o KiXtart não tem um parser de json?

Naquele tempo o o viacep foi muito importante pois ele tinha um formato de **piped** que separava os dados através de '|' e dessa forma eu faria apenas um split no texto e ia até onde eu queria. hoje infelizmente não tem mais.

### Uso de imagens

Bem o "framework"(não se posso chama-lo assim) [KixForms](http://www.kixforms.org/) não dava suporte para todos os formatos de imagens, apenas jpeg, jpg e bmp.

Ai a pergunta é... Como faria para inserir uma imagem que não é do formato jpeg, jpg e bmp, exemplo gif ou png.

Bem a solução foi, **Converter** simples assim 'kkk usei um ferramente CLI chamada "convert.exe" não sei o nome do author, infelizmente.
Então eu mandava um convert.exe _"C:\user\Andre\img.png" "C:\user\Andre\img.bmp"_. após a conversão eu salvava essa imagem **bmp** ao invés da orginal.

#### Outra coisa bem interessante!
É que toda imagem BMP não tem suporte para o transparente assim como no png.
Então como fazer?

Bem... Existe uma coisa antiga já que é [replace de cor](https://en.wikipedia.org/wiki/Transparency_(graphic)#Level_2:~:text=Raster%20file%20formats%20that%20support%20transparency%20include%20GIF%2C%20PNG%2C%20BMP%2C%20TIFF%2C%20TGA%20and%20JPEG%202000%2C%20through%20either%20a%20transparent%20color%20or%20an%20alpha%20channel.).

As parte que eu queria que fosse transparente eu deixava preto e na hora de exibir eu dizia para o componente pictureBox que tinha um replace de preto para transparente.
Então era dessa forma que exibia imagens com fundo "transparente".


### Banco de dados

KiXtart não tinha driver de banco de dados, o que quer dizer que não era possível usar mysql, mongo, firebird, postegress nem mesmo um sqlite.

Uma possibilidade era usar o banco da Microsoft o Microsoft Acess(isso porque eles oferencial comunicação [COM](https://en.wikipedia.org/wiki/Dynamic-link_library)), porém tinha essa enorme dependência.

Então, não! Porém tive um que desenvolver meu próprio banco de dados.
Ele era um [DBF](https://en.wikipedia.org/wiki/.dbf), cada arquivo era uma tabela.

1. A primaryKey era sempre a coluna primária(😅 Ai meu pai).
2. Não tinha um sistema de counter bem definido era tudo em uma outra tabela, só para isso.
3. Ele guardava tudo em memória.
- Read em memória.
- Create em memória.
- Update em memória.
- Query em memória.
4. A persistência por fim em seus devidos arquivo na melhor velocidade que dava pra tirar da interoperabilidade com [VBScript](https://en.wikipedia.org/wiki/VBScript), e para melhorar a performance dava para salvar.
<br/>

Eu poderia dizer que minha tentativa era criar um banco não relacional no tempo, porém não era nada disso, só queria resolver um problema de banco de dados no tempo, porém usando uma ideia altavamente rudimentar de de dados.

A performance era ótima visto que tudo estava em memória, porém na hora de abrir e na hora de salvar era complicado, então uma das estratégias que usava no fechamento era ocultar o app e deixar salvando enquanto isso. E na abertura não tinha muito o que fazer... 
Mas isso só começava a doer quando todas as tabelas juntas tinham um tamanho de **100MB**, sim parece pouco(e é nesse momento), mas era coisa de **50mil**(jogando alto) registros em arquivos.

#### E como salva as imagens?

Bem, eu salvava em uma pasta e só colocava o caminho da imagem no campo...
Caso a imagem não fosse encontrada eu exibia uma imagem 404.



## Stack utilizada

**Front-end:** [KixForms](http://www.kixforms.org/)

**Back-end:** [KiXtart](http://kixtart.org/)


## Licença

Pode bagunçar, faz tempo, mas se tiver dado pesoal no meio do código me ajude! 😅

