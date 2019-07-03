local L0_0, L1_1, L2_2, L3_3, L4_4
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
L4_4 = _const
L4_4 = L4_4.TOUCHED
if L3_3 == L4_4 then
  L3_3 = _util
  L3_3 = L3_3.GetVar
  L4_4 = "chocolateFilled"
  L3_3 = L3_3(L4_4)
  if L3_3 == 0 then
    L3_3 = _util
    L3_3 = L3_3.AddMonologue
    L4_4 = _text
    L4_4 = L4_4.M5_COFFEESHOP_CHOCOHOLE_TOUCH
    L3_3(L4_4, "DialogStrings", _const.END_DIALOG, 0)
    L3_3 = _util
    L3_3 = L3_3.HasInventoryItem
    L4_4 = _id
    L4_4 = L4_4.M5_ChocolateSauce
    L3_3 = L3_3(L4_4)
    if not L3_3 then
      L3_3 = _util
      L3_3 = L3_3.GetVar
      L4_4 = "chocolateFilled"
      L3_3 = L3_3(L4_4)
      if L3_3 == 0 then
        L3_3 = _util
        L3_3 = L3_3.AddSubObjective
        L4_4 = _text
        L4_4 = L4_4.M5_OBJ1
        L3_3(L4_4, _text.M5_1SUBOBJ1)
      end
    end
  else
    L3_3 = _util
    L3_3 = L3_3.AddMonologue
    L4_4 = _text
    L4_4 = L4_4.M5_COFFEESHOP_CHOCOBUTTON_TOUCH
    L3_3(L4_4, "DialogStrings", _const.END_DIALOG, 0)
  end
end
L3_3 = _util
L3_3 = L3_3.GetReason
L3_3 = L3_3()
L4_4 = _const
L4_4 = L4_4.ITEM_DROPPED
if L3_3 == L4_4 then
  L3_3 = _util
  L3_3 = L3_3.GetSource
  L3_3 = L3_3()
  L4_4 = _id
  L4_4 = L4_4.M5_ChocolateSauce
  if L3_3 == L4_4 then
    function L4_4()
      _util.DisableInput()
      _util.SetVar("chocolateFilled", 1)
      _util.RemoveInventoryItem(_id.M5_ChocolateSauce)
      _util.SwitchState("AddChoco", _util.GetSelf())
      _util.PlaySFX(197)
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_util.GetSelf())
      _util.EnableInput()
    end
    scriptPlay(L4_4)
  end
end
