program lab;

{$APPTYPE CONSOLE}

{$R *.res}
uses
  System.SysUtils;

var
       x, a, b, h, y, t: real;
begin
  Writeln('��������� �������� ������� y=f(x) ��� ���������� �������� ��������� x, ������� a, ��������� ���-����� ��������� x, ������� b, � � ���������� �� a �� b � ����� h ���������� ���������.');
  Writeln;
  Write('������� ��������� �������� ��������� x , � = '); ReadLn(a);
  Write('������� �������� �������� ��������� x, b = '); ReadLn(b);
  Write('������� ���������� h  = '); ReadLn(h);
  WriteLn;
  WriteLn('    �������� �    |  �������� � ');
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
          writeln(     x:12:2,'      | �� ����� ����������');
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
              writeln(     x:12:2,'      | �� ����� ����������');
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
                writeln(     x:12:2,'      | �� ����� ����������');
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
            writeln(     x:12:2,'      | �� ����� ����������');
        end;
      readln;
end.

