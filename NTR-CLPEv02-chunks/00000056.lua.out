local L0_0, L1_1
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.CREATED
if L0_0 == L1_1 then
end
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.TOUCHED
if L0_0 == L1_1 then
  L0_0 = _util
  L0_0 = L0_0.GetConversationCount
  L0_0 = L0_0()
  if L0_0 == 0 then
    function L1_1()
      _util.DisplayPopUp(493, "UI/Smilie", false)
      repeat
        scriptWait()
      until _util.IsPopUpVisible() == false
      _util.IncVar("FPM10_PufflesFound")
      _util.AddMonologue(3975, "DialogStrings", _const.CHANGE_DIALOG, 1)
    end
    scriptPlay(L1_1)
  elseif L0_0 == 1 then
    function L1_1()
      _util.DisableInput()
      _util.SwitchState("disappear", _util.GetSelf())
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_util.GetSelf())
      _util.EnableInput()
      _util.DelItem(_util.GetSelf())
    end
    if _util.GetVar("FPM10_PufflesFound") == 4 then
      _util.AddMonologue(3977, "DialogStrings", _const.END_DIALOG, 0)
    elseif _util.GetVar("FPM10_PufflesFound") == 7 then
      _util.AddMonologue(3978, "DialogStrings", _const.END_DIALOG, 0)
    end
    scriptPlay(L1_1)
  end
end
