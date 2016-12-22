CC = gcc
CFLAG = -W -Wall
TARGET = test
OBJECTS = test.o test1.o test2.o test3.o 
SOURCES = $(OBJECTS:.o=.c)

all : $(TARGET)

$(TARGET) : $(OBJECTS)
	$(CC) $(CFLAG) -o $@ $^


clean :
	rm -rf *.o

testfiles :
	@echo  $(OBJECTS)
	@echo  $(SOURCES)
