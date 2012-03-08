/** @file Producer.c
 ** @brief the producer takes in string from commandline and produces character by character after specified sleep time.
 ** @author Aniket Handa
 ** GNU GPL v3
 ** Ref: W. Richard Stevens' UNIX Network Programming 2nd edition.
 */

#include "shared.h"

void insert_item(int item, int semid, int *shared_buffer) {
    int index = get_buffer_size(shared_buffer);
    shared_buffer[index] = item; 
}

int main(int argc, const char *argv[])
{
    if(argc!=3)
    {
        perror("\nIncorrect Usage!\n\tUse: Producer [string] [delay]\n\n\t\tWhere [string] is the array to be produced and [delay] is sleeping time in secs.");
        exit(EXIT_FAILURE);
    }
    
    int *shared_buffer = create_shared_mem_buffer();
    int semid = create_semaphore_set();
    
    clear_buffer(shared_buffer); // prepare buffer for jobs
    
    char item;
    int i=0;
    int len;
    int delay=atoi(argv[2]);
    for (len=0; argv[1][len]!='\0'; len++);
    printf("\n--Configuration-------------------------------\n");
    printf("String: %s\n",argv[1]);
    printf("String length: %d\n",len);
    printf("Delay: %d\n",delay);
    
    while(1) {
        item = argv[1][i];
        semop(semid, &downEmpty, 1);
        semop(semid, &downMutex, 1);
        insert_item(item, semid, shared_buffer);
        //debug_buffer(shared_buffer);
        semop(semid, &upMutex, 1);
        semop(semid, &upFull, 1);
        printf("Produced[%d]: %c\n",getpid(),item);
        i++;
        if (i==len) {
            break;
        }
        sleep(delay);
    }
    
    return EXIT_SUCCESS;
}