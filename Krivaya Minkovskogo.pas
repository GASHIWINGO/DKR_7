uses GraphABC;
uses Constr;

var kof:real;
var b:byte;

procedure replace();
begin
        ClearWindow;
        Draw(x,y,x1,y1)
end;

procedure mastab();
begin
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

procedure keys(key:integer);
  begin
    case key of
      Vk_right: begin x:=x+50;x1:=x1+50;replace;end;
      VK_left: begin x:=x-50;x1:=x1-50;replace;end;
      VK_up: begin y:=y-50;y1:=y-25;replace;end;
      VK_down: begin y:=y+50;y1:=y+25;replace;end;
      $BB : begin x1:=x1+200;mastab;end;
      $BD : begin x1:=x1-200;mastab;end;
      VK_ShiftKey : deep(2);
      VK_ControlKey :begin clearwindow; Draw(x,y,x1,y1); end;
    end;
  end;

begin
  SetWindowCaption('Кривая Минковского');
  CenterWindow;
  SetWindowSize(1280, 720);
  x:=100;y:=250;
  x1:=500;y1:=300;
  Draw(x,y,x1,y1);
  var o:=1;
  var n:integer;
  onKeyDown:=keys;
end.