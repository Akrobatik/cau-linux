is_positive_integer() {
  local input="$1"
  if [[ $input =~ ^[0-9]+$ && $input -gt 0 ]]; then
    return 0
  else
    return 1
  fi
}

if [ $# -ne 2 ]; then
  echo "Invalid input"
  exit 1
fi

if ! is_positive_integer "$1" || ! is_positive_integer "$2"; then
  echo "Input must be greater than 0"
  exit 1
fi

for ((i = 1; i <= $1; i++)); do
  for ((j = 1; j <= $2; j++)); do
    printf "$i*$j=$(($i * $j))\t"
  done
  echo
done

