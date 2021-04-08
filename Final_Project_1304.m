
%ECE-1304-001 Spring 2019
%Project #Final Project 
%Name: Dana Palmer
%Date: 05/06/2019


%EXTRA NOTES PLEASE READ: 
%link to presentation on Youtube: https://youtu.be/P_sy_6olUrU
%link to project video demonstration on Youtube: https://youtu.be/zfukBqc4Be0


clear %clearing 
close all
clc

%locating arduino
a=arduino('COM3','Uno','Libraries','shiftRegister');

%locating each pin on arduino for IC 74HC595 Shift register
dataPin = 'D8';
clockPin = 'D9'; 
latchPin = 'D10';
resetPin = 'D11';
register = shiftRegister(a,'74HC595',dataPin,clockPin,latchPin,resetPin); %declaring shift register
sequenceTable = tril(ones(64)); %sequence table
    
for x=1:100 %looping everything 100 times 
 %prompt for user input with instructions
prompt =input('Please enter an input:\n(''Red'', ''yellow'', ''Green'',''Light Blue'',''Purple, ''Blue'',''white'', ''Rainbow'',''Flash'',''Rainbow Road'')\nNote: Can also turn off lights with ''Off''\nOr enter ''button'' to use buttons: ','s');

 %if user types in button then excecute each button for a different color
 %or pattern
if strcmp(prompt,'button')||strcmp(prompt,'button input')||strcmp(prompt,'Button')||strcmp(prompt,'Buttons')||strcmp(prompt,'buttons')
   sprintf("Push down any button for (3 seconds) to turn on a different color or LED pattern. \n 1st Button = Rainbow Road\n 2nd Button = Flash\n 3rd Button = Red\n 4th Button = Purple\n 5th Button = Rainbow\n" )
   pause(5) %added a pause so it can pause before reading user input for each button (it needs this becuase it would immediately read 0 and not execute.)
    button1='D7';%declaring each button location on arduino 
    button2='D6';
    button3='D5';
    button4='D4';
    button5='D3';
B1=readDigitalPin(a,button1); %reading button1 on arduino for Rainbow Road LED pattern
B2 =readDigitalPin(a,button2);   %reading button2 on arduino for Flash LED pattern
B3 = readDigitalPin(a,button3); %reading button3 on arduino for Red lights
B4 = readDigitalPin(a,button4); %reading button4 on arduino for purple lights
B5 = readDigitalPin(a,button5); %reading button5 on arduino for Rainbow lights
    if B1==1 && B2==0 && B3==0 &&B4==0 && B5==0%if Button1 is on and the rest are off then turn on Rainbow Road LED pattern
        sprintf('1st button was pressed: Rainbow Road LED pattern excecuting 20 times...\n')
 for count2= 1:20 %for loop for Rainbow Road will excecute 20 times if above is true
 RainbowRoad1 = [1 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0]; 
write(register, RainbowRoad1(1,:),'uint32')
pause(0.05)
 RainbowRoad2 = [1 0 0  1 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0]; 
write(register, RainbowRoad2(1,:),'uint32')
pause(0.05)
RainbowRoad3 = [1 0 0  1 0 0  1 1 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0]; 
write(register, RainbowRoad3(1,:),'uint32')
pause(0.05)
RainbowRoad4 = [1 0 0  1 0 0  1 1 0  1 1 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0]; 
write(register, RainbowRoad4(1,:),'uint32')
pause(0.05)
RainbowRoad5 = [1 0 0  1 0 0  1 1 0  1 1 0  0 1 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0]; 
write(register, RainbowRoad5(1,:),'uint32')
pause(0.05)
RainbowRoad6 = [1 0 0  1 0 0  1 1 0  1 1 0  0 1 0  0 1 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0]; 
write(register, RainbowRoad6(1,:),'uint32')
pause(0.05)
RainbowRoad7 = [1 0 0  1 0 0  1 1 0  1 1 0  0 1 0  0 1 0  0 1 1  0 0 0  0 0 0  0 0 0  0 0]; 
write(register, RainbowRoad7(1,:),'uint32')
pause(0.05)
RainbowRoad7 = [1 0 0  1 0 0  1 1 0  1 1 0  0 1 0  0 1 0  0 1 1  0 1 1  0 0 0  0 0 0  0 0]; 
write(register, RainbowRoad7(1,:),'uint32')
pause(0.05)
RainbowRoad8 = [1 0 0  1 0 0  1 1 0  1 1 0  0 1 0  0 1 0  0 1 1  0 1 1  1 0 1  0 0 0  0 0]; 
write(register, RainbowRoad8(1,:),'uint32')
pause(0.05)
RainbowRoad9 = [1 0 0  1 0 0  1 1 0  1 1 0  0 1 0  0 1 0  0 1 1  0 1 1  1 0 1  1 0 1  0 0]; 
write(register, RainbowRoad9(1,:),'uint32')
pause(0.05)
RainbowRoad10 = [1 0 0  1 0 0  1 1 0  1 1 0  0 1 0  0 1 0  0 1 1  0 1 1  1 0 1  0 0 0  0 0]; 
write(register, RainbowRoad10(1,:),'uint32')
pause(0.05)
RainbowRoad11 = [1 0 0  1 0 0  1 1 0  1 1 0  0 1 0  0 1 0  0 1 1  0 1 1  0 0 0  0 0 0  0 0]; 
write(register, RainbowRoad11(1,:),'uint32')
pause(0.05)
RainbowRoad12 = [1 0 0  1 0 0  1 1 0  1 1 0  0 1 0  0 1 0  0 1 1  0 0 0  0 0 0  0 0 0  0 0]; 
write(register, RainbowRoad12(1,:),'uint32')
pause(0.05)
RainbowRoad13 = [1 0 0  1 0 0  1 1 0  1 1 0  0 1 0  0 1 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0]; 
write(register, RainbowRoad13(1,:),'uint32')
pause(0.05)
RainbowRoad14 = [1 0 0  1 0 0  1 1 0  1 1 0  0 1 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0]; 
write(register, RainbowRoad14(1,:),'uint32')
pause(0.05)
RainbowRoad15 = [1 0 0  1 0 0  1 1 0  1 1 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0]; 
write(register, RainbowRoad15(1,:),'uint32')
pause(0.05)
RainbowRoad16 = [1 0 0  1 0 0  1 1 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0]; 
write(register, RainbowRoad16(1,:),'uint32')
pause(0.05)
RainbowRoad17 = [1 0 0  1 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0]; 
write(register, RainbowRoad17(1,:),'uint32')
pause(0.05)
RainbowRoad18 = [1 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0]; 
write(register, RainbowRoad18(1,:),'uint32')
pause(0.05)
RainbowRoad19 = [0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0]; 
write(register, RainbowRoad19(1,:),'uint32')
pause(0.05)
RainbowRoad20 = [0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  1 0 0  0 0]; 
write(register, RainbowRoad20(1,:),'uint32')
pause(0.05)
RainbowRoad20 = [0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  1 0 0  1 0 0  0 0]; 
write(register, RainbowRoad20(1,:),'uint32')
pause(0.05)
RainbowRoad21 = [0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  1 1 0  1 0 0  1 0 0  0 0]; 
write(register, RainbowRoad21(1,:),'uint32')
pause(0.05)
RainbowRoad22 = [0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  1 1 0  1 1 0  1 0 0  1 0 0  0 0]; 
write(register, RainbowRoad22(1,:),'uint32')
pause(0.05)
RainbowRoad23 = [0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 1 0  1 1 0  1 1 0  1 0 0  1 0 0  0 0]; 
write(register, RainbowRoad23(1,:),'uint32')
pause(0.05)
RainbowRoad24 = [0 0 0  0 0 0  0 0 0  0 0 0  0 1 1  0 1 0  1 1 0  1 1 0  1 0 0  1 0 0  0 0]; 
write(register, RainbowRoad24(1,:),'uint32')
pause(0.05)
RainbowRoad25 = [0 0 0  0 0 0  0 0 0  0 1 0  0 1 1  0 1 1  1 1 0  1 1 0  1 0 0  1 0 0  0 0]; 
write(register, RainbowRoad25(1,:),'uint32')
pause(0.05)
RainbowRoad26 = [0 0 0  0 0 0  0 1 0  0 1 1  0 1 1  0 1 0  1 1 0  1 1 0  1 0 0  1 0 0  0 0]; 
write(register, RainbowRoad26(1,:),'uint32')
pause(0.05)
RainbowRoad26 = [0 0 0  1 0 1  0 1 0  0 1 1  0 1 1  0 1 0  1 1 0  1 1 0  1 0 0  1 0 0  0 0]; 
write(register, RainbowRoad26(1,:),'uint32')
pause(0.05)
RainbowRoad27 = [1 0 1  1 0 1  0 1 0  0 1 1  0 1 1  0 1 0  1 1 0  1 1 0  1 0 0  1 0 0  0 0]; 
write(register, RainbowRoad27(1,:),'uint32')
pause(0.05)
RainbowRoad28 = [0 0 0  1 0 1  0 1 0  0 1 1  0 1 1  0 1 0  1 1 0  1 1 0  1 0 0  1 0 0  0 0]; 
write(register, RainbowRoad28(1,:),'uint32')
pause(0.05)
RainbowRoad29 = [0 0 0  0 0 0  0 1 0  0 1 1  0 1 1  0 1 0  1 1 0  1 1 0  1 0 0  1 0 0  0 0]; 
write(register, RainbowRoad29(1,:),'uint32')
pause(0.05)
RainbowRoad30 = [0 0 0  0 0 0  0 0 0  0 1 1  0 1 1  0 1 0  1 1 0  1 1 0  1 0 0  1 0 0  0 0]; 
write(register, RainbowRoad30(1,:),'uint32')
pause(0.05)
RainbowRoad31 = [0 0 0  0 0 0  0 0 0  0 0 0  0 1 1  0 1 0  1 1 0  1 1 0  1 0 0  1 0 0  0 0]; 
write(register, RainbowRoad31(1,:),'uint32')
pause(0.05)
RainbowRoad32 = [0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 1 0  1 1 0  1 1 0  1 0 0  1 0 0  0 0]; 
write(register, RainbowRoad32(1,:),'uint32')
pause(0.05)
RainbowRoad33 = [0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  1 1 0  1 1 0  1 0 0  1 0 0  0 0]; 
write(register, RainbowRoad33(1,:),'uint32')
pause(0.05)
RainbowRoad34 = [0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  1 1 0  1 0 0  1 0 0  0 0]; 
write(register, RainbowRoad34(1,:),'uint32')
pause(0.05)
RainbowRoad35 = [0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  1 0 0  1 0 0  0 0]; 
write(register, RainbowRoad35(1,:),'uint32')
pause(0.05)
RainbowRoad36 = [0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  1 0 0  0 0]; 
write(register, RainbowRoad36(1,:),'uint32')
pause(0.05)
RainbowRoad37 = [0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0]; 
write(register, RainbowRoad37(1,:),'uint32')
pause(0.05)
 end
              elseif B1==0 && B2==1 && B3==0 && B4==0 && B5==0 %if all buttons off except for button2 on then turn on flash LED pattern
         sprintf('2nd button was pressed...Flash LED pattern excecuting 20 times on\n')
for count =1:20 %for loop for Flash LED pattern
   red= [1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0];
 write(register, red(1,:),'uint32');
 pause(0.05);
yellow=[1 1 0 1 1 0 1 1 0 1 1 0 1 1 0 1 1 0 1 1 0 1 1 0 1 1 0 1 1 0 1 1];
write(register,yellow(1,:),'uint32');
pause(0.05);
green=[0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 ];
 write(register, green(1,:),'uint32');
 pause(0.05)
  lightblue =[0 1 1 0 1 1 0 1 1 0 1 1 0 1 1 0 1 1 0 1 1 0 1 1 0 1 1 0 1 1 0 1];
    write(register,lightblue(1,:),'uint32');
    pause(0.05)
  blue = [0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0];
  write(register, blue(1,:),'uint32');
  pause(0.05)
  purple = [1 0 1 1 0 1 1 0 1 1 0 1 1 0 1 1 0 1 1 0 1 1 0 1 1 0 1 1 0 1 1 0];
 write(register, purple(1,:),'uint32');
 pause(0.05);
 white=  [1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1];
write(register,white(1,:),'uint32');
pause(0.05);
end 
         elseif B1==0 && B2==0 && B3==1 && B4==0 && B5==0 %if button three on then turn on red
             sprintf('3rd button was pressed...Red lights on\n') 
            red=  [1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0]; %0 represents node off and 1 represents node on I manually programmed each node becuase it is easier to make patterns and mixed colors directly on matlab
 write(register, red(1,:),'uint32'); %writing to register if excecuted
 elseif B1==0 && B2==0 && B3==0 && B4==1 && B5==0  %if Button4 on then turn on purple    
   sprintf('4th button was pressed...Purple lights on\n')
 purple = [1 0 1 1 0 1 1 0 1 1 0 1 1 0 1 1 0 1 1 0 1 1 0 1 1 0 1 1 0 1 1 0];
 write(register, purple(1,:),'uint32'); %writing to register if excecuted
    elseif B1==0 && B2==0 && B3==0 && B4==0 && B5==1
        sprintf('5th button was pressed...Rainbow lights on\n')
        rainbow = [1 0 0  1 0 0  1 1 0  1 1 0  0 1 0  0 1 0  0 1 1  0 1 1  1 0 1  1 0 1  0 0]; 
write(register, rainbow(1,:),'uint32')  
elseif B1==0 && B2==0 &&B3==0 && B4==0 && B5==0  % if no buttons pressed then turn off lights
       sprintf('turning off lights...no button was pressed\n')
       reset(register) %turing lights off
    end

%Flash LED loop 
elseif strcmp(prompt,'flash')||strcmp(prompt,'Flash')
    sprintf('\nFlash is executing 20 times....')
 for count =1:20 %for loop for Flash LED pattern
   red= [1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0];
 write(register, red(1,:),'uint32');
 pause(0.05);
yellow=[1 1 0 1 1 0 1 1 0 1 1 0 1 1 0 1 1 0 1 1 0 1 1 0 1 1 0 1 1 0 1 1];
write(register,yellow(1,:),'uint32');
pause(0.05);
green=[0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 ];
 write(register, green(1,:),'uint32');
 pause(0.05)
  lightblue =[0 1 1 0 1 1 0 1 1 0 1 1 0 1 1 0 1 1 0 1 1 0 1 1 0 1 1 0 1 1 0 1];
    write(register,lightblue(1,:),'uint32');
    pause(0.05)
  blue = [0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0];
  write(register, blue(1,:),'uint32');
  pause(0.05)
  purple = [1 0 1 1 0 1 1 0 1 1 0 1 1 0 1 1 0 1 1 0 1 1 0 1 1 0 1 1 0 1 1 0];
 write(register, purple(1,:),'uint32');
 pause(0.05);
 white=  [1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1];
write(register,white(1,:),'uint32');
pause(0.05);
 end
 
 %rainbow Road LED Pattern loop
elseif strcmp(prompt,'rainbow road')||strcmp(prompt,'Rainbow Road')
    sprintf('\nRainbow Road is executing 20 times....')
for count2= 1:20 %for loop for rainbow road will excecute if above is user input
 RainbowRoad1 = [1 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0]; 
write(register, RainbowRoad1(1,:),'uint32') %writing to register
pause(0.05) %pausing between each transition for 0.05 of a second
 RainbowRoad2 = [1 0 0  1 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0]; 
write(register, RainbowRoad2(1,:),'uint32')
pause(0.05)
RainbowRoad3 = [1 0 0  1 0 0  1 1 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0]; 
write(register, RainbowRoad3(1,:),'uint32')
pause(0.05)
RainbowRoad4 = [1 0 0  1 0 0  1 1 0  1 1 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0]; 
write(register, RainbowRoad4(1,:),'uint32')
pause(0.05)
RainbowRoad5 = [1 0 0  1 0 0  1 1 0  1 1 0  0 1 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0]; 
write(register, RainbowRoad5(1,:),'uint32')
pause(0.05)
RainbowRoad6 = [1 0 0  1 0 0  1 1 0  1 1 0  0 1 0  0 1 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0]; 
write(register, RainbowRoad6(1,:),'uint32')
pause(0.05)
RainbowRoad7 = [1 0 0  1 0 0  1 1 0  1 1 0  0 1 0  0 1 0  0 1 1  0 0 0  0 0 0  0 0 0  0 0]; 
write(register, RainbowRoad7(1,:),'uint32')
pause(0.05)
RainbowRoad7 = [1 0 0  1 0 0  1 1 0  1 1 0  0 1 0  0 1 0  0 1 1  0 1 1  0 0 0  0 0 0  0 0]; 
write(register, RainbowRoad7(1,:),'uint32')
pause(0.05)
RainbowRoad8 = [1 0 0  1 0 0  1 1 0  1 1 0  0 1 0  0 1 0  0 1 1  0 1 1  1 0 1  0 0 0  0 0]; 
write(register, RainbowRoad8(1,:),'uint32')
pause(0.05)
RainbowRoad9 = [1 0 0  1 0 0  1 1 0  1 1 0  0 1 0  0 1 0  0 1 1  0 1 1  1 0 1  1 0 1  0 0]; 
write(register, RainbowRoad9(1,:),'uint32')
pause(0.05)
RainbowRoad10 = [1 0 0  1 0 0  1 1 0  1 1 0  0 1 0  0 1 0  0 1 1  0 1 1  1 0 1  0 0 0  0 0]; 
write(register, RainbowRoad10(1,:),'uint32')
pause(0.05)
RainbowRoad11 = [1 0 0  1 0 0  1 1 0  1 1 0  0 1 0  0 1 0  0 1 1  0 1 1  0 0 0  0 0 0  0 0]; 
write(register, RainbowRoad11(1,:),'uint32')
pause(0.05)
RainbowRoad12 = [1 0 0  1 0 0  1 1 0  1 1 0  0 1 0  0 1 0  0 1 1  0 0 0  0 0 0  0 0 0  0 0]; 
write(register, RainbowRoad12(1,:),'uint32')
pause(0.05)
RainbowRoad13 = [1 0 0  1 0 0  1 1 0  1 1 0  0 1 0  0 1 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0]; 
write(register, RainbowRoad13(1,:),'uint32')
pause(0.05)
RainbowRoad14 = [1 0 0  1 0 0  1 1 0  1 1 0  0 1 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0]; 
write(register, RainbowRoad14(1,:),'uint32')
pause(0.05)
RainbowRoad15 = [1 0 0  1 0 0  1 1 0  1 1 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0]; 
write(register, RainbowRoad15(1,:),'uint32')
pause(0.05)
RainbowRoad16 = [1 0 0  1 0 0  1 1 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0]; 
write(register, RainbowRoad16(1,:),'uint32')
pause(0.05)
RainbowRoad17 = [1 0 0  1 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0]; 
write(register, RainbowRoad17(1,:),'uint32')
pause(0.05)
RainbowRoad18 = [1 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0]; 
write(register, RainbowRoad18(1,:),'uint32')
pause(0.05)
RainbowRoad19 = [0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0]; 
write(register, RainbowRoad19(1,:),'uint32')
pause(0.05)
RainbowRoad20 = [0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  1 0 0  0 0]; 
write(register, RainbowRoad20(1,:),'uint32')
pause(0.05)
RainbowRoad20 = [0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  1 0 0  1 0 0  0 0]; 
write(register, RainbowRoad20(1,:),'uint32')
pause(0.05)
RainbowRoad21 = [0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  1 1 0  1 0 0  1 0 0  0 0]; 
write(register, RainbowRoad21(1,:),'uint32')
pause(0.05)
RainbowRoad22 = [0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  1 1 0  1 1 0  1 0 0  1 0 0  0 0]; 
write(register, RainbowRoad22(1,:),'uint32')
pause(0.05)
RainbowRoad23 = [0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 1 0  1 1 0  1 1 0  1 0 0  1 0 0  0 0]; 
write(register, RainbowRoad23(1,:),'uint32')
pause(0.05)
RainbowRoad24 = [0 0 0  0 0 0  0 0 0  0 0 0  0 1 1  0 1 0  1 1 0  1 1 0  1 0 0  1 0 0  0 0]; 
write(register, RainbowRoad24(1,:),'uint32')
pause(0.05)
RainbowRoad25 = [0 0 0  0 0 0  0 0 0  0 1 0  0 1 1  0 1 1  1 1 0  1 1 0  1 0 0  1 0 0  0 0]; 
write(register, RainbowRoad25(1,:),'uint32')
pause(0.05)
RainbowRoad26 = [0 0 0  0 0 0  0 1 0  0 1 1  0 1 1  0 1 0  1 1 0  1 1 0  1 0 0  1 0 0  0 0]; 
write(register, RainbowRoad26(1,:),'uint32')
pause(0.05)
RainbowRoad26 = [0 0 0  1 0 1  0 1 0  0 1 1  0 1 1  0 1 0  1 1 0  1 1 0  1 0 0  1 0 0  0 0]; 
write(register, RainbowRoad26(1,:),'uint32')
pause(0.05)
RainbowRoad27 = [1 0 1  1 0 1  0 1 0  0 1 1  0 1 1  0 1 0  1 1 0  1 1 0  1 0 0  1 0 0  0 0]; 
write(register, RainbowRoad27(1,:),'uint32')
pause(0.05)
RainbowRoad28 = [0 0 0  1 0 1  0 1 0  0 1 1  0 1 1  0 1 0  1 1 0  1 1 0  1 0 0  1 0 0  0 0]; 
write(register, RainbowRoad28(1,:),'uint32')
pause(0.05)
RainbowRoad29 = [0 0 0  0 0 0  0 1 0  0 1 1  0 1 1  0 1 0  1 1 0  1 1 0  1 0 0  1 0 0  0 0]; 
write(register, RainbowRoad29(1,:),'uint32')
pause(0.05)
RainbowRoad30 = [0 0 0  0 0 0  0 0 0  0 1 1  0 1 1  0 1 0  1 1 0  1 1 0  1 0 0  1 0 0  0 0]; 
write(register, RainbowRoad30(1,:),'uint32')
pause(0.05)
RainbowRoad31 = [0 0 0  0 0 0  0 0 0  0 0 0  0 1 1  0 1 0  1 1 0  1 1 0  1 0 0  1 0 0  0 0]; 
write(register, RainbowRoad31(1,:),'uint32')
pause(0.05)
RainbowRoad32 = [0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 1 0  1 1 0  1 1 0  1 0 0  1 0 0  0 0]; 
write(register, RainbowRoad32(1,:),'uint32')
pause(0.05)
RainbowRoad33 = [0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  1 1 0  1 1 0  1 0 0  1 0 0  0 0]; 
write(register, RainbowRoad33(1,:),'uint32')
pause(0.05)
RainbowRoad34 = [0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  1 1 0  1 0 0  1 0 0  0 0]; 
write(register, RainbowRoad34(1,:),'uint32')
pause(0.05)
RainbowRoad35 = [0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  1 0 0  1 0 0  0 0]; 
write(register, RainbowRoad35(1,:),'uint32')
pause(0.05)
RainbowRoad36 = [0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  1 0 0  0 0]; 
write(register, RainbowRoad36(1,:),'uint32')
pause(0.05)
RainbowRoad37 = [0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0]; 
write(register, RainbowRoad37(1,:),'uint32')
pause(0.05)
end

    
    %if user iput matches 'rainbow, red, etc.. then excecute color or
    %pattern
    elseif strcmp(prompt,'rainbow')||strcmp(prompt,'Rainbow')
 rainbow = [1 0 0  1 0 0  1 1 0  1 1 0  0 1 0  0 1 0  0 1 1  0 1 1  1 0 1  1 0 1  0 0]; 
write(register, rainbow(1,:),'uint32')   %excecuting rainbow to register
elseif strcmp(prompt,'Red')||strcmp(prompt,'red')
 red=  [1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0];
 write(register, red(1,:),'uint32');
 elseif strcmp(prompt,'Yellow')||strcmp(prompt,'yellow')
 yellow=[1 1 0 1 1 0 1 1 0 1 1 0 1 1 0 1 1 0 1 1 0 1 1 0 1 1 0 1 1 0 1 1];
write(register,yellow(1,:),'uint32');
    elseif strcmp(prompt,'green')||strcmp(prompt,'Green')
 green=[0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 ];
    write(register, green(1,:),'uint32')
elseif strcmp(prompt,'light blue')||strcmp(prompt,'Light Blue')
    lightblue =[0 1 1 0 1 1 0 1 1 0 1 1 0 1 1 0 1 1 0 1 1 0 1 1 0 1 1 0 1 1 0 1];
    write(register,lightblue(1,:),'uint32');
    elseif strcmp(prompt,'white')||strcmp(prompt,'White')
 white= [1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1];
    write(register, white(1,:),'uint32')
     elseif strcmp(prompt,'blue')||strcmp(prompt,'Blue')
 blue= [0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0];
    write(register, blue(1,:),'uint32')
    elseif strcmp(prompt,'purple')||strcmp(prompt,'Purple')
 purple = [1 0 1 1 0 1 1 0 1 1 0 1 1 0 1 1 0 1 1 0 1 1 0 1 1 0 1 1 0 1 1 0];
 write(register, purple(1,:),'uint32');
 %if user inputs off or user input is incorrect then turn off lights
elseif strcmp(prompt,'Off')||strcmp(prompt,'turn off')||strcmp(prompt,'off')||strcmp(prompt,'lights off')
    reset(register)
else %if user inputs incoreectly then turn off lights
    disp('Please enter a correct input..');  
    reset(register) %resets register and puts all 16 array integers to 0
end
end













