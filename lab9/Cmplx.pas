unit Cmplx;

interface
uses Math;
Type Complex = record
                re:extended;
                im:extended;
      end;
function Addc(x,y:Complex):Complex;
function Mulc(x,y:Complex):Complex;
function Divc(x,y:Complex):Complex;
function Cplx(a,b:Extended):Complex;
function Sqrtc(x:Complex):Complex;
function Lnc(x:Complex):Complex;
function Sqrc(x:Complex):Complex;
implementation
  function Addc;
    begin
      Addc.re:=x.re+y.re;
      Addc.im:=x.im+y.im;
    end;
  function Mulc;
    begin
      Mulc.re:=x.re*y.re-x.im*y.im;
      Mulc.im:=x.re*y.im+x.im*y.re;
    end;
  function Divc;
    var z:extended;
    begin
      z:=Sqr(y.re)+Sqr(y.im);
      Divc.re:=(x.re*y.re+x.im*y.im)/z;
      Divc.im:=(x.im*y.re-x.re*y.im)/z;
    end;
  function Cplx;
    begin
      Cplx.re:=a;
      Cplx.im:=b;
    end;
  function Sqrtc;
    var phi, r: extended;
    begin
      if(x.re > 0) then begin
        r:=Sqrt(x.re);
        phi:=ArcTan2(x.re,x.im);
        Sqrtc.re:=r*cos((phi)/2);
        Sqrtc.im:=r*sin((phi)/2);
      end
      else begin
        r:=Sqrt(-x.re);
        phi:=ArcTan2(x.re,x.im);
        Sqrtc.re:=r*(-sin((phi)/2));
        Sqrtc.im:=r*cos((phi)/2);
      end;
    end;
  function Lnc;
    var phi, r: extended;
    begin
      r:=Sqrt(Sqr(x.re) + Sqr(x.im));
      phi:=ArcTan2(x.re,x.im);
      Lnc.re:= Ln(r);
      Lnc.im:= phi;
    end;
  function Sqrc;
    begin
      Sqrc.re:=x.re*x.re - x.im*x.im;
      Sqrc.im:=2*x.re*x.im;
    end;
end.
 