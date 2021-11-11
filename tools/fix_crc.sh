#/bin/bash
for var in ../dump_spd_*
do
if [ ! -f "$var" ]; then
    echo "SPD files does not exist."
    echo "Use ./read_BIOS.sh <BIOS X101CH>"
    exit 1
fi
./spd-tool -i $var --fix-crc -o $var
done
