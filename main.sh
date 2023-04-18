#! /bin/bash

git clone https://github.com/Significant-Gravitas/Auto-GPT.git || exit

cd Auto-GPT || exit

pip install -r requirements.txt || exit

cp .env.template .env || exit

# Prompt user for OpenAI API key using zenity and add to .env file
openai_key=$(zenity --entry --title "Enter OpenAI API key" --text "Please enter your OpenAI API key:")
sed -i "s/OPEN_API_KEY=/OPEN_API_KEY=$openai_key/" .env || exit

# Inform user that installation and configuration completed successfully
zenity --info --title "Installation completed" --text "Installation and configuration completed successfully!" || exit
