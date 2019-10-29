#include <stdio.h>
#include <fcntl.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <unistd.h>


//Um Konsole für Codelite File zu öffnen und Programm zu benutzen:
//Rechtsklick auf das Projekt, dann open Shell.
//Umgesetzt mittels system calls
int main(int argc, const char* argv[]){

        //Falls kein File zum Lesen angegeben wird -> abbrechen.
        if(argc < 2) {
                 printf("Zu wenig Argumente");
                 return 0;
        }

        //Öffne File aus dem zu Lesen ist (an erster Stelle übergeben)
        int file1 = open(argv[1], O_RDONLY);
        //Lege Platz an um Daten abzuspeichern.
        char buff[255];
        //Lege neues File an, um Daten zu kopieren und reinzuschreiben.
        int file2 = open(argv[2], O_CREAT | O_WRONLY, S_IRUSR | S_IWUSR);
        //Hänge Text auf file1 ans Ende von File2 an
        lseek(file2, 0, SEEK_END);
        while ((read(file1, buff, 1)) > 0){
                write(file2, buff, 1);
        }

        //Schließe Files.
        close(file1);
        close(file2);


}
