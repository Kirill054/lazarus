unit unit6;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
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
var x1,x2,y1,y2:integer;
S,P:real;
begin
 x1:=strtoint(edit1.text);
 x2:=strtoint(edit2.text);
 y1:=strtoint(edit3.text);
 y2:=strtoint(edit4.text);
 S:=(Power(y2 - y1,2)+Power(x2 - x1, 2))/2;
 Edit5.Text := FloatToStr(S);
 P:=4*sqrt(S);
 Edit6.Text := FloatToStr(P);

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
 Edit1.Text := '';
 Edit2.Text := '';
 Edit3.Text := '';
 Edit4.Text := '';
 Edit5.Text := '';
 Edit6.Text := '';
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  form1.close
end;

end.

