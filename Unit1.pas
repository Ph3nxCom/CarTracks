unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, TabNotBk, Tabs, XPMan, StdCtrls, Menus, jpeg,
  Buttons;

type
  TForm1 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    RadioButton5: TRadioButton;
    RadioButton6: TRadioButton;
    Image7: TImage;
    Image8: TImage;
    RadioButton7: TRadioButton;
    Label2: TLabel;
    RadioButton8: TRadioButton;
    Image9: TImage;
    Shape1: TShape;
    Timer1: TTimer;
    MainMenu1: TMainMenu;
    N11: TMenuItem;
    N21: TMenuItem;
    N31: TMenuItem;
    Button7: TButton;
    Button8: TButton;
    procedure Button1click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure hallo(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure Image7Click(Sender: TObject);
    procedure Image8Click(Sender: TObject);
    procedure Image9Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure N21Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var x1, x2, x3, y1, y2, y3, f, StartX, StartY : integer;
    a, l, z : real;
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1click(Sender: TObject);
begin
pagecontrol1.ActivePageIndex:=1;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
pagecontrol1.ActivePageIndex:=0;
image1.canvas.Rectangle(1,1,1,1);
shape1.Visible:=false;

end;

procedure TForm1.Button5Click(Sender: TObject);
begin
close;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
pagecontrol1.ActivePageIndex:=2;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
pagecontrol1.ActivePageIndex:=3;
end;

procedure TForm1.hallo(Sender: TObject);
begin
if radiobutton1.Checked=true then begin
 x3:=mouse.CursorPos.x-image1.left;
 y3:=mouse.Cursorpos.y-image1.top;
 x1:=round(x3/100)*100-55;
 x2:=x1+100;
 y1:=round(y3/100)*100-98;
 y2:=y1+100;
 image1.Canvas.Pen.Width:=1;
 image1.Canvas.Pen.Color:=clgray;
 image1.Canvas.Brush.Color:=clwhite;
 image1.canvas.Rectangle(x1,y1,x2,y2);
 image1.Canvas.Pen.Color:=clblack;
 image1.Canvas.Pen.Width:=3;
 image1.Canvas.MoveTo(x1,y1+10);
 image1.Canvas.LineTo(x2,y1+10);
 image1.Canvas.MoveTo(x1,y1+90);
 image1.Canvas.LineTo(x2,y1+90);
 end;
if radiobutton2.Checked=true then begin
 x3:=mouse.CursorPos.x-image1.left;
 y3:=mouse.Cursorpos.y-image1.top;
 x1:=round(x3/100)*100-55;
 x2:=x1+100;
 y1:=round(y3/100)*100-98;
 y2:=y1+100;
 image1.Canvas.Pen.Width:=1;
 image1.Canvas.Pen.Color:=clgray;
 image1.Canvas.Brush.Color:=clwhite;
 image1.canvas.Rectangle(x1,y1,x2,y2);
 image1.Canvas.Pen.Color:=clblack;
 image1.Canvas.Pen.Width:=3;
 image1.Canvas.MoveTo(x1+10,y1);
 image1.Canvas.LineTo(x1+10,y2);
 image1.Canvas.MoveTo(x1+90,y1);
 image1.Canvas.LineTo(x1+90,y2);
 end;
if radiobutton3.Checked=true then begin
 x3:=mouse.CursorPos.x-image1.left;
 y3:=mouse.Cursorpos.y-image1.top;
 x1:=round(x3/100)*100-55;
 x2:=x1+100;
 y1:=round(y3/100)*100-98;
 y2:=y1+100;
 image1.Canvas.Pen.Width:=1;
 image1.Canvas.Pen.Color:=clgray;
 image1.Canvas.Brush.Color:=clwhite;
 image1.canvas.Rectangle(x1,y1,x2,y2);
 image1.Canvas.Pen.Color:=clblack;
 image1.Canvas.Pen.Width:=3;
 image1.Canvas.MoveTo(x1+90,y2);
 a:=0;

 repeat

 a:=a+pi/90;
 image1.Canvas.lineTo(round(x1+90*cos(a)),round(y2-90*sin(a)));

 until a>=pi/2;

 a:=0;
 image1.Canvas.MoveTo(x1+10,y2);

 repeat

 a:=a+pi/90;
 image1.Canvas.lineTo(round(x1+10*cos(a)),round(y2-10*sin(a)));

 until a>=pi/2;

 end;
if radiobutton4.Checked=true then begin
 x3:=mouse.CursorPos.x-image1.left;
 y3:=mouse.Cursorpos.y-image1.top;
 x1:=round(x3/100)*100-55;
 x2:=x1+100;
 y1:=round(y3/100)*100-98;
 y2:=y1+100;
 image1.Canvas.Pen.Width:=1;
 image1.Canvas.Pen.Color:=clgray;
 image1.Canvas.Brush.Color:=clwhite;
 image1.canvas.Rectangle(x1,y1,x2,y2);
 image1.Canvas.Pen.Color:=clblack;
 image1.Canvas.Pen.Width:=3;
 image1.Canvas.MoveTo(x2,y1+10);
 a:=pi/2;

 repeat

 a:=a+pi/90;
 image1.Canvas.lineTo(round(x2+90*cos(a)),round(y2-90*sin(a)));

 until a>=pi;

 a:=pi/2;
 image1.Canvas.MoveTo(x2,y1+90);

 repeat

 a:=a+pi/90;
 image1.Canvas.lineTo(round(x2+10*cos(a)),round(y2-10*sin(a)));

 until a>=pi;

 end;
if radiobutton5.Checked=true then begin
 x3:=mouse.CursorPos.x-image1.left;
 y3:=mouse.Cursorpos.y-image1.top;
 x1:=round(x3/100)*100-55;
 x2:=x1+100;
 y1:=round(y3/100)*100-98;
 y2:=y1+100;
 image1.Canvas.Pen.Width:=1;
 image1.Canvas.Pen.Color:=clgray;
 image1.Canvas.Brush.Color:=clwhite;
 image1.canvas.Rectangle(x1,y1,x2,y2);
 image1.Canvas.Pen.Color:=clblack;
 image1.Canvas.Pen.Width:=3;
 image1.Canvas.MoveTo(x1+10,y1);
 a:=pi;

 repeat

 a:=a+pi/90;
 image1.Canvas.lineTo(round(x2+90*cos(a)),round(y1-90*sin(a)));

 until a>=(3/2)*pi;

 a:=pi;
 image1.Canvas.MoveTo(x1+90,y1);

 repeat

 a:=a+pi/90;
 image1.Canvas.lineTo(round(x2+10*cos(a)),round(y1-10*sin(a)));

 until a>=(3/2)*pi;

 end;
if radiobutton6.Checked=true then begin
 x3:=mouse.CursorPos.x-image1.left;
 y3:=mouse.Cursorpos.y-image1.top;
 x1:=round(x3/100)*100-55;
 x2:=x1+100;
 y1:=round(y3/100)*100-98;
 y2:=y1+100;
 image1.Canvas.Pen.Width:=1;
 image1.Canvas.Pen.Color:=clgray;
 image1.Canvas.Brush.Color:=clwhite;
 image1.canvas.Rectangle(x1,y1,x2,y2);
 image1.Canvas.Pen.Color:=clblack;
 image1.Canvas.Pen.Width:=3;
 image1.Canvas.MoveTo(x1,y1+90);
 a:=(3/2)*pi;

 repeat

 a:=a+pi/90;
 image1.Canvas.lineTo(round(x1+90*cos(a)),round(y1-90*sin(a)));

 until a>=2*pi;

 a:=(3/2)*pi;
 image1.Canvas.MoveTo(x1,y1+10);

 repeat

 a:=a+pi/90;
 image1.Canvas.lineTo(round(x1+10*cos(a)),round(y1-10*sin(a)));

 until a>=2*pi;

 end;
if radiobutton7.Checked=true then begin
 x3:=mouse.CursorPos.x-image1.left;
 y3:=mouse.Cursorpos.y-image1.top;
 x1:=round(x3/100)*100-55;
 x2:=x1+100;
 y1:=round(y3/100)*100-98;
 y2:=y1+100;
 image1.Canvas.Pen.Width:=1;
 image1.Canvas.Pen.Color:=clgray;
 image1.Canvas.Brush.Color:=clwhite;
 image1.canvas.Rectangle(x1,y1,x2,y2);
 image1.Canvas.Pen.Color:=clblack;
 image1.Canvas.Pen.Width:=3;
 image1.Canvas.MoveTo(x1,y1+10);
 image1.Canvas.LineTo(x2,y1+10);
 image1.Canvas.MoveTo(x1,y1+90);
 image1.Canvas.LineTo(x2,y1+90);
 image1.Canvas.Pen.Width:=1;
 image1.Canvas.Brush.Color:=clgreen;
 image1.Canvas.Polygon([point(x1+20,y1+30),point(x1+20,y1+70),point(x1+70,y1+50)]);
 startx:=x1+50;
 starty:=y1+50;
 end;
if radiobutton8.Checked=true then begin
 x3:=mouse.CursorPos.x-image1.left;
 y3:=mouse.Cursorpos.y-image1.top;
 x1:=round(x3/100)*100-55;
 x2:=x1+100;
 y1:=round(y3/100)*100-98;
 y2:=y1+100;
 image1.Canvas.Pen.Width:=1;
 image1.Canvas.Pen.Color:=clgray;
 image1.Canvas.Brush.Color:=clwhite;
 image1.canvas.Rectangle(x1,y1,x2,y2);
 image1.Canvas.Pen.Color:=clblack;
 image1.Canvas.Pen.Width:=3;
 image1.Canvas.MoveTo(x1,y1+10);
 image1.Canvas.LineTo(x2,y1+10);
 image1.Canvas.MoveTo(x1,y1+90);
 image1.Canvas.LineTo(x2,y1+90);
 image1.Canvas.Pen.Width:=1;
 image1.Canvas.Pen.Color:=clgray;
 image1.Canvas.MoveTo(x1+50,y1+10);
 image1.Canvas.LineTo(x1+50,y1+90);
 image1.Canvas.Brush.Color:=clred;
 image1.Canvas.Rectangle(x1+30,y1+30,x1+70,y1+70);
 end;
end;

procedure TForm1.Image2Click(Sender: TObject);
begin
radiobutton1.Checked:=true;
end;

procedure TForm1.Image3Click(Sender: TObject);
begin
radiobutton2.Checked:=true;
end;

procedure TForm1.Image4Click(Sender: TObject);
begin
radiobutton3.Checked:=true;
end;

procedure TForm1.Image5Click(Sender: TObject);
begin
radiobutton4.Checked:=true;
end;

procedure TForm1.Image6Click(Sender: TObject);
begin
radiobutton5.checked:=true;
end;

procedure TForm1.Image7Click(Sender: TObject);
begin
radiobutton6.checked:=true;
end;

procedure TForm1.Image8Click(Sender: TObject);
begin
radiobutton7.Checked:=true;
end;

procedure TForm1.Image9Click(Sender: TObject);
begin
radiobutton8.Checked:=true;
end;




procedure TForm1.Button7Click(Sender: TObject);
begin
shape1.Visible:=true;
shape1.Left:=startx;
shape1.Top:=starty;
f:=0;
z:=0;
l:=0;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
z:=z+f;
l:=l+z;
shape1.Left:=round(l+startx);
f:=0;
end;

procedure TForm1.N11Click(Sender: TObject);
begin
f:=2;
end;

procedure TForm1.N21Click(Sender: TObject);
begin
f:=-3;
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
shape1.Visible:=false;
end;

end.
