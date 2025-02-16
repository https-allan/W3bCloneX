#!/bin/zsh

show_banner () {
  echo ""
  echo -e "\t\t\t███╗   ███╗ █████╗ ███████╗██╗ █████╗ ██████╗  ██████╗ ██╗   ██╗"
  echo -e "\t\t\t████╗ ████║██╔══██╗██╔════╝██║██╔══██╗██╔══██╗██╔═══██╗╚██╗ ██╔╝"
  echo -e "\t\t\t██╔████╔██║███████║█████╗  ██║███████║██████╔╝██║   ██║ ╚████╔╝ "
  echo -e "\t\t\t██║╚██╔╝██║██╔══██║██╔══╝  ██║██╔══██║██╔══██╗██║   ██║  ╚██╔╝  "
  echo -e "\t\t\t██║ ╚═╝ ██║██║  ██║██║     ██║██║  ██║██████╔╝╚██████╔╝   ██║   "
  echo -e "\t\t\t╚═╝     ╚═╝╚═╝  ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝╚═════╝  ╚═════╝    ╚═╝   "
  echo -e ""
  echo -e "                            \t\tCreated by Mafiaboy0authx                      "
}
show_banner

echo -n "\n Digite a URL do site: "
read url 

echo -n "\n 📂 Nome da pasta para salvar os arquivos: "
read folder 

wget --mirror --page-requisites --convert-links --adjust-extension --no-parent -P "$folder" "$url"

if [[ $? -eq 0 ]]; then
  echo "\n ✅ Clone Complete: Target site successfully cloned into folder \"$folder_name\".\n"
else
  echo "\n ❌ Clone Failed: Invalid URL or inaccessible target. Check the address and retry.\n"
fi
