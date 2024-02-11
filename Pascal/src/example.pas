program Example;

uses
  SysUtils, Classes, Generics.Collections;

procedure hello;
begin
    writeln('Hello World!');
end;

function myFunction(lst: TList<Int32>): string;
var
    i: Int32;
    tmpLst: TList<string>;
begin
    tmpLst := TList<string>.Create;
    for i := 0 to lst.Count - 1 do
    begin
        if lst[i] mod 2 = 0 then
            tmpLst.Add(IntToStr(lst[i] * 3));
    end;
    Result := '';
    for i := tmpLst.Count - 1 downto 0 do
        Result := tmpLst[i] + Result + tmpLst[i];
end;

begin
    hello;

    writeln(myFunction(TList<Int32>.Create([1, 2, 3, 4, 5])));
end.
