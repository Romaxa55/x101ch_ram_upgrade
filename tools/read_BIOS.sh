#/bin/bash
if [ -z "$1" ]
  then
    echo "Use ./bios_dump_sdp.sh <BIOS X101CH>"
fi

if [ ! -f "$1" ]; then
    echo "$1 does not exist."
    exit 1
fi

variable=$(od -v -t x1 $1 | sed 's/[^ ]* *//' | tr '\012' ' ' | grep -b -i -o "92 10 0B 03" | sed 's/:.*/\/3/' | bc)
#variable=$(xxd -u $1 | grep "9210 0B03" |  sed 's/:.*//')
IFS=', ' read -r -a array <<< "$variable"

echo $variable > /tmp/hash.tmp

for var in $variable
do
	#echo $var
	dd if=$1 of=../dump_spd_$var  bs=1 count=$((0x100)) skip=$var
	../spd-tool -i ../dump_spd_$var
done
