#include <stdio.h>
#include <fcntl.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <unistd.h>
#include <stdlib.h>
#include <string.h>

//Bekomme drittes Argument aus der kommandozeile und wandle char pointer in int um
int getBytes(const char **argv, int argc){
                int byte = 0;
                byte = atoi(argv[3]);
                return byte;
        }

int main(int argc, const char* argv[]){
        int b;
        if(argc < 2) {
                 printf("Zu wenig Argumente");
                 return 0;
        }
        //öffne file1
        int file1 = open(argv[1], O_RDONLY);
        //Bekomme byte Anzahl aus der Kommandozeile
        b = getBytes(argv, 3);
        //Erstelle Speicherplatz mit malloc
        char *buff = malloc(sizeof(char) * (b + 1));
        char *buff2 = malloc(sizeof(char) * (b +1 ));
        if (buff == 0){
            printf("Fehler beim Speicher");
        }
        //erstelle oder öffne file 2 falls es schon existiert mit permission für user
        //zum lesen und schreiben (letzten 2 argumente)
        int file2 = open(argv[2], O_CREAT | O_WRONLY | O_RDONLY, S_IRUSR | S_IWUSR);
        
        int offset = lseek(file1, 0, SEEK_END);
        //solange noch kein ende erreicht, schreibe file1 in file2 in b byte Schritten
        int filesize = lseek(file1, 0, SEEK_END);
        int durchlauf = filesize % b;
        int ergebnis = (filesize - durchlauf) / b;
        lseek(file1, 0, SEEK_SET);

        //funktioniert nicht ganz(schreibt einen Schritt zu viel), aber bekomme es nicht besser hin
        while (ergebnis > 0){
            read(file1, buff, b);
            write(file2, buff, b);
            ergebnis = ergebnis - 1;
        }
        //
        while (durchlauf > 0){
            read(file1, buff, 1);
            write(file2, buff, 1);
            durchlauf = durchlauf - 1;
        }
        //read(file1, buff, b); falls nicht alles kopiert werden soll, sondern nur b bytes
        //write(file2, buff, b);



        close(file1);
        close(file2);
        free(buff);


}

