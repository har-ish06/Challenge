a=$(curl http://169.254.169.254/latest/meta-data)
d="{"
for i in ${a[*]};

        b=$(curl -s http://169.254.169.254/latest/meta-data/$i)
        c='"'
        c+=$i
        c+='"'
        c+=": "
        c+='"'
        c+=$b
        c+='"'
        c+=", "
        d+=$c

done

d+="}"

printf "$d"
