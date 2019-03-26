#! /bin/bash
 
read -p "Your name?  " NAME
read -p "Your e-mail?  " EMAIL

echo -e "name: $NAME \nemail: $EMAIL" 
read -p "Are you ok ? (y/n): " DATA
case "$DATA" in
  [yY]) 
    git config --global user.name "$NAME"
    git config --global user.email $EMAIL
    git config --global credential.helper '!aws codecommit credential-helper $@'
    git config --global credential.UseHttpPath true 
    git config -l

    echo -e "\nplease git clone";;

  [nN]) echo "Please restart script" ;;
esac

   
   
