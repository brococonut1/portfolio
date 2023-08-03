#!/bin/bash

# Read a password.
echo -e "\e[91menter the password"

read -s password

# Get length of password

len="${#password}"

# Check password length is greater than 8 characters

if test $len -ge 8 ;then

    # Check password includes numbers

    echo "$password" | grep -q [0-9]
    if test $? -ne 1 ; then

        # Check password includes captital letters

        echo "$password" | grep -q [A-Z]

        if test $? -eq 0 ;then

            # Check password includes lower case letters

            echo "$password" | grep -q [a-z]

            if test "$?" -eq 0 ;then

                 # Check password includes symbols

                echo "$password" | grep -q [$,@,#,%]

                if test "$?" -eq 0 ;then

                    # If all of the above are true then it prints Strong Password

                    echo "Strong password"

                else

                # otherwise prints week password missing special characters

                    echo "weak password include special chars"

                fi

            else

                # or prints missing lower case characters

                echo "weak password include lower case char"

            fi

        else

            # or prints missing capital characters

            echo "weak password include capital char"

        fi

    else

        # or prints missing numbers

        echo "please include the numbers in password it is weak password"

    fi

else

    # or prints length is too short

    echo "password length should be greater than or equal 8 hence weak password"

fi

