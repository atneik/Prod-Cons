all: consumer producer

consumer: consumer.o shared.o
	gcc consumer.o shared.o -o consumer

producer: producer.o shared.o
	gcc producer.o shared.o -o producer

producer.o: producer.c shared.c shared.h
	gcc -c producer.c shared.c

consumer.o: consumer.c shared.c shared.h
	gcc -c consumer.c shared.c

shared.o: shared.c shared.h
	gcc -c shared.c shared.h

clean:
	rm -rf *o consumer
	rm -rf *o producer
