CC			= g++
FLAGS		=
CFLAGS		= -g -O2

OBJ_FILE	= main.o lifxLAN.o
EXE_FILE	= lifxlan

${EXE_FILE}: ${FLAGS} ${OBJ_FILE}
	${CC} ${FLAGS} -o ${EXE_FILE} ${OBJ_FILE}

main.o: main.cpp
	${CC} -c main.cpp

lifxLAN.o: lifxLAN.cpp
	${CC} -c lifxLAN.cpp


clean:
	rm -f ${OBJ_FILE} ${EXE_FILE}
