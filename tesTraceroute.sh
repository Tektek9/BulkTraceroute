pemulung() {
    array=()
    while IFS= read -r baris
    do
        array+=("$baris")
    done < "$1"
}


echo -e "\n\nTes Traceroute All Server Cpanel"
pemulung "data/servercPanel.txt"

for wakwaw in "${array[@]}"
do
    echo -e "\n$wakwaw"
    wkwkw=$(traceroute $wakwaw 2>/dev/null | head -n 1 | awk '{ print $4 }')
    if [ -z $wkwkw ]; then
       echo "Tidak resolve"
    else
       ngedit=${wkwkw::-1}
       hasil=$(echo $ngedit 2>/dev/null | sed -e 's/(//g' -e 's/)//g')
       echo "$hasil"
    fi
done

echo -e "\n\nTes Traceroute All Server Directadmin"
pemulung "data/serverDirectAdmin.txt"
for hai in "${array[@]}"
do
    echo -e "\n$hai"
    wkwkw=$(traceroute $hai 2>/dev/null | head -n 1 | awk '{ print $4 }')
    if [ -z $wkwkw ]; then
       echo "Tidak resolve"
    else
       ngedit=${wkwkw::-1}
       hasil=$(echo $ngedit 2>/dev/null | sed -e 's/(//g' -e 's/)//g')
       echo "$hasil"
    fi
done

echo -e "\n\nTes Traceroute All Server Virtualizor"
pemulung "data/serverVirtualizor.txt"
for uwu in "${array[@]}"
do
    echo -e "\n$uwu"
    wkwkw=$(traceroute $uwu 2>/dev/null | head -n 1 | awk '{ print $4 }')
    if [ -z $wkwkw ]; then
       echo "Tidak resolve"
    else
       ngedit=${wkwkw::-1}
       hasil=$(echo $ngedit 2>/dev/null | sed -e 's/(//g' -e 's/)//g')
       echo "$hasil"
    fi

done
echo -e "\n"