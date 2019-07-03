local L0_0
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
if L0_0 == _const.CREATED then
end
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
if L0_0 == _const.TOUCHED then
  function L0_0()
    _util.DelItem(_id.M1C2_WhistleBox)
    _util.AddItem(_id.M1C2_EmptyBox)
    _util.AddInventoryItem(_id.M1C2_Antenna)
    repeat
      scriptWait()
    until _util.IsPopUpVisible() == false
    _util.DisableInput()
    _util.DelItem(_id.M1C2_EmptyBox)
    _util.SwitchState("closing", _id.Object_CommandTable)
    repeat
      scriptWait()
    until not _util.IsAnimPlaying(_id.Object_CommandTable)
    _util.EnableInput()
  end
  scriptPlay(L0_0)
end
