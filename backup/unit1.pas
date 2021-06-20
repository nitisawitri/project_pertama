unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TFormutama }

  TFormutama = class(TForm)
    Buttonbayar: TButton;
    Buttonhitungkembali: TButton;
    Buttonhitung: TButton;
    ComboBoxmakanan: TComboBox;
    ComboBoxminuman: TComboBox;
    Editkembali: TEdit;
    Editbayar: TEdit;
    Edittotalbayar: TEdit;
    Editjumlahminuman: TEdit;
    Edithargaminuman: TEdit;
    Edithargamakanan: TEdit;
    Editjumlahmakanan: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Labelbayar: TLabel;
    Labelmakanan: TLabel;
    Labelkasir: TLabel;
    Labelrmhmkn: TLabel;
    procedure ButtonbayarClick(Sender: TObject);
    procedure ButtonhitungClick(Sender: TObject);
    procedure ButtonhitungkembaliClick(Sender: TObject);
    procedure ComboBoxmakananChange(Sender: TObject);
    procedure ComboBoxminumanChange(Sender: TObject);
    procedure EdithargamakananChange(Sender: TObject);
  private

  public

  end;

var
  Formutama: TFormutama;

implementation

{$R *.lfm}

{ TFormutama }

procedure TFormutama.ComboBoxmakananChange(Sender: TObject);
var
 hargamakanan : integer;
begin
    begin
    if (ComboBoxmakanan.Text ='Nasi Rames Ayam') then
    hargamakanan:=15000;
  end;

  begin
    if (ComboBoxmakanan.Text ='Nasi Rames Telor') then
    hargamakanan:=12000;
  end;

  begin
    if (ComboBoxmakanan.Text ='Nasi Pecel') then
    hargamakanan:=8000;
  end;

  begin
    if (ComboBoxmakanan.Text ='Ikan Nila Bakar') then
    hargamakanan:=15000;
  end;

  begin
    if (ComboBoxmakanan.Text ='Ikan Patin Bakar') then
    hargamakanan:=10000;
    end;

  Edithargamakanan.Text:=FloatToStr(hargamakanan);
end;

procedure TFormutama.ButtonhitungClick(Sender: TObject);
var
 jumlah1, jumlah2, hargamakanan, hargaminuman, total : integer;
begin
  jumlah1 := StrToInt (Editjumlahmakanan.Text);
  jumlah2 := StrToInt (Editjumlahminuman.Text);
  hargamakanan := StrToInt(Edithargamakanan.Text);
  hargaminuman := StrToint(Edithargaminuman.Text);

  total := (jumlah1*hargamakanan) + (jumlah2*hargaminuman);

  Edittotalbayar.Text := FloatToStr(total);
end;

procedure TFormutama.ButtonhitungkembaliClick(Sender: TObject);
begin

end;

procedure TFormutama.ButtonbayarClick(Sender: TObject);
var
 total, kembali, bayar : integer;

begin
  total := StrToInt(Edittotalbayar.Text);
  bayar := StrToInt(Editbayar.Text);
  kembali := bayar-total;

  Editkembali.Text := FloatToStr(kembali);

end;

procedure TFormutama.ComboBoxminumanChange(Sender: TObject);
var hargaminuman : integer;
begin
  begin
    if (ComboBoxminuman.Text ='Es Teh') then
    hargaminuman:=3000;
    end;

  begin
    if (ComboBoxminuman.Text ='Es Jeruk') then
    hargaminuman:=5000;
    end;

  begin
    if (ComboBoxminuman.Text ='Es Sirup') then
    hargaminuman:=4000;
    end;

  begin
    if (ComboBoxminuman.Text ='Teh Hangat') then
    hargaminuman:=3000;
    end;

  begin
    if (ComboBoxminuman.Text ='Jeruk Hangat') then
    hargaminuman:=5000;
    end;

  begin
    if (Comboboxminuman.Text ='Sirup Hangat') then
  hargaminuman:=4000;
  end;
   Edithargaminuman.Text :=FloatToStr(hargaminuman);
end;

procedure TFormutama.EdithargamakananChange(Sender: TObject);
begin

end;

end.


