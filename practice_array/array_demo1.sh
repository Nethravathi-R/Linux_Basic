#!/bin/bash

# To declare a static Arrayr
arr=( “Jayesh “Shivang” “1” “Vipul” “Nishant” “2” )

# To print all elements of the array
echo “All elements of the array:”
echo “${arr[@]}”
echo “${arr[*]}”

# To print the first element
echo “The first element:”
echo “${arr[0]}”
