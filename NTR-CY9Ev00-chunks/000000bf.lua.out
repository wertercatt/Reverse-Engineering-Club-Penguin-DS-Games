local L0_0, L1_1, L2_2, L3_3
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.CREATED
if L0_0 == L1_1 then
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
  L3_3 = _util
  L3_3 = L3_3.GetVar
  L3_3 = L3_3("M6_lever")
  if L3_3 == 1 then
    function L3_3()
      _util.DisableInput()
      _util.SetVar("M6_lever", 2)
      _util.SwitchState("forward2reverse", _id.M6_Shifter)
      _util.PlaySFX(200)
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_id.M6_Shifter)
      repeat
        scriptWait()
      until 0 + 1 >= 30
      _util.AddItem(_id.M6_ShifterReverse)
      _util.AddItem(_id.M6_HerbStanding)
      _util.DelItem(_id.M6_Fishing_HerbEat)
      _util.MarkObjComplete(_text.M6_OBJ7)
      _util.ActivateNpc(_id.M6_HerbStanding, 8)
      _util.DelItem(_id.M6_Shifter)
      _util.EnableInput()
    end
    scriptPlay(L3_3)
  end
end
