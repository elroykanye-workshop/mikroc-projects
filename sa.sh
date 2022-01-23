find > stoopid.txt
echo "moasndon" > commit-list.txt
while read p; do
    if [ -d $p ]; then
        echo "is directory"
    else
        echo $p >> commit-list.txt
    fi
done < stoopid.txt