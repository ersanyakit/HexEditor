(*
  Author : Ersan YAKIT
           ben@ersanyakit.com
*)
unit uHexEditor;

interface

uses
 Windows, SysUtils,  Messages, Classes, Graphics, Controls, Forms, Dialogs,Grids,
  StdCtrls;

const
  GRID_FIXED = 2;


type
  THexEditor = class(TCustomGrid)
  private
    { Private declarations }
     FBorder: TBorderStyle;
     FIsFileReadonly  : boolean;
     FDataStorage : TMemoryStream;

     FStreamFileName : string;
  protected
    { Protected declarations }
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;

    procedure LoadFromFile(szFilePath : string);
  published
    { Published declarations }
  end;

procedure Register;

implementation




procedure THexEditor.LoadFromFile(szFilePath : string);
begin
//
end;

constructor THexEditor.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  DoubleBuffered := True;
  Options := [goThumbTracking];
  DesignOptionsBoost := [];
  DefaultDrawing := False;
  Font.Name := 'Courier New';
  Font.Size := 11;
  BorderStyle := bsSingle;
  CTL3D := False;
  Cursor := crIBeam;
  DefaultColWidth := 0;
  DefaultRowHeight := 0;
  RowHeights[0] := 0;
  RowHeights[1] := 0;
  RowCount := GRID_FIXED + 1;


  FDataStorage := TMemoryStream.Create;
end;

destructor THexEditor.Destroy;
begin
  inherited Destroy;
end;

procedure Register;
begin
  RegisterComponents('Samples', [THexEditor]);
end;

end.