echo "number of nodes"
sinfo -o %N -N |sort|uniq | wc -l

echo
echo "number of CPUs (T = total)"
sinfo -o %C # num of cpus

echo
echo "total RAM (GiB)"
echo $( sinfo -No '%m' | paste -sd+ | bc) /1024 | bc

echo
echo "number of GPUs"
sinfo -o '%D:%G' | grep gpu | sed -E 's/^([0-9]+):.*gpu:[^:]+:([0-9]+).*/\1 * \2/'  | paste -sd+  | bc

echo
echo "total GPU VRAM (GiB)"
sinfo -o '%D:%G' | grep gpu | sed -E 's/^([0-9]+):.*gpu:[^:]+:([0-9]+).*min-vram:no_consume:([0-9]+).*/\1 * \2 * \3/' | grep -v mi100 | paste -sd+  | bc


