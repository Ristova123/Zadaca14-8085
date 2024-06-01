# Zadaca14-8085

16 битен уред комуницира со 8 битен поспор уред под
софтверска контрола на 8085. Да се нацрта хардверско
поврзување и софтверска поддршка за следното сценарио.
a. 16 битниот уред не праќа нов податок додека не добие
потврда од µP.
b. Спориот 8 битен уред му сигнализира на процесорот за
некоректно извршен пренос по што тој податок
повторно треба да се препрати.
c. Процесорот му сигнализира на 8 битниот уред кога е
поставен податок за него.
d. 16 битниот уред за секој податок испраќа прекин кон
µP. 

**Resenie:**


![Screenshot (1)](https://github.com/Ristova123/Zadaca14-8085/blob/main/Diagram%2014.png)

Главна Програма:
```
VRTI: MVI А,11X00XXX ;бесконечна јамка
 SIM
 JNP VRTI
 END
2Ch: CALL SERVIS_55 ;брзиот праќа податок
 RET
34h: CALL SERVIS_65 ;спориот уред пријавува грешка;
 RET
SERVIS_55: MVI A,01X00XXXb
 SIM
MVI A,XXXXXX10b ; се праќа горниот бајт
 OUT 01h
OUT 02h
 NOP
 MVI A,XXXXXX01b ;се праќа долниот бајт
 OUT 01h
OUT 02h
RET
SERVIS_65: MVI A,01X00XXXb
 SIM
MVI A,XXXXXX10b ; се праќа горниот бајт
 OUT 01h
OUT 02h
 VRTI1: MVI C, 100d
DCR C
JNZ VRTI1
 MVI A,XXXXXX01b ;се праќа долниот бајт
 OUT 01h
OUT 02h
 VRTI2: MVI C, 100d
DCR C
JNZ VRTI2
RET 


```

 ![Screenshot (2)](https://github.com/Ristova123/Zadaca14-8085/blob/main/Code%2014.png)
 ![Screenshot (3)](https://github.com/Ristova123/Zadaca14-8085/blob/main/Code%2014%202.png)
 
**Develop by:**

[Tamara Ristova ](https://github.com/Ristova123)


**Subject**

Microcomputer's systems

**Built With**

This project is built using the following tools:

- [8085 simulator](https://github.com/8085simulator/8085simulator.github.io?tab=readme-ov-file): Assembler and emulator for the Intel 8085 microprocessor.

**Getting Started**

To get a local copy up and running, follow these steps.

**Prerequisites**

In order to run this project you need:

A working computer
Connection to internet
Setup

**How to Run**

To run the program, you need an 8085 emulator or assembler. You can use emulators like DOSBox or TASM (Turbo Assembler). Here's how to run the program using 8085 simulator:

1. Download and install 8085 simulator from [here](https://github.com/8085simulator/8085simulator.github.io?tab=readme-ov-file).
2. Clone this repository to your local machine.
3. Open 8085 simulator and load the `Zadaca14 code.asm` file.
4. Assemble the code by pressing the Assemble button.
5. Run the program by pressing the Run button or by pressing F10.
