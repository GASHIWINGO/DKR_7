uses GraphABC;
uses Constr;

var kof:real;
var b:byte;

procedure replace();
begin
  Clearwindow;Draw(x,y,x1,y1);
  textout(0,0,'Для перемещения по оси X введите 1');
  textout(0,15,'Для перемещения по оси Y введите 2');
  read(b);
  case b of
    1:begin Clearwindow;Draw(x,y,x1,y1);
        textout(0,0,'Укажите расстояние для смещения');
        read(kof);
        x:=x+kof;
        ClearWindow;
        Draw(x,y,x1,y1);end;
    2:begin Clearwindow;Draw(x,y,x1,y1);
        textout(0,0,'Укажите расстояние для смещения');
        read(kof);
        ClearWindow;
        y:=y+kof;
        Draw(x,y,x1,y1);end;
  end;
end;

procedure mastab();
begin
  ClearWindow;
  Draw(x,y,x1,y1);
  textout(0,0,'Укажите коэффициент масштабирования');
  read(kof);
  x1:=x1*kof;
  ClearWindow;
  Draw(x,y,x1,y1);
  end;

  procedure deep(n:integer);
    begin
      Draw(x,y,x1,y1);
      if n > 0 then begin
        deep(n-1);
      end;
    end;

begin
  SetWindowCaption('Кривая Минковского');
  CenterWindow;
  SetWindowSize(800, 600);
  x:=100;y:=250;
  x1:=500;y1:=300;
  Draw(x,y,x1,y1);
  var o:=1;
  var n:integer;
  while o<>0 do begin
  textout(0,550,'Для изменения масштаба введите 1, для перемещения 2, для изменения глубины 3, для завершения программы 0');
  readln(o);
  case o of
    1: mastab;
    2: replace;
    3: begin
        writeln('Укажите глубину прорисовки');
        readln(n);
        ClearWindow;
        deep(n);
       end;
    0:exit();
  end;
  end;
end.