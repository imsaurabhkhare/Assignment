function guess {
local count=0
for code in $(ls -a)
do
let count=$count+1
done
echo $count
}

function input {
read response
if [[ $response =~ [A-Za-z] ]]
then
echo "incorrect input"
else
echo $response
fi
}

echo "how many file in a directory "
response=$(input)
while [[ $response = "incorrect input" ]]
do
echo "incorrect input"
response=$(input)
done
while [[ $response -ne $(guess) ]]
do
if [[ $response -lt $(guess) ]]
then
echo "guess was to low"
else
echo "guess was to high"
fi
response=$(input)
while [[ $response = "incorrect input" ]]
do
echo "incorrect input"
response=$(input)
done
done
echo "correct guess"
