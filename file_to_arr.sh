 
	#!/bin/bash
	#    ./file_to_arr.sh font.otf font_grigory
  
  
	echo "Read to:" $1 "    Save in:" $2".h"
	exec 3<"$1"    
	  
	IFS=""                  
	LANG=C                    
	
	name_f="${2}.h"
	value=${2/./_}
	header="SUNsung_${value}_h"

	echo "/*/ CREATE: " $(date +"%m-%d-%Y") " /*/" > "$name_f"
	echo -e "#ifndef $header\n#define $header\n\n" >> "$name_f"
	printf "const byte ${value}[] = {" >> "$name_f"

	bytes=0
	while read -u 3 -d  '' -r -n 1 char    
	                                                                  
	do ((bytes++))

	     if [[ $bytes != 1 ]]
	     then
	       printf ", %d" "'$char" >> "$name_f"
	       else
	         printf "%d" "'$char" >> "$name_f"
	         fi
	done


printf "};\n" >> "$name_f"
echo -e "const int ${value}_size_arr = $bytes;\n\n" >> "$name_f"
echo "#endif //$header" >> "$name_f"
