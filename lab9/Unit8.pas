unit Unit8;
interface
uses
	Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
	Dialogs, StdCtrls, Buttons, ExtCtrls, TeeProcs, TeEngine;
type
	TForm1 = class(TForm)
    BitBtn1: TBitBtn;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Edit5: TEdit;
    Edit6: TEdit;
    Label5: TLabel;
    Label6: TLabel;
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
	var 
		x1,x2,y1,y2,x,y : integer;
		flag : boolean;
	
	begin
    x1:=StrToInt(Edit1.Text);
    y1:=StrToInt(Edit2.Text);
    x2:=StrToInt(Edit3.Text);
    y2:=StrToInt(Edit4.Text);
    x:=StrToInt(Edit5.Text);
    y:=StrToInt(Edit6.Text);
		Label1.Caption := 'Oi?ea ea?eo a oeao?a? : ';
		Canvas.FillRect(Rect(0,0,Width,Height));
		Canvas.Pen.Color := clBlack;
		Canvas.Brush.Color:=clGreen;
		Canvas.Rectangle(x1,y1,x2,y2);
		if((x >= x1) AND (x <= x2) AND (y >= y1) AND (y <= y1)) then begin
			Canvas.Pixels[x,y] := clYellow;
			Label1.Caption := 'Aa';
		end
		else begin
			Canvas.Pixels[x,y] := clRed;
			Label1.Caption := Label1.Caption + 'Iao';
		end;
	end;
end.
