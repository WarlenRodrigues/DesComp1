#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>

int main () {
    // LOAD R0, #0
    int second_unit;
    int second_decimal;
    // STORE 0x00, R0
    // STORE 0x01, R0
    int minute_unit;
    int minute_decimal;
    // STORE 0x02, R0
    // STORE 0x03, R0
    int hour_unit;
    int minute_decimal; 
    // STORE 0x04, R0
    // STORE 0x05, R0


    // scanf("%d", &hour);
    // scanf("%d", &minute);
    // scanf("%d", &second);

    // LOOP:
    while (1) {
        // LOAD R0, #1
        // ADD R0, 0x00
        // STORE 0x00, R0
        second += 1;
        // LOAD R1, #60
        // STORE 0x10, R1 
        // CMP R1, 0x10
        // JE INCMIN
        if (second == 60) {
        // INCMIN:
            minute += 1;
            second = 0;
        }
        // JUMP LOOP
        
        if (minute == 60) {
            hour += 1;
            minute = 0;
        }
        if (hour == 24) {
            hour = 1;
            minute = 0;
            second = 0;
        }

        printf("\n Clock");

        printf("\n %d: %d: %d", hour, minute, second);

        sleep(1);
    }
}

