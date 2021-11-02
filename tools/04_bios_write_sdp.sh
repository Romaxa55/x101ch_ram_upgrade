#/bin/bash
if [ -z "$1" ]
  then
    echo "Use ./bios_dump_sdp.sh <BIOS X101CH>"
fi

if [ ! -f "$1" ]; then
    echo "$1 does not exist."
    exit 1
fi


for f in /tmp/hash.tmp
do
 echo "Processing $f"
 # do something on $f
done

#for var in $variable
#do
	#echo $var
	#dd if=$1 of=../dump_spd_$var  bs=1 count=$((0x100)) skip=$var
	#../spd-tool -i ../dump_spd_$var
# done
