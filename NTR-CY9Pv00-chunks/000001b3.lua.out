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
  if L2_2 == 0 then
    L3_3 = _util
    L3_3 = L3_3.AddNPCText
    L3_3(_text.M11_PPA_TBP_1)
    L3_3 = _util
    L3_3 = L3_3.AddPlayerOption
    L3_3(_text.M11_PPA_A_QUIT, _const.END_DIALOG, -1, 0)
    L3_3 = _util
    L3_3 = L3_3.GetVar
    L3_3 = L3_3("FindDVD")
    if L3_3 == 1 then
      L3_3 = _util
      L3_3 = L3_3.AddPlayerOption
      L3_3(_text.M11_PPA_A_1, _const.CHANGE_DIALOG, -1, 1)
    end
  elseif L2_2 == 1 then
    L3_3 = _util
    L3_3 = L3_3.AddNPCText
    L3_3(_text.M11_PPA_TBP_2)
    L3_3 = _util
    L3_3 = L3_3.AddPlayerOption
    L3_3(_text.M11_PPA_A_2, _const.CHANGE_DIALOG, -1, 2)
  elseif L2_2 == 2 then
    L3_3 = _util
    L3_3 = L3_3.AddNPCText
    L3_3(_text.M11_PPA_TBP_3)
    L3_3 = _util
    L3_3 = L3_3.AddPlayerOption
    L3_3(_text.M11_PPA_A_3A, _const.CHANGE_DIALOG, -1, 3)
    L3_3 = _util
    L3_3 = L3_3.AddPlayerOption
    L3_3(_text.M11_PPA_A_3B, _const.CHANGE_DIALOG, -1, 4)
    L3_3 = _util
    L3_3 = L3_3.AddPlayerOption
    L3_3(_text.M11_PPA_A_3C, _const.CHANGE_DIALOG, -1, 5)
  elseif L2_2 == 3 then
    L3_3 = _util
    L3_3 = L3_3.AddNPCText
    L3_3(_text.M11_PPA_TBP_4A)
    L3_3 = _util
    L3_3 = L3_3.AddPlayerOption
    L3_3(_text.M11_PPA_A_5, _const.CHANGE_DIALOG, -1, 6)
  elseif L2_2 == 4 then
    L3_3 = _util
    L3_3 = L3_3.AddNPCText
    L3_3(_text.M11_PPA_TBP_4B)
    L3_3 = _util
    L3_3 = L3_3.AddPlayerOption
    L3_3(_text.M11_PPA_A_5, _const.CHANGE_DIALOG, -1, 6)
  elseif L2_2 == 5 then
    L3_3 = _util
    L3_3 = L3_3.AddNPCText
    L3_3(_text.M11_PPA_TBP_4C)
    L3_3 = _util
    L3_3 = L3_3.AddPlayerOption
    L3_3(_text.M11_PPA_A_5, _const.CHANGE_DIALOG, -1, 6)
  elseif L2_2 == 6 then
    L3_3 = _util
    L3_3 = L3_3.GetVar
    L3_3 = L3_3("FoundMancalaBoard")
    if L3_3 > 0 then
      L3_3 = _util
      L3_3 = L3_3.AddNPCText
      L3_3(_text.M11_PPA_A_9_1)
      L3_3 = _util
      L3_3 = L3_3.AddPlayerOption
      L3_3(_text.M11_PPA_A_9, _const.END_DIALOG, -1, 6)
    else
      L3_3 = _util
      L3_3 = L3_3.AddNPCText
      L3_3(_text.M11_PPA_TBP_5, _const.END_DIALOG, -1, 6)
      L3_3 = _util
      L3_3 = L3_3.SetVar
      L3_3("FindMancalaPieces", 1)
    end
  elseif L2_2 == 8 then
    function L3_3()
      _util.DisableInput()
      _util.AddInventoryItem(_id.M11_DVDs2)
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
      until 40 - 1 == 0
      _util.EnableInput()
      _util.SetVar("HaveDVD", 2)
      _util.MarkObjComplete(_text.M11_3SUBOBJ2)
      _util.AddObjective(_text.M11_OBJ3B)
      _util.AddNPCText(_text.M11_PPA_TBP_9A, _const.END_DIALOG, -1, 20)
    end
    scriptPlay(L3_3)
  elseif L2_2 == 20 then
    L3_3 = _util
    L3_3 = L3_3.AddNPCText
    L3_3(_text.M11_PPA_TBP_9A, _const.END_DIALOG, -1, 20)
  elseif L2_2 == 10 then
    L3_3 = _util
    L3_3 = L3_3.HasInventoryItem
    L3_3 = L3_3(_id.M11_Marbles2)
    if L3_3 then
      L3_3 = _util
      L3_3 = L3_3.AddNPCText
      L3_3(_text.M11_STAGENPC_MARBS, _const.END_DIALOG, -1, 10)
    else
      L3_3 = _util
      L3_3 = L3_3.AddNPCText
      L3_3(_text.M11_PPA_TBP_9B)
      L3_3 = _util
      L3_3 = L3_3.AddPlayerOption
      L3_3(_text.M11_PPA_A_10A, _const.CHANGE_DIALOG, -1, 11)
      L3_3 = _util
      L3_3 = L3_3.AddPlayerOption
      L3_3(_text.M11_PPA_A_10B, _const.CHANGE_DIALOG, -1, 12)
    end
  elseif L2_2 == 11 then
    L3_3 = _util
    L3_3 = L3_3.AddNPCText
    L3_3(_text.M11_PPA_TBP_10A, _const.END_DIALOG, -1, 11)
  elseif L2_2 == 12 then
    L3_3 = _util
    L3_3 = L3_3.AddNPCText
    L3_3(_text.M11_PPA_TBP_10B, _const.END_DIALOG, -1, 11)
  end
end
L3_3 = _util
L3_3 = L3_3.GetReason
L3_3 = L3_3()
if L3_3 == _const.ITEM_DROPPED then
  L3_3 = _util
  L3_3 = L3_3.GetSource
  L3_3 = L3_3()
  if L3_3 == _id.M11_MancalaBoard then
    if _util.GetVar("FindMancalaPieces") == 1 then
      _util.SetVar("M11_GaveBoard", 1)
      _util.RemoveInventoryItem(_id.M11_MancalaBoard)
      _util.ActivateNpc(_util.GetSelf(), 10)
    end
  elseif L3_3 == _id.M11_MancalawMarb then
    _util.RemoveInventoryItem(_id.M11_MancalawMarb)
    _util.ActivateNpc(_util.GetSelf(), 8)
  elseif L3_3 == _id.M11_Marbles2 and _util.GetVar("M11_GaveBoard") == 1 then
    _util.RemoveInventoryItem(_id.M11_Marbles2)
    _util.ActivateNpc(_util.GetSelf(), 8)
  end
end
