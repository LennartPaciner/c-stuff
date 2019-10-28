#include <stdio.h>
#include <fcntl.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <unistd.h>



int main(int argc, const char* argv[]){

        if(argc < 2) {
                 printf("Zu wenig Argumente");
                 return 0;
        }

        int file1 = open(argv[1], O_RDONLY);
        char buff[255];
        int file2 = open(argv[2], O_CREAT | O_WRONLY, S_IRUSR | S_IWUSR);

        while ((read(file1, buff, 1)) > 0){
                write(file2, buff, 1);
        }




        close(file1);
        close(file2);


}
