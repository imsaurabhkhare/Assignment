function guess {
local count=$(ls -a | wc -l)
let count=$count-2
echo $count
}
function input {
read response
if [[ ! $response =~ 0|^[1-9][0-9]*$ ]]
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
echo "guess was to low, try again"
else
echo "guess was to high, try again"
fi
response=$(input)
while [[ $response = "incorrect input" ]]
do
echo "incorrect input"
response=$(input)
done
done
echo "Congratulations! You have guess correct number"
