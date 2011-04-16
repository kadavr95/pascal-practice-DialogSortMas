unit DialogSortMas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm2 = class(TForm)
    odlg: TOpenDialog;
    sdlg: TSaveDialog;
    Open: TButton;
    Save: TButton;
    procedure OpenClick(Sender: TObject);
    procedure SaveClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  f,ff:textfile;
  i,x:integer;
implementation
type
  mas=array[1..100] of real;
var
  m:mas;
{$R *.dfm}
procedure change(var a,b:real);
var
c:real;
begin
  c:=a;
  a:=b;
  b:=c;
end;
function min(m:mas;i:integer):integer;
var
 j:integer;
 a:integer;
begin
 a:=i;
 for j := i+1 to x do
  if m[a]>m[j] then
   a:=j;
 min:=a;
end;
procedure TForm2.OpenClick(Sender: TObject);
begin
 if odlg.Execute=true then
   begin
     assignfile(f,odlg.FileName);
   end;
end;

procedure TForm2.SaveClick(Sender: TObject);
begin
  if sdlg.Execute=true then
   begin
   assignfile(ff,sdlg.FileName);
    rewrite(ff);
    reset(f);
    readln(f,x);
    for i := 1 to x do
     read(f,m[i]);
    for i := 1 to x-1 do
     change(m[i],m[min(m,i)]);
    for i := 1 to x do
    write(ff,floattostr(m[i]),' ');
    closefile(ff);
    closefile(f);
   end;
end;

end.
