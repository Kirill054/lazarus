unit unit5;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Buttons,
  Grids;

type

  { TForm1 }

  TForm1 = class(TForm)
    BitBtn1: TBitBtn;
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    StringGrid1: TStringGrid;
    procedure BitBtn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
  form1.close
end;

procedure TForm1.Button1Click(Sender: TObject);
var y: array of extended;
var x,a,b,h:extended;
var n,i : integer;
begin
  try
   a := StrToFloat(Edit1.Text);
   b := StrToFloat(Edit2.Text);
   h := StrToFloat(Edit3.Text);
  except
    on E : Exception do ShowMessage(E.Message);
  end;

  if b < a then Begin
     ShowMessage('b < a!');
     exit;
  End;
  x := a;
  i := 0;
  n := trunc((b-a) / h) + 1;
  SetLength(y, n);
  StringGrid1.ColCount := n;
  StringGrid1.RowCount := 2;
  while x <= b do begin
        y[i] := x*x;
        StringGrid1.Cells[i,0] := FloatToStr(x);
        StringGrid1.Cells[i,1] := FloatToStr(y[i]);
        x := x + h;
        i := i + 1;
  end;
end;

end.

