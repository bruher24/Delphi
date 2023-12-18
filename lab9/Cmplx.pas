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
function Sqrc(x:Complex):Complex;
function Lnc(x:Complex):Complex;

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
    begin
      if(x.im <> 0) then begin
      Sqrtc.re:=Sqrt((Sqrt(Sqr(x.re)+Sqr(x.im))+x.re)/2);
      Sqrtc.im:=(x.im/abs(x.im))*(Sqrt((Sqrt(Sqr(x.re)+Sqr(x.im))-x.re)/2));
      end
      else begin
        Sqrtc.re:=Sqrt(x.re);
        Sqrt.im:=0;
      end;
    end;

  function Sqrc;
    begin
      Sqrc.re:=x.re*x.re - x.im*x.im;
      Sqrc.im:=2*x.re*x.im;
    end;

  function Lnc;
    var p:extended;
    begin
    p:=Sqr(x.re);
      Lnc.re:= Ln(Sqrt(Sqr(x.re)+Sqr(x.im)));
      Lnc.im:= ArcTan(x.im/x.re);
    end;
end.
 
