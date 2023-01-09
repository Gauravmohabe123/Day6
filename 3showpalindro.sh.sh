#!/bin/bash

# Function to check if a number is prime
is_prime() {
    n=$1
    if (( n < 2 )); then
        return 1
    fi
    for (( i=2; i<=n/2; i++ )); do
        if (( n % i == 0 )); then
            return 1
        fi
    done
    return 0
}

# Function to get the palindrome of a number
get_palindrome() {
    n=$1
    rev=$(echo "$n" )
    echo "$rev"
}

# Function to check if the palindrome of a number is also prime
is_palindrome_prime() {
    n=$1
    palindrome=$(get_palindrome "$n")
    is_prime "$palindrome"
    return $?
}

# Read a number from the user
echo "Enter a number: "
read number

# Check if the number is prime
if is_prime "$number"; then
    # Check if the palindrome of the number is also prime
    if is_palindrome_prime "$number"; then
        echo "$number is a prime palindrome."
    else
        echo "$number is a prime, but its palindrome is not."
    fi
else
    echo "$number is not a prime."
fi
