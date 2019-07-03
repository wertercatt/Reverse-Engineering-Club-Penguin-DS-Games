local L0_0, L1_1
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.CREATED
if L0_0 == L1_1 then
  L0_0 = _util
  L0_0 = L0_0.AddInterest
  L1_1 = _const
  L1_1 = L1_1.AFTER_DIALOG
  L0_0(L1_1)
end
L0_0 = _util
L0_0 = L0_0.GetConversationCount
L0_0 = L0_0()
L1_1 = _util
L1_1 = L1_1.GetReason
L1_1 = L1_1()
if L1_1 == _const.TOUCHED then
  L1_1 = _util
  L1_1 = L1_1.GetVar
  L1_1 = L1_1("C1_TC7_idleHook_dot")
  if L1_1 == 1 then
    L1_1 = _util
    L1_1 = L1_1.SetVar
    L1_1("C1_TC7_idleHook_dot", 0)
    L0_0 = 4
  end
  L1_1 = _util
  L1_1 = L1_1.GetVar
  L1_1 = L1_1("C1_TC7_requestItemHook_dot")
  if L1_1 == 1 then
    L1_1 = _util
    L1_1 = L1_1.SetVar
    L1_1("C1_TC7_requestItemHook_dot", 0)
    L0_0 = 6
  end
  L1_1 = _util
  L1_1 = L1_1.GetVar
  L1_1 = L1_1("C1_TC7_doneHook_dot")
  if L1_1 == 1 then
    L1_1 = _util
    L1_1 = L1_1.SetVar
    L1_1("C1_TC7_doneHook_dot", 0)
    L0_0 = 13
  end
  if L0_0 == 0 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.C1_TC4_DOT_1, _const.CHANGE_DIALOG, -1, 100)
  elseif L0_0 == 100 then
    function L1_1()
      _util.DisableInput()
      _util.AddItem(_id.M1_T7_Rookie)
      _util.PushCamera(_id.M1_T7_Rookie)
      _util.ChangeBaseAnim("NPC/M1/Rookie/RookieFlyUp", _id.M1_T7_Rookie, "Cliff")
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_id.M1_T7_Rookie)
      _util.ChangeBaseAnim("NPC/M1/Rookie/RookieUpCliffWithFish", _id.M1_T7_Rookie)
      _util.EnableInput()
      _util.SetVar("RookieFlyUpCliff", 1)
      _util.PopCamera()
      _util.ActivateNpc(_id.M1_T7_Rookie, 0)
    end
    scriptPlay(L1_1)
  elseif L0_0 == 1 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.C1_TC4_DOT_2, _const.CHANGE_NPC, _id.M1_T7_Rookie, 1)
  elseif L0_0 == 2 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.C1_TC4_DOT_3, _const.CHANGE_NPC, _id.M1_T7_JPG, 1)
  elseif L0_0 == 3 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.C1_TC4_DOT_4)
    L1_1 = _util
    L1_1 = L1_1.AddPlayerOption
    L1_1(_text.C1_TC4_A_4A, _const.END_DIALOG, -1, 4)
    L1_1 = _util
    L1_1 = L1_1.AddPlayerOption
    L1_1(_text.C1_TC4_A_4B, _const.END_DIALOG, -1, 4)
    L1_1 = _util
    L1_1 = L1_1.SetConversationCount
    L1_1(3, _id.M1_T7_Rookie)
    L1_1 = _util
    L1_1 = L1_1.SetConversationCount
    L1_1(2, _id.M1_T7_JPG)
  elseif L0_0 == 4 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.C1_TC4_DOT_9)
    L1_1 = _util
    L1_1 = L1_1.AddPlayerOption
    L1_1(_text.C1_TC4_A_9A, _const.END_DIALOG, -1, 4)
    L1_1 = _util
    L1_1 = L1_1.AddPlayerOption
    L1_1(_text.C1_TC4_A_9B, _const.CHANGE_DIALOG, -1, 7)
  elseif L0_0 == 7 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.C1_TC4_DOT_10, _const.END_DIALOG, -1, 7)
    L1_1 = _util
    L1_1 = L1_1.IncVar
    L1_1("C1_HaveAllItemsForBars")
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("C1_HaveAllItemsForBars")
    if L1_1 >= 3 then
      L1_1 = _util
      L1_1 = L1_1.MarkSubObjComplete
      L1_1(_text.C1_OBJ7, _text.C1_7SUBOBJ1)
      L1_1 = _util
      L1_1 = L1_1.AddSubObjective
      L1_1(_text.C1_OBJ7, _text.C1_7SUBOBJ2)
      L1_1 = _util
      L1_1 = L1_1.AddSubObjective
      L1_1(_text.C1_OBJ7, _text.C1_7SUBOBJ3)
    end
  elseif L0_0 == 8 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.C1_TC4_DOT_11)
    L1_1 = _util
    L1_1 = L1_1.AddPlayerOption
    L1_1(_text.C1_TC4_A_11A, _const.CHANGE_NPC, _id.M1_T7_JPG, 9)
    L1_1 = _util
    L1_1 = L1_1.AddPlayerOption
    L1_1(_text.C1_TC4_A_11B, _const.CHANGE_NPC, _id.M1_T7_JPG, 9)
  elseif L0_0 == 9 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.C1_TC4_DOT_12, _const.END_DIALOG, -1, 13)
    L1_1 = _util
    L1_1 = L1_1.SetVar
    L1_1("C1_TC7_doneHook_dot", 1)
    L1_1 = _util
    L1_1 = L1_1.SetVar
    L1_1("C1_TC7_doneHook_jpg", 1)
    L1_1 = _util
    L1_1 = L1_1.SetVar
    L1_1("C1_TC7_doneHook_rookie", 1)
  elseif L0_0 == 12 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.C1_TC4_DUMMY_B, _const.END_DIALOG, -1, 12)
  elseif L0_0 == 13 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.C1_TC4_DUMMY_B2, _const.END_DIALOG, -1, 13)
  end
end
L1_1 = _util
L1_1 = L1_1.GetReason
L1_1 = L1_1()
if L1_1 == _const.AFTER_DIALOG and L0_0 == 7 then
  L1_1 = _util
  L1_1 = L1_1.SetConversationCount
  L1_1(12)
  L1_1 = _util
  L1_1 = L1_1.AddInventoryItem
  L1_1(_id.C1_InventoryItem_String)
end
