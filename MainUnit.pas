unit MainUnit;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Platform;

type
  TForm1 = class(TForm)
    SaveResLabel: TLabel;
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.FormResize(Sender: TObject);
const
  coordinateOffset       : Single      = 2.00;
  coordinateHeight       : Single      = 1.75;

begin
  If (ClientWidth = 0) or (ClientHeight = 0) then
  begin
    Exit;
  end;

  SaveResLabel.Position.X     := Round((ClientHeight/100)*coordinateOffset);
  SaveResLabel.Position.Y     := Round((ClientHeight/100)*coordinateOffset);
  SaveResLabel.Height         := Round((ClientHeight/100)*coordinateHeight);
  SaveResLabel.Font.Size      := Trunc(SaveResLabel.Height);
  SaveResLabel.Width          := Trunc(ClientWidth-(SaveResLabel.Position.X*2));
end;

end.
