#include <stdio.h>
#include <fcntl.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <unistd.h>


//Um Konsole für Codelite File zu öffnen und Programm zu benutzen:
//Rechtsklick auf das Projekt, dann open Shell.
//gcc -c FileCopy.c -> gcc FileCopy.o -o FileCopy -> ./FileCopy '*.txt' '*.txt'
int main(int argc, const char* argv[]){

        //Falls kein File zum Lesen angegeben wird -> abbrechen.
        if(argc < 2) {
                 printf("Zu wenig Argumente");
                 return 0;
        }
        
        
        int file1 = open(argv[1], O_RDONLY);
        
        char buff[255];
        
        int file2 = open(argv[2], O_CREAT | O_WRONLY, S_IRUSR | S_IWUSR);
        //Suche bis zum Ende vom File
        int offset = lseek(file1, 0 , SEEK_END);
        //Suche bis 1 Byte vor dem Ende
        lseek(file1, -1, SEEK_END);
        //Solange noch nicht alles gelesen
        while (offset > 0){
            read(file1, buff, 1);
            write(file2, buff, 1);
            //Von der Position aus zwei zurück
            lseek(file1, -2, SEEK_CUR);
            offset--;
        }
        

        //Schließe Files.
        close(file1);
        close(file2);


}
