if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetVar("C2_Event") == _id.C2_CombinedGridPaper and _util.GetVar("C2_TouchFakeRock") == 0 then
    _util.SetVar("C2_TouchFakeRock", 1)
    _util.ClearCom()
    _util.SetupComNpc(_const.COM_DOT, _id.C2_Wilderness_Dot, 0)
    _util.LaunchCommunicator()
  else
    _util.SetVar("C2_TouchFakeRock", 1)
    _util.AddMonologue(_text.C2_FAKEROCK, "DialogStrings", _const.END_DIALOG, 0)
  end
  _util.PlaySFX(220)
end
