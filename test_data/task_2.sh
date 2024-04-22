search_path="/home/sierra/repository/assignment006/test_data"
output_file="asia_sale.csv"
echo "Region,Country,Total Revenue,Total Cost,Total Profit" > "$output_file"
for file in "$search_path"/*Sales*; do
    awk -F',' '$1 == "Asia" {print $1,$2,$12,$13,$14}' "$file" >> "$output_file"
done

echo "Asia sales data has been appended to $output_file"
cat "$output_file"

