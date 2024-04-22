# num_rows=400000
# for ((i=1; i<=num_rows; i++)); 
# do
#     echo "This is line no $i" >> task3_data.txt
# done


read -p "Enter a number (n): " n
if ! [[ "$n" =~ ^[0-9]+$ ]]; then
  echo "Error: Input is not a valid number."
  exit 1
fi
output_file="task3_output.txt"
for ((i=1; i<=400000; i++)); do
   if (( i % n == 0 )); then
       echo "This is line no $i" >> "$output_file"
   fi
done
echo "Lines with indices multiple of $n have been written to $output_file"
