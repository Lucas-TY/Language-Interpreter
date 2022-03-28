# ./grading/grade.sh skeleton/myproject.tgz  ref/quandary grading/simplified-with-calls-public.dat  examples
# skeleton/quandary ./examples/test.q -10
#./grading/grade.sh skeleton/myproject.tgz  ref/quandary grading/basic-unchecked-public.dat  examples
cd skeleton
make clean
make submission
make
cd ..
ref/quandary ./examples/test.q -10
cd skeleton
make clean
cd ..
