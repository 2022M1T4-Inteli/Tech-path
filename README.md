# Inteli - Instituto de Tecnologia e Liderança 

<p align="center">
<a href= "https://www.inteli.edu.br/"><img src="https://www.inteli.edu.br/wp-content/uploads/2021/08/20172028/marca_1-2.png" alt="Inteli - Instituto de Tecnologia e Liderança" border="0"></a>
</p>

# Tech Path
## Eligius

## Integrantes: 

- [Felipe Silberberg](https://www.linkedin.com/in/felipe-silberberg-111998230/ "Felipe Silberberg")
- [Jordan Andrade](https://github.com/jordan-acs "Jordan Andrade")
- [Uelinton Rocha](https://www.linkedin.com/in/uelitonrocha/ "Uelinton Rocha")
- [Vitor Augusto](https://github.com/dtonavitor "Vitor Augusto")
- [Wagner](https://github.com/WagnerBarcelos "Wagner")

## Descrição
💡Este jogo busca aprimorar o 'approach' do Inteli para estudantes de ensino médio que pensam, ou nunca pensaram, em estudar alguma das áreas da computação, além de captar outros estudantes que não buscavam o Inteli.
<br><br>
O jogo Tech Path tem como objetivo instruir e orientar jovens de ensino médio e jovens que querem se graduar na área da tecnologia a conhecer melhor os cursos de Engenharia da Computação, Engenharia de Software, Ciência da Computação e Sistemas de Informação, que são cursos oferecidos pelo Inteli (Instituto de Tecnologia e Liderança). Desse modo, espera-se que ao final do jogo, os praticantes saibam o propósito de cada curso, quais as diferenças entre eles e também quais são as possíveis áreas de atuação após a graduação.
<br><br>
O jogo irá se passar em um contexto pós-apocalíptico, em que uma inteligência artificial foi criada para ajudar o planeta Terra, mas concluiu que o problema do mundo eram os próprios humanos, fazendo com que ela hackeasse os códigos dos mísseis nucleares e os lançasse pelos continentes. Nesse panorama, uma parcela social será formada em um bunker tecnológico, onde todos exercem funções específicas para a manutenção dessa sociedade. Diante disso, pela falta de pessoas nas principais áreas da computação (Engenharia da Computação, Engenharia de Software, Ciência da Computação e Sistemas de Informação), um adolescente residente desse lugar deverá passar por testes (minijogos) que irão o nortear para alguma função.
<br><br>

## 🛠 Estrutura de pastas

- Raiz<br><br>
| --> documentos<br>
  &emsp;| --> antigos<br>
  &emsp;| GDD_T4_M1_G4_Eligius_Projeto_Inteli_TECH_PATH_v_1_0.pdf<br>
| --> executáveis<br>
  &emsp;| --> Windows<br>
  &emsp;| --> Html<br>
| --> imagens<br>
| --> src<br>
| readme.md<br>

A pasta raiz contém um arquivo principal:

- <b>readme.md</b>, que consiste em um guia geral sobre o projeto.

E, também, 4 subpastas que se organizam da seguinte forma:

- <b>documentos</b>, ondem encontram-se todos os documentos relacionados ao projeto, sobretudo o Game Design Document (GDD), com uma subpasta <b>antigos</b> que armazena versões anteriores dos mesmos.

- <b>executáveis</b>, ondem encontram-se todos os executáveis do jogo, prontos para rodar, com 2 pastas: uma para binários windows e uma para a web.

- <b>imagens</b>, ondem encontram-se algumas imagens relacionadas ao jogo, sistema e logos, prontos para serem utilizados e visualizados.

- <b>src</b>, onde encontra-se todo o código fonte do jogo/sistema, pronto para para ser baixado e modificado.

## 🛠 Instalação

<b>Windows:</b>

Não há instalação, apenas executável. Baixe os arquivos disponíveis em https://github.com/2022M1T4/Projeto4/tree/main/execut%C3%A1veis/Windows e execute "TechPath.exe" como qualquer outro programa.

```
Observe que é necessário que o arquivo "TechPath.pck" esteja
no mesmo diretório que "TechPath.exe" para que o jogo inicie
corretamente.
```

<b>HTML:</b>

Não há instalação! Baixe os arquivos disponíveis em https://github.com/2022M1T4/Projeto4/tree/main/execut%C3%A1veis/HTML e execute-o como uma página da web (através de algum navegador).

```sh
Dependendo de suas configurações de firewall, talvez seja necessário
instaurar um web service como xampp ou wampp para que o jogo rode lo-
calmente.
```

## 📈 Exemplo de uso

<img src="imagens/menu.png" alt="TELA DE MENU" border="0">

Para iniciar o jogo deve-se clicar com o mouse no botão "Jogar"


Este modelo pode ser copiado e utilizado à vontade.

Através da cópia/clone/ download do repositório, altere os dados do readme.md e carregue os arquivos de seu projeto.

## 💻 Configuração para desenvolvimento

Para abrir este projeto você necessita das seguintes ferramentas:

-<a href="https://godotengine.org/download"> Godot</a>

Instruções para a configuração do ambiente de desenvolvimento:
```

1) Clone o repositório.
2) Abra a engine de desenvolvimento (godot).
3) No gerenciador de projetos inicial, clique no botão "importar" e, em seguida, no botão "navegar".
4) Navegue até o repositório clonado e abra a pasta "src".
5) Selecione o arquivo "project.godot" e em seguida clique no botão "abrir".
6) Pronto. O seu ambiente de desenvolvimento está configurado.

```

## 🗃 Histórico de lançamentos

A cada atualização os detalhes devem ser lançados aqui.

* 0.2.2 - 13/04/2022
    * Versão final do jogo
    * Minigames de Ciência da Computação e Engenharia de Software não podem ser jogados novamente após acerto
    * MUDANÇA: Minigame de Engenharia da Computação com dicas para trazer sentido para o jogador
    * MUDANÇA: Atualização de comentários dos códigos
* 0.2.1 - 01/04/2022
    * MUDANÇA: Atualização do minigame de Engenharia da Computação (Mudança de funcionamento)
    * MUDANÇA: Atualização de comentários dos códigos
    * MUDANÇA: Atualização do cenário para facilitar a orientação do jogador
    * ADD: Adiciona minigame de Engenharia de Software
    * ADD: Cutscene do jogo
    * ADD: Adiciona gráfico no final do jogo com pontuação
    * REMOVE: Remove cena inicial com o personagem apenas andando
* 0.2.0 - 18/03/2022
    * MUDANÇA: Atualização de comentários dos códigos
    * ADD: Adiciona minigames de Sistema de Informação, Ciência da Computação e Engenharia da Computação
* 0.1.1 - 04/03/2022
    * MUDANÇA: Adição de comentários nos códigos
    * ADD: Adiciona 'button.gd' e 'button.tscn'
    * ADD: Adiciona 'get_tree().quit()'
    * ADD: Adiciona 'get_tree().change_scene("res://scenes/menu.tscn")'
* 0.1.0 - 18/02/2022
    * O primeiro lançamento adequado
    * Apenas uma cena com o personagem se movimentando
* 0.0.1 - 01/02/2022
    * Trabalho em andamento

## 📋 Licença/License

<p xmlns:cc="http://creativecommons.org/ns#" xmlns:dct="http://purl.org/dc/terms/"><a property="dct:title" rel="cc:attributionURL" href="https://github.com/Spidus/Teste_Final_1">MODELO GIT INTELI</a> by <a rel="cc:attributionURL dct:creator" property="cc:attributionName" href="https://www.yggbrasil.com.br/vr">INTELI, VICTOR BRUNO ALEXANDER ROSETTI DE QUIROZ</a> is licensed under <a href="http://creativecommons.org/licenses/by/4.0/?ref=chooser-v1" target="_blank" rel="license noopener noreferrer" style="display:inline-block;">Attribution 4.0 International<img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/cc.svg?ref=chooser-v1"><img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/by.svg?ref=chooser-v1"></a></p>

## 🎓 Referências

Este Readme foi baseado no template do Prof. Victor Bruno Alexander Rosetti de Quiroz do Instituto de Tecnologia e Liderança - Inteli.

Imagens, música e arte utilizadas no jogo que não foram desenvolvidas pelo grupo:

[Música Caves of Down](https://pixabay.com/music/ambient-caves-of-dawn-10376/)
<br>[2D Sci-Fi Platform Builder](https://f0x0ne.itch.io/2d-sci-fi-platform-builder)
<br>[Tech Dungeon](https://trevor-pupkin.itch.io/tech-dungeon-roguelite)
<br>[Character Sheet](http://pixelartmaker.com/art/3762b5722d32af4)
<br>[Robô NPC](https://www.gratispng.com/png-srwy50/)
<br>[Nutella](https://wifflegif.com/gifs/706478-pixel-art-nutella-gif)
<br>[Lata de tomate](https://www.pinterest.es/pin/48835977179360104/)
<br>[Multidão de pessoas](https://www.dreamstime.com/crowd-people-wearing-masks-quarantine-virus-threat-pixel-art-illustration-concept-image175925617)
<br>[Robô Cutscene](https://www.google.com/imgres?imgurl=https%3A%2F%2Fi.redd.it%2Fovytvmxi2hh41.png&imgrefurl=https%3A%2F%2Fwww.mybooksolutions.com%2Frobot-pixel-art&tbnid=77UNhwIQ0dww_M&vet=12ahUKEwiAxf2AlI_3AhU2N7kGHaLZDzkQMyhhegUIARCxAQ..i&docid=NGbiClPVZbThDM&w=1280&h=2048&q=robot%20pixel%20art&ved=2ahUKEwiAxf2AlI_3AhU2N7kGHaLZDzkQMyhhegUIARCxAQ)
<br>[Mísseis](https://www.shutterstock.com/pt/image-vector/vector-pixel-art-missile-isolated-721755184)
<br>[Laboratório](https://www.artstation.com/artwork/NWR8N)
<br>[cenário cutscene](https://br.pinterest.com/pin/416020084329209132/)
