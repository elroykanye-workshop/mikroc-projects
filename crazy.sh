i=0
while read c; do
    if [ $i -le 200 ]; then
        git add $c;
        git commit -m "added sounder n for button n: $c";
    fi
    if [ $i -gt 80 ]; then
        echo $c >> new-commit-list.txt
    fi
    i=$(($i+1))

done < commit-list.txt

cat new-commit-list.txt > commit-list.txt
rm stoopid.txt
rm new-commit-list.txt
i=0
