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
if L3_3 == L4_4 and L2_2 == 0 then
  L3_3 = _util
  L3_3 = L3_3.AddMonologue
  L4_4 = _text
  L4_4 = L4_4.M6_WILDERNESS_PUFFLE_TOUCH
  L3_3(L4_4, "DialogStrings", _const.END_DIALOG, 0)
  L3_3 = _util
  L3_3 = L3_3.AddSubObjective
  L4_4 = _text
  L4_4 = L4_4.M6_OBJ2
  L3_3(L4_4, _text.M6_2SUBOBJ1)
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
  L4_4 = L4_4.M5_OberryBag
  if L3_3 == L4_4 then
    function L4_4()
      local L0_5, L1_6
      L0_5 = _util
      L0_5 = L0_5.DisableInput
      L0_5()
      L0_5 = _util
      L0_5 = L0_5.IsCommandCoachActive
      L0_5 = L0_5()
      if not L0_5 then
        L0_5 = _util
        L0_5 = L0_5.SetPuffle
        L1_6 = _id
        L1_6 = L1_6.Inventory_NoPuffle
        L0_5(L1_6)
      end
      L0_5 = _util
      L0_5 = L0_5.ChangeBaseAnim
      L1_6 = "NPC/Puffles/Black/BlackPuffle"
      L0_5(L1_6)
      L0_5 = _util
      L0_5 = L0_5.SwitchState
      L1_6 = "feed"
      L0_5(L1_6, _util.GetSelf())
      repeat
        L0_5 = scriptWait
        L0_5()
        L0_5 = _util
        L0_5 = L0_5.IsAnimPlaying
        L1_6 = _util
        L1_6 = L1_6.GetSelf
        L1_6 = L1_6()
        L0_5 = L0_5(L1_6, L1_6())
      until not L0_5
      L0_5 = _util
      L0_5 = L0_5.DelItem
      L1_6 = _id
      L1_6 = L1_6.M6_PuffleInDistance1
      L0_5(L1_6)
      L0_5 = _util
      L0_5 = L0_5.DelItem
      L1_6 = _id
      L1_6 = L1_6.M6_PuffleInDistance2
      L0_5(L1_6)
      L0_5 = _util
      L0_5 = L0_5.EnableInput
      L0_5()
      L0_5 = _util
      L0_5 = L0_5.AddMonologue
      L1_6 = _text
      L1_6 = L1_6.M3_BLACK_PUFFLE_IS_NORMAL
      L0_5(L1_6, "DialogStrings", _const.END_DIALOG, 0)
      L0_5 = _util
      L0_5 = L0_5.SetVar
      L1_6 = "M5_havePuffle"
      L0_5(L1_6, 1)
      L0_5 = _util
      L0_5 = L0_5.GetX
      L0_5 = L0_5()
      L1_6 = _util
      L1_6 = L1_6.GetY
      L1_6 = L1_6()
      _util.DelItem(_util.GetSelf())
      _util.SetPuffle(_id.Inventory_PuffleBlack)
      _util.SetPuffleX(445)
      _util.EnablePuffle(_id.Enable_PuffleBlack)
      _util.MarkSubObjComplete(_text.M6_OBJ2, _text.M6_2SUBOBJ1)
      movePuffle(L0_5, L1_6, _util.GetPuffleX(), _util.GetPuffleY(), 30, true, 75)
    end
    _util.ClearObjective()
    scriptPlay(L4_4)
  end
end
