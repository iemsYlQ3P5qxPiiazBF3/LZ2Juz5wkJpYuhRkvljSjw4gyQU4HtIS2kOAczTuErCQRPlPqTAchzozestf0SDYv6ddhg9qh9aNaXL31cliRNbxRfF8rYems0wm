#!/bin/bash
IFS="
 "
for i in $(cat "$1"|sed 's/\;/ /g');do
	i=( $(echo "$i"|tr ',' ' ') )
	case "${i[0]}" in
		"XOR")
		echo "((${i[1]}^=${i[2]}))"
		;;
		"ADD")
		echo "((${i[1]}+=${i[2]}))"
		;;
		"DEF")
		echo "${i[1]}=\"${i[2]}\""
		;;
		"SUB")
		echo "((${i[1]}-=${i[2]}))"
		;;
		"MUL")
		echo "((${i[1]}*=${i[2]}))"
		;;
		"DIV")
		echo "((${i[1]}/=${i[2]}))"
		;;
		"WNT")
		echo "while [ \"\$${i[1]}\" != \"${i[2]}\" ];do"
		;;
		"DNE")
		echo "done"
		;;
		"NOP")
		echo "#"
		;;
		"EQU")
		echo "[ \"\$${i[1]}\" == \"\$${i[2]}\" ]&&{"
		;;
		"CEQ")
		echo "}"
		;;
		"DIS")
		echo "echo \"\$${i[1]}\""
		;;
		"RNG")
		echo "${i[1]}=\$(bc<<<\"ibase=A;obase=A;\$(tr -cd '0-9'</dev/urandom|head -c50)%${i[1]}\")"
		;;
		"ILT")
		echo "[ \"\$${i[1]}\" -lt \"${i[1]}\" ]&&{"
		;;
		"IGT")
		echo "[ \"\$${i[1]}\" -gt \"${i[1]}\" ]&&{"
		;;
	esac
done>"0.sh"
