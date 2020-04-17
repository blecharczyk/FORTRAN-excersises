program main
    
    use naive
    use better
    use dot

    
    implicit none
    integer :: i, e, f
    integer :: matrixSizes(8)
    real (kind = 4), allocatable, dimension(:,:) :: A4, B4, C4
    real (kind =8),allocatable,dimension(:,:) :: A8,B8,C8
    real (kind =16),allocatable,dimension(:,:) :: A16,B16,C16
    real (kind = 4) :: rand4
    real (kind = 8) :: rand8
    real (kind = 16) :: rand16
    real (kind = 4) :: timeStart, timeStop, timeNaive
    
    matrixSizes = [10, 20, 40, 80, 160, 320, 640, 1280]

    open(unit = 1, file = "/home/krzysztof/Pulpit/fortran zad 1/res/kind=4/result4Naive")
    open(unit = 2, file = "/home/krzysztof/Pulpit/fortran zad 1/res/kind=8/result8Naive")
    open(unit = 3, file = "/home/krzysztof/Pulpit/fortran zad 1/res/kind=16/result16Naive")
    open(unit = 4, file = "/home/krzysztof/Pulpit/fortran zad 1/res/kind=4/result4Better")
    open(unit = 5, file = "/home/krzysztof/Pulpit/fortran zad 1/res/kind=8/result8Better")
    open(unit = 6, file = "/home/krzysztof/Pulpit/fortran zad 1/res/kind=16/result16Better")
    open(unit = 7, file = "/home/krzysztof/Pulpit/fortran zad 1/res/kind=4/result4Dot")
    open(unit = 8, file = "/home/krzysztof/Pulpit/fortran zad 1/res/kind=8/result8Dot")
    open(unit = 9, file = "/home/krzysztof/Pulpit/fortran zad 1/res/kind=16/result16Dot")
    open(unit = 10, file = "/home/krzysztof/Pulpit/fortran zad 1/res/kind=4/result4Matmul")
    open(unit = 11, file = "/home/krzysztof/Pulpit/fortran zad 1/res/kind=8/result8Matmul")
    open(unit = 12, file = "/home/krzysztof/Pulpit/fortran zad 1/res/kind=16/result16Matmul")
    

    do i=1,8
        
        allocate(A4(matrixSizes(i), matrixSizes(i)))
        allocate(B4(matrixSizes(i), matrixSizes(i)))
        allocate(C4(matrixSizes(i), matrixSizes(i)))
    
        allocate(A8(matrixSizes(i), matrixSizes(i)))
        allocate(B8(matrixSizes(i), matrixSizes(i)))
        allocate(C8(matrixSizes(i), matrixSizes(i)))

        allocate(A16(matrixSizes(i), matrixSizes(i)))
        allocate(B16(matrixSizes(i), matrixSizes(i)))
        allocate(C16(matrixSizes(i), matrixSizes(i)))
        
        !naive

        ! kind = 4
        do e = 1, matrixSizes(i)
            do f = 1, matrixSizes(i)
                CALL RANDOM_NUMBER(rand4)
                A4(e,f) = rand4
                CALL RANDOM_NUMBER(rand4)
                B4(e,f) = rand4
                
                C4(e,f) = 0
            end do
        end do

        ! kind = 8
        do e = 1, matrixSizes(i)
            do f = 1, matrixSizes(i)
                CALL RANDOM_NUMBER(rand8)
                A8(e,f) = rand8
                CALL RANDOM_NUMBER(rand8)
                B8(e,f) = rand8
                
                C8(e,f) = 0
            end do
        end do

        ! kind = 16
        do e = 1, matrixSizes(i)
            do f = 1, matrixSizes(i)
                CALL RANDOM_NUMBER(rand16)
                A16(e,f) = rand16
                CALL RANDOM_NUMBER(rand16)
                B16(e,f) = rand16
                
                C16(e,f) = 0
            end do
        end do
        
        call cpu_time(timeStart)
        C4=naivemull(A4,B4)
        call cpu_time(timeStop)
        write(1,*) matrixSizes(i), timeStop - timeStart
        
        
        call cpu_time(timeStart)
        C8=naivemull(A8,B8)
        call cpu_time(timeStop)
        write(2,*) matrixSizes(i), timeStop - timeStart
        
        
        call cpu_time(timeStart)
        C16=naivemull(A16,B16)
        call cpu_time(timeStop)
        write(3,*) matrixSizes(i), timeStop - timeStart

        !better

        ! kind = 4
        do e = 1, matrixSizes(i)
            do f = 1, matrixSizes(i)
                CALL RANDOM_NUMBER(rand4)
                A4(e,f) = rand4
                CALL RANDOM_NUMBER(rand4)
                B4(e,f) = rand4
                
                C4(e,f) = 0
            end do
        end do

        ! kind = 8
        do e = 1, matrixSizes(i)
            do f = 1, matrixSizes(i)
                CALL RANDOM_NUMBER(rand8)
                A8(e,f) = rand8
                CALL RANDOM_NUMBER(rand8)
                B8(e,f) = rand8
                
                C8(e,f) = 0
            end do
        end do

        ! kind = 16
        do e = 1, matrixSizes(i)
            do f = 1, matrixSizes(i)
                CALL RANDOM_NUMBER(rand16)
                A16(e,f) = rand16
                CALL RANDOM_NUMBER(rand16)
                B16(e,f) = rand16
                
                C16(e,f) = 0
            end do
        end do
        
        call cpu_time(timeStart)
        C4=betterMull(A4,B4)
        call cpu_time(timeStop)
        write(4,*) matrixSizes(i), timeStop - timeStart
        
        
        call cpu_time(timeStart)
        C8=betterMull(A8,B8)
        call cpu_time(timeStop)
        write(5,*) matrixSizes(i), timeStop - timeStart
        
        
        call cpu_time(timeStart)
        C16=betterMull(A16,B16)
        call cpu_time(timeStop)
        write(6,*) matrixSizes(i), timeStop - timeStart

        !dot

        ! kind = 4
        do e = 1, matrixSizes(i)
            do f = 1, matrixSizes(i)
                CALL RANDOM_NUMBER(rand4)
                A4(e,f) = rand4
                CALL RANDOM_NUMBER(rand4)
                B4(e,f) = rand4
                
                C4(e,f) = 0
            end do
        end do


        ! kind = 8
        do e = 1, matrixSizes(i)
            do f = 1, matrixSizes(i)
                CALL RANDOM_NUMBER(rand8)
                A8(e,f) = rand8
                CALL RANDOM_NUMBER(rand8)
                B8(e,f) = rand8
                
                C8(e,f) = 0
            end do
        end do


        ! kind = 16
        do e = 1, matrixSizes(i)
            do f = 1, matrixSizes(i)
                CALL RANDOM_NUMBER(rand16)
                A16(e,f) = rand16
                CALL RANDOM_NUMBER(rand16)
                B16(e,f) = rand16
                
                C16(e,f) = 0
            end do
        end do
        
        call cpu_time(timeStart)
        C4=dotMull(A4,B4)
        call cpu_time(timeStop)
        write(7,*) matrixSizes(i), timeStop - timeStart
        
        call cpu_time(timeStart)
        C8=dotMull(A8,B8)
        call cpu_time(timeStop)
        write(8,*) matrixSizes(i), timeStop - timeStart
        
        call cpu_time(timeStart)
        C16=dotMull(A16,B16)
        call cpu_time(timeStop)
        write(9,*) matrixSizes(i), timeStop - timeStart

        !matmul

        ! kind = 4
        do e = 1, matrixSizes(i)
            do f = 1, matrixSizes(i)
                CALL RANDOM_NUMBER(rand4)
                A4(e,f) = rand4
                CALL RANDOM_NUMBER(rand4)
                B4(e,f) = rand4
                
                C4(e,f) = 0
            end do
        end do


        ! kind = 8
        do e = 1, matrixSizes(i)
            do f = 1, matrixSizes(i)
                CALL RANDOM_NUMBER(rand8)
                A8(e,f) = rand8
                CALL RANDOM_NUMBER(rand8)
                B8(e,f) = rand8
                
                C8(e,f) = 0
            end do
        end do


        ! kind = 16
        do e = 1, matrixSizes(i)
            do f = 1, matrixSizes(i)
                CALL RANDOM_NUMBER(rand16)
                A16(e,f) = rand16
                CALL RANDOM_NUMBER(rand16)
                B16(e,f) = rand16
                
                C16(e,f) = 0
            end do
        end do

        call cpu_time(timeStart)
        C4=matmul(A4,B4)
        call cpu_time(timeStop)
        write(10,*) matrixSizes(i), timeStop - timeStart
        
        call cpu_time(timeStart)
        C8=matmul(A8,B8)
        call cpu_time(timeStop)
        write(11,*) matrixSizes(i), timeStop - timeStart
        
        call cpu_time(timeStart)
        C16=matmul(A16,B16)
        call cpu_time(timeStop)
        write(12,*) matrixSizes(i), timeStop - timeStart

        
        if (allocated(A4)) deallocate(A4)
        if (allocated(B4)) deallocate(B4)
        if (allocated(C4)) deallocate(C4)

        if (allocated(A8)) deallocate(A8)
        if (allocated(B8)) deallocate(B8)   
        if (allocated(C8)) deallocate(C8)
    
        if (allocated(A16)) deallocate(A16)
        if (allocated(B16)) deallocate(B16)
        if (allocated(C16)) deallocate(C16)
        

        
    end do


    
end program