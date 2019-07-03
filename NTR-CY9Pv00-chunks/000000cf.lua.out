local L0_0, L1_1, L2_2, L3_3
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.CREATED
if L0_0 == L1_1 then
  L0_0 = _util
  L0_0 = L0_0.AddInterest
  L1_1 = _const
  L1_1 = L1_1.ITEM_DROPPED
  L0_0(L1_1)
end
L0_0 = _util
L0_0 = L0_0.GetActiveMission
L0_0 = L0_0()
L1_1 = _util
L1_1 = L1_1.GetActiveChapter
L1_1 = L1_1()
L2_2 = _util
L2_2 = L2_2.GetConversationCount
L2_2 = L2_2()
L3_3 = _util
L3_3 = L3_3.GetReason
L3_3 = L3_3()
if L3_3 == _const.TOUCHED then
  function L3_3()
    _util.SetVar("hotCocoaTaken", 1)
    _util.MarkSubObjComplete(_text.M5_OBJ1, _text.M5_1SUBOBJ3)
    if _util.GetVar("hotTaken") == 1 and _util.GetVar("fuelTaken") == 1 then
      _util.SetObjective(_text.M5_OBJ2)
      _util.AddObjective(_text.M5_OBJ2)
      _util.MarkObjComplete(_text.M5_OBJ1)
    end
    _util.DisableInput()
    repeat
      scriptWait()
    until _util.IsPopUpVisible()
    _util.EnableInput()
    repeat
      scriptWait()
    until not _util.IsPopUpVisible()
    _util.DisableInput()
    repeat
      scriptWait()
    until 0 + 1 >= 30
    _util.EnableInput()
    _util.ChangeRoom(19)
  end
  scriptPlay(L3_3)
end
