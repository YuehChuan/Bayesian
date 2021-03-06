CC=g++
#CFLAGS= -std=c++11 -c -g -Wall
CFLAGS= -c -Ofast -march=native -Wall
#CFLAGS= -c -Ofast -march=native -mavx2 -Rpass=loop-vectorize -Rpass-analysis=loop-vectorize -Wall
SOURCE=main.cc machinelearning.cc bayesian.cc naivebayesian.cc bayesiannetwork.cc
LDFLAGS=
OBJECTS= $(SOURCE:.cc=.o)

EXECUTABLE= bayesian


all:  $(SOURCE) $(EXECUTABLE)


$(EXECUTABLE): $(OBJECTS)
	$(CC) $(LDFLAGS) $(OBJECTS) -o $@

.cc.o:
	$(CC) $(CFLAGS) $< -o $@


clean: 
	rm -f *.o $(EXECUTABLE)
