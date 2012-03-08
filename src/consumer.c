/** @file Consumer.c
 ** @brief the takes in character by character produced by producer.c after specified sleep time.
 ** @author Aniket Handa
 ** GNU GPL v3
 ** Ref: W. Richard Stevens' UNIX Network Programming 2nd edition.
 */

#include "shared.h"

void consume_item(char item) {
    printf("Consumed[%d]: %c\n",getpid(),item);
}

int remove_item(int semid, int *shared_buffer) {
    int index = get_buffer_size(shared_buffer) - 1;
    int item = shared_buffer[index];
    shared_buffer[index] = 0x00;
    return item;
}

int main(int argc, const char *argv[])
{
    if(argc!=2)
    {
        perror("\nIncorrect Usage!\n\tUse: Consumer [delay]\n\n\t\tWhere [delay] is sleeping time in secs.");
        exit(EXIT_FAILURE);
    }
    int *shared_buffer = create_shared_mem_buffer();
    int semid = create_semaphore_set();
    
    char item;
    int delay=atoi(argv[1]);
    printf("\n--Configuration-------------------------------\n");
    printf("Delay: %d\n",delay);
    while(1) {
        semop(semid, &downFull, 1);
        semop(semid, &downMutex, 1);
        item = remove_item(semid, shared_buffer);
        //debug_buffer(shared_buffer);
        semop(semid, &upMutex, 1);
        semop(semid, &upEmpty, 1);
        consume_item(item);
        sleep(delay);
    } 
    
    return EXIT_SUCCESS;
}