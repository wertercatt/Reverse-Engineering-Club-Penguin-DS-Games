local L0_0
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
if L0_0 == _const.CREATED then
  L0_0 = _util
  L0_0 = L0_0.AddInterest
  L0_0(_const.TOUCHED)
end
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
if L0_0 == _const.TOUCHED then
  L0_0 = _util
  L0_0 = L0_0.GetVar
  L0_0 = L0_0("M2C1_dossierFound")
  if L0_0 == 0 then
    L0_0 = _util
    L0_0 = L0_0.SetVar
    L0_0("M2C1_dossierFound", 1)
    L0_0 = _util
    L0_0 = L0_0.GetVar
    L0_0 = L0_0("M2C1_DotIntroComplete")
    if L0_0 == 1 then
      L0_0 = _util
      L0_0 = L0_0.GetVar
      L0_0 = L0_0("M2C1_JetPackGuyIntroComplete")
      if L0_0 == 1 then
        L0_0 = _util
        L0_0 = L0_0.SetExitLocked
        L0_0(_id.Doors_Command2HQ, False)
      end
    end
    function L0_0()
      _util.SwitchState("closing", _id.Object_CommandTable)
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_id.Object_CommandTable)
    end
    scriptPlay(L0_0)
  end
end
