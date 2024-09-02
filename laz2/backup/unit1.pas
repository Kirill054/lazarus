unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }
uses Math;
procedure TForm1.Button1Click(Sender: TObject);
var x,y:integer;
  f:real;
begin
 y:=strtoint(edit3.text);
 x:=strtoint(edit1.text);
 f := Power((x - 1 / (x + 1)), x) + 18 * x * Power(y, 2);
 edit2.text:=floattostr(f);

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
Edit1.Text := '';
Edit2.Text := '';
Edit3.Text := '';
end;

end.

