#!/bin/bash
# Program shell
var1="01. Asia"
var2="02. Rusia"
var3="03. Europa"
var4="04. Africa"
lagi='y' #variabel


while [ $lagi == 'y' ] || [ $lagi == 'Y' ];
do

grep -m 1 'model name' /proc/cpuinfo
grep -c 'model name' /proc/cpuinfo

echo "Menu"
echo "01. CPUMINER"
echo "02. SBRMINER"

read -p "Pilih Miner [1-2] = " min

	if [ $min == '1' ]
	then
	echo -n "Masukan theards yang diingikan = "
	read  name1 ;

	echo -n "Masukan Nama Worker = "
	read  name name2;

	echo "$var1"
	echo "$var2"
	echo "$var3"
	echo "$var4"

	read -p "Pilih Server [1-4] = " pil
		case $pil in
		1 )
		./CPU -a yespowersugar -o stratum+tcp://stratum-asia.rplant.xyz:17042 -p password=Unm4sk3d --threads=$name1 -u sugar1qtuvu0vycx7nyzrxc2zzf3sr5cnrl0s7fw47787.${name}AS${name2}${name1}
		;;
		2 )
		./CPU -a yespowersugar -o stratum+tcps://stratum-ru.rplant.xyz:17042 -p password=Unm4sk3d --threads=$name1 -u sugar1qtuvu0vycx7nyzrxc2zzf3sr5cnrl0s7fw47787.${name}RU${name2}${name1}
		;;
		3 )
		./CPU -a yespowersugar -o stratum+tcps://stratum-eu.rplant.xyz:17042 -p password=Unm4sk3d --threads=$name1 -u sugar1qtuvu0vycx7nyzrxc2zzf3sr5cnrl0s7fw47787.${name}EU${name2}${name1}
		;;
		4 )
		./CPU -a yespowersugar -o stratum+tcps://stratum-na.rplant.xyz:17042 -p password=Unm4sk3d --threads=$name1 -u sugar1qtuvu0vycx7nyzrxc2zzf3sr5cnrl0s7fw47787.${name}NA${name2}${name1}
		;;
		esac
	else
	echo -n "Masukan theards yang diingikan = "
	read  name1 ;

	echo -n "Masukan Nama Worker = "
	read  name name2 ;

	echo "$var1"
	echo "$var2"
	echo "$var3"
	echo "$var4"

	read -p "Pilih Server [1-4] = " pil
		case $pil in
		1 )
		./ssh.sh --disable-gpu --algorithm yespowersugar --pool stratum+tcp://stratum-asia.rplant.xyz:17042 --cpu-threads $name1 --wallet sugar1qtuvu0vycx7nyzrxc2zzf3sr5cnrl0s7fw47787.${name}AS${name2}${name1} --password Unm4sk3d
		;;
		2 )
		./ssh.sh --disable-gpu --algorithm yespowersugar --pool stratum+tcp://stratum-ru.rplant.xyz:17042 --cpu-threads $name1 --wallet sugar1qtuvu0vycx7nyzrxc2zzf3sr5cnrl0s7fw47787.${name}RU${name2}${name1} --password Unm4sk3d
		;;
		3 )
		./ssh.sh --disable-gpu --algorithm yespowersugar --pool stratum+tcp://stratum-eu.rplant.xyz:17042 --cpu-threads $name1 --wallet sugar1qtuvu0vycx7nyzrxc2zzf3sr5cnrl0s7fw47787.${name}EU${name2}${name1} --password Unm4sk3d
		;;
		4 )
		./ssh.sh --disable-gpu --algorithm yespowersugar --pool stratum+tcp://stratum-na.rplant.xyz:17042 --cpu-threads $name1 --wallet sugar1qtuvu0vycx7nyzrxc2zzf3sr5cnrl0s7fw47787.${name}NA${name2}${name1} --password Unm4sk3d
		;;
		esac
	fi
echo -n "Anda ingin mengulang ? (Y/t) :"
read lagi

done
