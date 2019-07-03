if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetVar("m11_orangeBookOpen") == 0 and _util.GetVar("m11_colorWheelDoorMinigame") ~= 1 then
    _util.DisableInput()
    _util.SwitchState("open")
    _util.SetVar("m11_orangeBookOpen", 1)
    _util.AddItem(10657)
    _util.SwitchState("open", 10657)
    _util.EnableInput()
  else
    _util.SwitchState("")
    _util.SwitchState("open", 10657)
    _util.DelItem(10657)
    _util.MarkSubObjComplete(_text.M11_OBJ7, _text.M11_7SUBOBJ1)
    _util.SetVar("m11_orangeBookOpen", 0)
  end
end
