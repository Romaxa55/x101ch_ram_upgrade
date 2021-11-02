#/bin/bash
if [ -z "$1" ]
  then
    echo "Use ./bios_dump_sdp.sh <BIOS X101CH>"
fi

if [ ! -f "$1" ]; then
    echo "$1 does not exist."
    exit 1
fi

variable=$(xxd -u $1 | grep "9210 0B03" |  sed 's/:.*//')
IFS=', ' read -r -a array <<< "$variable"

for var in $variable
do
		dd if=$1 of=../spd_$var  bs=1 count=$((0x100)) skip=$((0x$var))
done
