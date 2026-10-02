program calculator
    implicit none
    
    ! Declare variables
    real :: num1, num2, result
    character(len=1) :: operator
    character(len=100) :: line
    logical :: running
    
    running = .true.
   
    print *, 'My Fortran Calcultor'
    print *, 'Availbale operations: +, -, /, *'
    do while (running)
        print *
        print *, 'Enter expression (e.g., 5 + 3):'
        read(*,'(A)') line
        
        ! Check for quit command
        if (trim(line) == 'q' .or. trim(line) == 'Q') then
            running = .false.
            cycle
        end if
        
        ! Parse the input
        read(line, *, err=100) num1, operator, num2
        
        ! Perform calculation, switch-like operations
        select case (operator)
            case ('+')
                result = num1 + num2
            case ('-')
                result = num1 - num2
            case ('*')
                result = num1 * num2
            case ('/')
                if (num2 == 0.0) then
                    print *, 'Error: Division by zero!'
                    cycle
                end if
                result = num1 / num2
            case default
                print *, 'Error: Unknown operator "', operator, '"'
                print *, 'Use: + - * /'
                cycle
        end select
       
        !fixed display
        print '(A, F10.4, A, F10.4, A, F10.4)', &
              'Result: ', num1, ' ', operator, ' = ', result
        
        cycle
        
100     continue
        print *, 'Error: Invalid input format!'
        print *, 'Please use format: number operator number'
        print *, 'Example: 5 + 3'
    end do
    
    print *
    print *, 'Thanks for using the fortran Calculator!'
    print *, 'Goodbye!'
    
end program calculator
