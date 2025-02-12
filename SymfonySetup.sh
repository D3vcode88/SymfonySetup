#!/bin/bash


echo "Bienvenue sur SymfonySetup"

menu="Quel op√erations voulez-vous effectue ?"
options=("Verification des modules installer"
	"Installer et configurer un projet avec ou sans docker"
	"Quitter")

select option in "${options[@]}";
do 
	case $REPLY in
	1)
		echo "Module installer :"
		;;
	2)
		echo "Veuilliez nomme votre projet :"
		while [ -z $nameProject ]
		do
			echo "Comment va s'appeler votre projet ?"
			read nameProject
		done

		echo "Votre projet s'appel : $nameProject"
		;;
	3)
		echo "Au revoir !"
		break
		;;
	*)
		echo "Saisi invalide, veuilliez reessayer !"
	esac
done
