path=$(echo "/$1" | sed -e 's/\\/\//g' -e 's/\([A-Z]\):/mnt\/\l\1/')
echo "cropping files in $path/*.pdf"
#echo "cropping files in::   $1"
for file in $path/*.pdf
do
if [[ $file != *"-crop.pdf"* ]]; then
	file2=$(echo $file | sed 's/\.pdf$/-crop\.pdf$/g')
	#echo "$file -- $file2 $([ ! -f $file2 ]) $([ "$file" -ot "$file2" ])"
	if [ ! -f "$file2" ] || [ "$file" -nt "$file2" ]; then
		pdfcrop "$file"
		echo "cropped $file"
	fi
fi
done
