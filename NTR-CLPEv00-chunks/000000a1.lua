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
  L1_1 = _util
  L1_1 = L1_1.GetVar
  L1_1 = L1_1("M4C3_touchedLootOnce")
  if L1_1 == 0 then
    if L0_0 == 0 then
      L1_1 = _util
      L1_1 = L1_1.AddMonologue
      L1_1(2799, "DialogStrings", _const.CHANGE_DIALOG, 1)
    elseif L0_0 == 1 then
      function L1_1()
        _util.SwitchState("tap", _util.GetSelf())
        repeat
          scriptWait()
        until not _util.IsAnimPlaying(_util.GetSelf())
        _util.AddInventoryItem(_id.M4C3_Fuel)
        repeat
          scriptWait()
        until _util.IsPopUpVisible() == false
        _util.SwitchState("", _util.GetSelf())
        _util.SetSpawn(1, _util.GetSelf())
      end
      scriptPlay(L1_1)
      _util.SetVar("M4C3_touchedLootOnce", 1)
    end
  else
    L1_1 = _util
    L1_1 = L1_1.AddMonologue
    L1_1(2801, "DialogStrings", _const.END_DIALOG, 0)
  end
end
