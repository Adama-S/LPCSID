for i in $(find . -type f )
	do 
		#echo $i
		count=$(cat $i | wc -l)
		#echo $count
		if [ $count -gt 10 ]
			then echo "$i;$count"
			mv $i $(echo $i | sed 's/f/g/g')
		fi
done




# Edit

for file in $(find . -type f )
	do 
		#echo $file
		count=$(cat $file | wc -l)
		#echo $count
		if [ echo "$(find . -type d)" | grep -q " " ]
			then mv $(find . -type d) $( $(find . -type d) | sed -e "s/ /_/g" )
		fi
		
		if [ $count -gt 10 ]
			then echo "$file;$count"
			mv $file $(echo $file | sed -n 's/f/g/g')
		fi
done

