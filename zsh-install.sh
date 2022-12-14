#!/bin/bash
# Script de instalação - ZSH shell
# Autor: ErickRock
# Descrição: Instalação do Oh-my-zsh shell padrão

cd ~ || exit

for comando in "add-apt-repository ppa:git-core/ppa" "apt-get update -q" "apt-get upgrade -yq" 
do

    echo "\033[0;32m Iniciando comando\033[0m \033[1;33m$comando\033[0m..."
    if sudo $comando
    then
        echo "\033[0;32m SUCESSO\033[0m"
    else
        echo "\033[0;31m FALHA ao executar comando\033[0m \033[1;33m$comando\033[0m..."
        exit 1
    fi
done

for pacote in git zsh
do
    echo "\033[0;32m Iniciando instalação do pacote\033[0m \033[1;33m$pacote\033[0m: "
    if sudo apt-get install -yq $pacote
    then
        echo "\033[0;32m SUCESSO\033[0m"
    else
        echo "\033[0;31m FALHA. Tentando recuperar quebra de pacotes\033[0m"
        if sudo apt-get install -f
        then
            echo "\033[0;32m Sucesso ao recuperar pacotes quebrados\033[0m"
        else
            echo "\033[0;31m Falha ao recuperar pacotes quebrados\033[0m"
        fi
    fi
done

# Verifica se existe o zsh no sistema...
if command -v zsh
then
    # Se sim, altera a shell padrão do usuário para o ZSH
    sudo chsh -s "$(command -v zsh)" "$USER"
else
    # Senão, exibe mensagem de erro e sai
    echo "\033[0;32m Não foi encontrado o executável do ZSH no sistema, saindo com erro...\033[0m"
    exit 1
fi

echo "\033[0;32m Instalação do Git e ZSH concluída com Êxito!!\033[0m"
echo "\033[0;32m Feche o terminal e abra novamente!!\033[0m"

return
