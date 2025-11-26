output_name="$(basename -- "$1" .drawio).pdf"
output_file="./../figures/drawio/$output_name"

# Export the file to pdf
drawio --export --format pdf --output $output_file --crop --border 16 $1

# Add new pdf to git
git add $output_file