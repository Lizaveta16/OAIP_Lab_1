program lab;

{$APPTYPE CONSOLE}

{$R *.res}
uses
  System.SysUtils;

var
       x, a, b, h, y, t: real;
begin
  Writeln('Вычислить значения функции y=f(x) для начального значения аргумента x, равного a, конечного зна-чения аргумента x, равного b, и в промежутке от a до b с шагом h приращения аргумента.');
  Writeln;
  Write('Введите начальное значение аргумента x , а = '); ReadLn(a);
  Write('Введите конечное значение аргумента x, b = '); ReadLn(b);
  Write('Введите приращение h  = '); ReadLn(h);
  WriteLn;
  WriteLn('    Значение х    |  Значение у ');
  x:=a;
  t:= 1/100000;
    if((a<b) and (h<0)) or ((a>b) and (h>0)) or (h=0) then
      begin
        if (((pi-abs(2-x))>0) and (abs(x)>t) and (3-1/x<>0)) then
          begin
            y:=ln(sqrt(pi-abs(2-x)))/(3-1/x)+exp(ln(x*x)/3)*sin(1.4*x);
            writeln(     x:12:2,'      |',y:12:2)
          end
        else
          writeln(     x:12:2,'      | Не имеет результата');
      end
    else
      if (h>0) then
        while (x<=b) do
          begin
            if (((pi-abs(2-x))>0) and (abs(x)>t) and (3-1/x<>0)) then
              begin
                y:=ln(sqrt(pi-abs(2-x)))/(3-1/x)+exp(ln(x*x)/3)*sin(1.4*x);
                writeln(     x:12:2,'      |',y:12:2)
              end
            else
              writeln(     x:12:2,'      | Не имеет результата');
              x:=x+h;
          end
      else
        while (x>=b) do
          begin
              if (((pi-abs(2-x))>0) and (abs(x)>t) and (3-1/x<>0)) then
                begin
                  y:=ln(sqrt(pi-abs(2-x)))/(3-1/x)+exp(ln(x*x)/3)*sin(1.4*x);
                  writeln(     x:12:2,'      |',y:12:2)
                end
              else
                writeln(     x:12:2,'      | Не имеет результата');
                x:=x+h;
          end;
      if (abs((x-h-b))> t) then
        begin
        x:=b;
          if (((pi-abs(2-x))>0) and (abs(x)>t) and (3-1/x<>0)) then
            begin
              y:=ln(sqrt(pi-abs(2-x)))/(3-1/x)+exp(ln(x*x)/3)*sin(1.4*x);
              writeln(     x:12:2,'      |',y:12:2)
            end
          else
            writeln(     x:12:2,'      | Не имеет результата');
        end;
      readln;
end.

