




#!/bin/bash

# Validate number inputs (1-10)
while true; do
    read -p "Enter a number (1-10): " number
    if [[ "$number" =~ ^[0-9]+$ ]] && (( number >= 1 && number <= 10 )); then
        break
    else
        echo "Invalid input. Please enter a number between 1 and 10."
    fi
done

# Validate table type input ('f' or 'p')
while true; do
    read -p "Do you want a full table or a partial table? (enter 'f' for full, 'p' for partial): " table_type
    if [[ "$table_type" == "f" || "$table_type" == "p" ]]; then
        break
    else
        echo "Invalid input. Please enter 'f' or 'p'."
    fi
done

if [ "$table_type" == "f" ]; then
    # Full table (1-10)
    echo "Multiplication table for $number (1-10):"
    for i in {1..10}; do
        result=$((number * i))
        echo "$number x $i = $result"
    done

elif [ "$table_type" == "p" ]; then
    # Validate all start and the end inputs (1-10 and start <= end)
    while true; do
        # Validate start
        while true; do
            read -p "Enter the start number of the range (1-10): " start
            if [[ "$start" =~ ^[0-9]+$ ]] && (( start >= 1 && start <= 10 )); then
                break
            else
                echo "Invalid input. Please enter a number between 1 and 10."
            fi
        done

        # Validate end
        while true; do
            read -p "Enter the end number of the range (1-10): " end
            if [[ "$end" =~ ^[0-9]+$ ]] && (( end >= 1 && end <= 10 )); then
                break
            else
                echo "Invalid input. Please enter a number between 1 and 10."
            fi
        done

        # Check if start <= end
        if (( start <= end )); then
            break
        else
            echo "Error: Start must be less than or equal to end."
        fi
    done

    # Generate partial table
    echo "Multiplication table for $number ($start to $end):"
    for i in $(seq "$start" "$end"); do
        result=$((number * i))
        echo "$number x $i = $result"
    done
fi
