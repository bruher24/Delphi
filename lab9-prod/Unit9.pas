unit Unit9;
interface
uses
Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs,StdCtrls, Buttons, TeEngine, Series, ExtCtrls, TeeProcs, Chart, Math,
 Cmplx;
type
 TForm1 = class(TForm)
 Chart1: TChart;
 Edit1: TEdit;
 Label1: TLabel;
 Edit2: TEdit;
 Label2: TLabel;
 BitBtn1: TBitBtn;
 Edit3: TEdit;
 Label3: TLabel;
 Edit4: TEdit;
 Label4: TLabel;
 Series1: TFastLineSeries;
 Series2: TFastLineSeries;
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
{$R *.DFM}
procedure TForm1.BitBtn1Click(Sender: TObject); //������
var
 n,k:integer;
 xmin,xmax,h,x:extended;
 s,a,b,c,d,p,m,l:Complex;
begin
 series1.Clear;
 series2.Clear;
 n:=strtoint(edit1.text);
 xmin:=strtofloat(edit2.text);
 xmax:=strtofloat(edit3.text);
 h:=strtofloat(edit4.text);
 x:=xmin;
 repeat
 s.re:=0;
 s.im:=0;
 for k:=0 to n do
 begin
 a:= Sqrc(Lnc(Sqrtc(Cplx(-x,k))));
 b:= Lnc(Sqrc(Cplx(-2*k,x)));
 c:= Divc(a,b);
 d:= Mulc(c, Cplx(cos(x*k),sin(x*k)));
 s:=Addc(s,d);
 end;
 series1.AddXY(x,s.re,'',clteecolor); //����� �������� �����
 series2.AddXY(x,s.im,'',clteecolor); //����� ������ �����
 if(x=2) then begin
  Label5.Caption:=floatToStr(s.re);
  Label6.Caption:=floatToStr(s.im);
 end;
 x:=x+h;
 until x>xmax;

  {
  k:=0;
  s.re:=0;
  s.im:=0;
  a:= Sqrc(Lnc(Sqrtc(Cplx(-x,k))));
  b:= Lnc(Sqrc(Cplx(-2*k,x)));
  c:= Divc(a,b);
  d:= Mulc(c, Cplx(cos(x*k),sin(x*k)));
  s:=Addc(s,d);
  Label5.Caption:=floatToStr(s.re);
  Label6.Caption:=floatToStr(s.im);
  }

  
end;
end.
