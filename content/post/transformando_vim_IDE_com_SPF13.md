+++
date = "2016-07-23T12:36:22-03:00"
title = "Potencializar o editor VIM com o SPF13"
description = "Como potencializar o VIM com o plugin SPF13"
draft = false
tags = ["vim", "IDE", "SPF13", "Tutorial", "Open Source", "Terminal Linux", "Hacker"]
topics = ["DevOps", "Open-Source", "Hacking"]
+++

## VIM

> VIM é um editor de textos altamente configurável feito para criar e modificar textos com agiliade e eficiência. Vim trabalha
sobre o CLI (Command Line Interface) e todos sabemos que CLI é muito mais rápido sobre protocolo ssh comparado a GUI (Graphical User Interface).  
Mais detalhes sobre <a href="http://www.vim.org" target="_blank">**VIM**</a>

## SPF13

> SPF13 é um distribuição de plugin e recursos que permite customizar o VIM provendo uma lista de funcionalidades modernas como autocompletar textos,
gestão de configuração integrado ao GIT, tags, padrão de cores entre outros.  
Mais detalhes sobre <a href="http://vim.spf13.com" target="_blank">**SPF13**</a>

Neste tutorial vou mostrar como adicionar a distribuição vim SPF13 que vem com plugins realmente bons e agilizam bastante o trabalho de criar e alterar
textos. Claro que você pode optar por usar ou não os plugins e fica a seu critério definir o que melhor atende a suas expectativas, porém utilizando apenas
o SPF13 já torna tudo mais prático ágil.

**Antes de prosseguir, faça o backup de ~/.vimrc e todos os arquivos customizados do vim que estejam no seu diretório ~/**

Considerando que você já tenha o vim instalado. Caso nao tenha poderá instalar de acordo com sua distribuição linux.

Exemplo nas distribuições baseadas em Debian:

```
$ sudo apt-get install vim 
```
Para instalação atraves do código fonto do VIM veja a documentação <a href="http://vimdoc.sourceforge.net/htmldoc/usr_90.html#install" target ="_blank">**AQUI**</a>

#### Passo 1 - Instalar a distribuição VIM SPF13

Para instalar o pacote SPF13-VIM utilize o instalador automático.  

Execute a linha de comando abaixo no terminal linux

```
curl http://j.mp/spf13-vim3 -L -o - | sh
```
#### Passo 2 - Customização e atualização do pacote SPF13-VIM

O arquivo _~/.vimrc_ não deve ser alterado pois as modificações realizadas pelo SPF13 serão feitas neste arquivo.  
Para qualquer customização local crie os arquivos _~/.vimrc.local_ e _~/.gvimrc.local_.

Por exemplo para sobrescrever da instalação padrão do SPF13-VIM, use:

```
echo colorscheme ir_black  >> ~/.vimrc.local
```

Para atualizar com a ultima versão do pacote SPF13-VIM:

```
cd $HOME/to/spf13-vim/
git pull
vim +BundleInstall! +BundleClean +q
```

**DICA:** Você pode criar no seua arquivo _~/.bashrc_ um _alias_ vimupdateplugins='vim +BundleInstall! +BundleClean! +q'

#### Passo 3 - Começe a utilizar o VIM com os plugins do pacote SPF13

#### Algumas dicas rápidas:

**Copiar e Colar**

Use o mouse para selecionar e colocar o VIM e modo VISUAL automaticamente.  
Copiar: Selecione o texto em modo VISUAL, V ou v, e "+y  
Colar: Em modo NORMAL, coloque o cursor onde deseja colar e "+p

**Plugin NERDTree**

Para ver/esconder o plugin NERDTree para apresentar a janela de arquivos, Ctrl-E  
Atualizar o diretório, em modo NORMAL  
 r     # atualizar o diretório corrente e todos os subdiretórios  
 R     # atualizar todos os diretórios sobre o diretório corrente (root dir)  

**Para mais dicas de uso do SPF13**  
  
<a href="http://vim.spf13.com" target="_blank">**Site SPF13**</a>  






