gfortran -c main.f -o main.o
gfortran -c calc_f.f -o calc_f.o
gfortran -o main main.o calc_f.o
main
