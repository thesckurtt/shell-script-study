#!/bin/bash
# echo "hello" $(whoami);
# Definir cores

PINK='\033[38;5;213m'
NC='\033[0m' # Sem cor

# Exibir arte colorida
echo -e "${PINK} _          _                     ${NC}"
echo -e "${PINK}| |        | |                    ${NC}"
echo -e "${PINK}| |     ___| |__   ___  _ __  ___ ${NC}"
echo -e "${PINK}| |    / _ \\  _ \\ / _ \\|  _ \\/ __|${NC}"
echo -e "${PINK}| |___|  __/ | | | (_) | | | \\__ \\"
echo -e "${PINK}|______\\___|_| |_|\\___/|_| |_|___/${NC}"
echo ""

prompt_input() {
    local prompt_input="$1"
    user_input_url=""
    type_file=".pdf"

    echo -ne "${prompt_input}"
    read -r user_input_url

    # eval curl -G "${user_input_url}" | grep -oP "href=\"\K[^\"]+${type_file}" > "${teste}"
    # output=$(eval curl -G "${user_input_url}" | grep -oP "href=\"\K[^\"]+${type_file}")
    output=($(eval curl -G "${user_input_url}" | grep -oP "href=\"\K[^\"]+${type_file}"))

    # Acessa o primeiro elemento do array
    echo "${output[0]}"
}


prompt_input "url@target:~$ "

# echo ""
# echo "${user_input_url}"
# $("curl --help")


# --------------------------------------- #
# 
# Projeto utilizando o curl para 
# fazer downloads em massa em diretórios
# 
# By: Mailan Sckurtt
# 
# --------------------------------------- #

# https://www.cin.ufpe.br/~vbom/arquivos/PHP/

# commit test
# Curl com regex
# curl -G https://www.cin.ufpe.br/\~vbom/arquivos/PHP/ | grep -oP 'href="\K[^"]+\.pdf'

