{
  This script checkes to see if an EDID is present in the selected record.  
  If not present it will add an EDID record.  
  Assign 'Position' to the first space found in NAME
  Assign the EDID value to be the Prefix, plus the NAME of the reference up to the first space, and a suffix.
}
unit AddPrefixPlusNameToEDID;

{
Change Prefix to the desired value for your plugin.
}
Const
  Prefix = 'Reserve';
  
Var
  Count: Integer;
  Sig: string;

function Process(e: IInterface): integer;
var
  elEditorID: IInterface;
  s, s1: String;
  Position: Integer;

begin
  Sig := Signature(e);
  Result := 0;
  s1:= '';

  // if (Sig = 'CELL') or (Sig = 'WRLD') then begin
    AddMessage('Processing: ' + Name(e));
    elEditorID := ElementByName(e, 'EDID - Editor ID');
    s := GetElementEditValues(e, 'NAME');
    Position:= pos(' ', s);
    if Position > 0 then s1 := Copy(s, 0, (Position - 1));
    if Not Assigned(elEditorID) then Begin
      elEditorID := Add(e, 'EDID', True)
	  End;
    Begin
      SetEditValue(elEditorID, Prefix + s1 + '_' + IntToStr(Count));
	  Inc(Count)
    End;
  // End;
end;

end.
