CC = gcc
CFLAG = -W -Wall -g # -g 디버깅 정보
					# -Wall 모든 정보 표시
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

dep :
	gccmakedep $(SOURCES)
