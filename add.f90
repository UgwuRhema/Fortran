program add_numbers
    implicit none
    real :: num1, num2, sum

    !prompt user for input...
    print *, "Enter the first number: "
    read *, num1

    print *, "Enter the second number: "
    read *, num2

    sum = num1 + num2

    print *, "The sum is: ", sum

end program add_numbers
