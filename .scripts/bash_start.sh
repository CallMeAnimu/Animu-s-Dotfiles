#!/bin/bash
# Config
catnap

echo " "

# Messages
echo "Messages: "
echo "BASH is now running in vi mode."

echo "'trash-cli' is installed:"
echo "'trash-cli' help / trash-help: trash-put, trash-empty, trash-list, trash-restore, trash-rm"
echo " "

# Home Folder & Trash List
cd ~/ && echo "Animu's Home Folder: " && ls -a --color=auto --group-directories-first

echo " "
echo "Current trash contents: "
trash-list
