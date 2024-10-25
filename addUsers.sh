#!/bin/bash
# J'ai eu besoin de chercher la syntaxe ${!variable} ,  de réverifier la syntaxe variable=$(($varible + 1)) et internet pour débuger mon code. 
nombre_user=$#
user=1
# vérification de la présence d'arguments
if [ $# -lt 1 ]
    then
        echo "Il manque les noms d'utilisateurs en argument - Fin du script"
        exit 1
    else

        #Met une condition d'arrêt à la boucle, nombre_user devient le nombre d'argument restant à traiter
        while [ $nombre_user -ne 0 ];
        do
            #Pour chaque utilisateur à créer, il doit y avoir une vérification de l'existence de ce dernier 
            if cat /etc/passwd | grep ${!user} >/dev/null
                then 
                    echo  "L'utilisateur ${!user} existe déjà"
                        exit 1
                else
                    #me permet d'appeler $ et le numéro de l'argument 
                    useradd ${!user} 
                        # je vérifie si la création a eu lieu 
                        if cat /etc/passwd | grep ${!user} >/dev/null
                        then
                            echo "L'utilisateur ${!user} a été crée"
                        else 
                            echo "Erreur à la création de l'utilisateur ${!user}"
                        fi
                    # ajoute 1 d'incrément pour passer à l'argument suivant, dans la 1ère boucle user passe de $1 a $2 
                    user=$(($user + 1))
                    # Je soustrais 1 au nombre d'arguments à traiter pour m'assurer que la boucle se termine
                    nombre_user=$(($nombre_user - 1))
                fi
        done
fi        


