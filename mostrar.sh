#!/bin/bash
# Comentarios acerca de lo que hace el script
# Siempre comento mis scripts, si no hoy lo hago
# y mañana ya no me acuerdo de lo que quise hacer








echo "----PRIMER SCRIPT----"
echo "--INGRESE POR TECLADO UNA OPCION--"

vector=()

select opcion in "Ingresar su nombre y apellido, agregarlo a los datos" "Mostrar directorio actual" "Mostrar espacio de todos los discos" "Ingresar a un directorio" "Leer sus datos"
do
    case $opcion in
        "Ingresar su nombre y apellido, agregarlo a los datos")
            echo "Introduzca su nombre y apellido:"
            read nombre apellido
            vector+=("Nombre: $nombre $apellido")
            ;;
        "Mostrar directorio actual")
            echo "Su directorio actual es:"
            pwd #Muestra el directorio actual
        ;;

        "Mostrar espacio de todos los discos")
            df -h
        ;;

        "Ingresar a un directorio")
            #Mostrar un directorio:
            echo "Escriba un directorio: "
            read directorio
            cd "$directorio" || return # Se pone || return o || exit por si el cd falla
            echo "Entro al directorio: $(ls)"
        ;;

        "Leer sus datos")
            vector+=("Su usuario es $(whoami)")
            vector+=("Fecha y hora actual: $(date)")
            for i in "${vector[@]}"
            do
                echo "$i"
            done
        ;;

        *) 
            exit 0
        ;;
    esac
done
