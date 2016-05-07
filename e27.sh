#!/bin/bash

function inicializar
{
	arreglo=()
	tam=0
}

function agregar_elem
{
	arreglo[$tam]=$1
	tam=`expr $tam + 1`
}

function eliminar_elem
{
	if [ $1 -le $tam ]; then
		if [ $1 -eq $tam ]; then
			unset arreglo[$1]
			tam=`expr $tam - 1`
		else
			unset arreglo[$1]
		fi	
	fi
}

inicializar
agregar_elem 1
agregar_elem 2
echo "${arreglo[$@]}"
eliminar_elem 0

