if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED and _util.GetVar("foundSoda") ~= 1 then
  _util.SetVar("foundSoda", 1)
  _util.MarkSubObjComplete(_text.M10_OBJ3, _text.M10_3SUBOBJ1, true)
end
