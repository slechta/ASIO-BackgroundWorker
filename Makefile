
CCC = g++
CCCFLAGS = -Wall -ggdb -std=c++0x -I. -O3 -fpermissive

OBJ =  bgworker.o
BIN =  bgworker
            
LIBS-PROTOCOL = -ludt

all: bgworker

bgworker: $(OBJ)
	$(CCC) $(OBJ) -o $(BIN) -lpthread -lboost_system -lboost_thread

#tells how to make an *.o object file from an *.cpp file
%.o: %.cpp
	$(CCC) -c $(CCCFLAGS) $< -o $@
	
clean::
	rm -f bgwroker.o
	rm -f bgworker
	

