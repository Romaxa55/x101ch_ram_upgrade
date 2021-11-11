#/bin/bash
if [ -z "$1" ]
  then
    echo "Use ./bios_dump_sdp.sh <BIOS X101CH>"
fi

if [ ! -f "$1" ]; then
    echo "$1 does not exist."
    exit 1
fi

readarray -t variable < /tmp/hash.tmp
cp $1 ../dump_spd_Edited_BIOS.bin

for var in $variable
do
	echo ok
	dd conv=notrunc if=../dump_spd_$var of=../dump_spd_Edited_BIOS.bin bs=1 seek=$var
	#../spd-tool -i ../dump_spd_$var
done
