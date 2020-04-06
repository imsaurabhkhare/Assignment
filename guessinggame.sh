function guess {
local count=0
for code in $(ls)
do
let count=$count+1
done
echo $count
}
echo "how many file in a directory "
read response
while [[ $response -ne $(guess) ]]
do
if [[ $response -lt $(guess) ]]
then
echo "guess was to low"
read response
else
echo "guess was to high"
read response
fi
done
echo "currect guess"
