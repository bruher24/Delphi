unit Unit7;
interface
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, TeeProcs, TeEngine;
type
  TForm1 = class(TForm)
  BitBtn1: TBitBtn;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    Edit5: TEdit;
    Edit6: TEdit;
  procedure BitBtn1Click(Sender: TObject);
  private
  { Private declarations }
  public
  { Public declarations }
  end;
var
  Form1: TForm1;
implementation
  {$R *.dfm}
procedure TForm1.BitBtn1Click(Sender: TObject);
  var x,x1,x2,y,y1,y2 : integer;
  Procedure Shar(x,y: integer;cc:TColor);
    begin
      Canvas.Pen.Color:=clWhite;
      Canvas.Brush.Color:=cc;
      Canvas.Pixels[x,y]:=cc;
      Canvas.Ellipse(x-5,y-5,x+5,y+5);
    end;
  begin
    x:=StrToInt(Edit1.Text);
    y:=StrToInt(Edit2.Text);
    x1:=StrToInt(Edit3.Text);
    y1:=StrToInt(Edit4.Text);
    x2:=StrToInt(Edit5.Text);
    y2:=StrToInt(Edit6.Text);
    Canvas.Pen.Color:=clBlack;
    Canvas.Brush.Color:=clGreen;
    Canvas.Rectangle(x1,y1,x2,y2);
    if( (x>=x1) AND (x<=x2) AND (y>=y1) AND (y<=y2) ) then Shar(x,y,clYellow)
    else Shar(x,y,clRed);

  end;
end.

