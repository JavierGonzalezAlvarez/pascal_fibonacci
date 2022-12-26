PROGRAM REMEMBER;
USES crt;
var option,n:integer;

PROCEDURE MENU;
BEGIN
    writeln('1.rombo');
    writeln('2.rectangle');
    writeln('3.FIBONNACI');
    writeln('4.exit');
END;

PROCEDURE ROMBO;
BEGIN
    writeln('rombo');
END;

PROCEDURE RECTANGLE;
BEGIN
    writeln('rectangle');
END;

FUNCTION FIBONNACI(n:real):real;
begin
    if n>1 then 
        FIBONNACI:=FIBONNACI(n-1)+FIBONNACI(n-2)
    else 
        if n=0 then
            FIBONNACI:=0
        else
            FIBONNACI:=1
end;

BEGIN;
option:=0;
repeat
    clrscr;
    TextColor(1);
    menu;
    read(option);
    case option of
        1:ROMBO;
        2:RECTANGLE;
        3:begin
            for n:=0 to 20 do
                write(FIBONNACI(n):20)
        end;
        4:begin
            gotoxy(1,25);
            writeln('option no valid, press any key to finish');
        end
    end;
    repeat until keypressed;
until option=4;
END.