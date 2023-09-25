read -p "Enter your name: " NAME
echo "Hello $NAME, welcome to my program"

read -p "Enter your age: " AGE
echo "You are $AGE years old"   

touch ${NAME}_${AGE}.txt

ls

# Count the number of files in the current directory and output the result.
ls -l | wc -l

# Take a list of numbers as input from the user and output the sum of those numbers.
read -p "Enter a list of numbers: " NUMBERS
SUM=0
for i in $NUMBERS
do
    SUM=$((SUM + i))
done
echo "The sum of the numbers is: $SUM"

# Output a random number between 1 and 100.
echo $((RANDOM % 100 + 1))

# Create a backup of a specified file by copying it to a backup directory with a timestamp in the filename.
read -p "Enter a file name: " FILENAME
TIMESTAMP=$(date +%Y-%m-%d_%H-%M-%S)
cp $FILENAME ./backup/${FILENAME}_${TIMESTAMP}

# Check if a website is online and output a message indicating whether it is up or down.
read -p "Enter a website: " WEBSITE
if curl --output /dev/null --silent --head --fail "$WEBSITE"; then
    echo "$WEBSITE is up"
else
    echo "$WEBSITE is down"
fi

# Convert a temperature in Celsius to Fahrenheit, using input from the user.
read -p "Enter a temperature in Celsius: " CELSIUS
FAHRENHEIT=$(echo "scale=2; $CELSIUS * 1.8 + 32" | bc)
echo "$CELSIUS degrees Celsius is $FAHRENHEIT degrees Fahrenheit"


# Output the contents of a file in reverse.
read -p "Enter a file name: " input
# Use the 'rev' command to reverse the string
reversed=$(echo "$input" | rev)

# Print the reversed string
echo "Reversed: $reversed"