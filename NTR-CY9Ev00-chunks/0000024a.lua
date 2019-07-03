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
  L1_1 = L1_1.COMBINE
  L0_0(L1_1)
  L0_0 = _util
  L0_0 = L0_0.SetVar
  L1_1 = "C2_CombinePiece"
  L2_2 = 0
  L0_0(L1_1, L2_2)
  L0_0 = _util
  L0_0 = L0_0.AddInterest
  L1_1 = _const
  L1_1 = L1_1.ITEM_DROPPED
  L0_0(L1_1)
  L0_0 = _util
  L0_0 = L0_0.AddInterest
  L1_1 = _const
  L1_1 = L1_1.COLLIDED
  L0_0(L1_1)
end
L0_0 = _util
L0_0 = L0_0.GetConversationCount
L0_0 = L0_0()
L1_1 = _util
L1_1 = L1_1.GetReason
L1_1 = L1_1()
L2_2 = _const
L2_2 = L2_2.TOUCHED
if L1_1 == L2_2 then
  L1_1 = _util
  L1_1 = L1_1.GetSelf
  L1_1 = L1_1()
  L2_2 = _util
  L2_2 = L2_2.GetVar
  L3_3 = "BPFall"
  L2_2 = L2_2(L3_3)
  if L2_2 == 1 then
    L2_2 = _util
    L2_2 = L2_2.GetVar
    L3_3 = "C2_CombinePiece"
    L2_2 = L2_2(L3_3)
    L2_2 = L2_2 + 1
    L3_3 = _util
    L3_3 = L3_3.SetVar
    L4_4 = "C2_CombinePiece"
    L3_3(L4_4, L2_2)
    if L2_2 < 4 then
      L3_3 = _util
      L3_3 = L3_3.DelItem
      L4_4 = L1_1
      L3_3(L4_4)
    end
    if L2_2 == 1 then
      L3_3 = _util
      L3_3 = L3_3.IncVar
      L4_4 = "FoundAllBPPieces"
      L3_3(L4_4)
      L3_3 = _util
      L3_3 = L3_3.AddInventoryItem
      L4_4 = _id
      L4_4 = L4_4.C2_bluePrintStack1
      L3_3(L4_4)
    elseif L2_2 == 2 then
      L3_3 = _util
      L3_3 = L3_3.IncVar
      L4_4 = "FoundAllBPPieces"
      L3_3(L4_4)
      L3_3 = _util
      L3_3 = L3_3.RemoveInventoryItem
      L4_4 = _id
      L4_4 = L4_4.C2_bluePrintStack1
      L3_3(L4_4)
      L3_3 = _util
      L3_3 = L3_3.AddInventoryItem
      L4_4 = _id
      L4_4 = L4_4.C2_bluePrintStack2
      L3_3(L4_4)
    elseif L2_2 == 3 then
      L3_3 = _util
      L3_3 = L3_3.IncVar
      L4_4 = "FoundAllBPPieces"
      L3_3(L4_4)
      L3_3 = _util
      L3_3 = L3_3.RemoveInventoryItem
      L4_4 = _id
      L4_4 = L4_4.C2_bluePrintStack2
      L3_3(L4_4)
      L3_3 = _util
      L3_3 = L3_3.IncVar
      L4_4 = "FoundAllBPPieces"
      L3_3(L4_4)
      L3_3 = _util
      L3_3 = L3_3.AddInventoryItem
      L4_4 = _id
      L4_4 = L4_4.C2_bluePrintStack3
      L3_3(L4_4)
    elseif L2_2 >= 4 then
      L3_3 = _util
      L3_3 = L3_3.MarkObjComplete
      L4_4 = _text
      L4_4 = L4_4.C2_2SUBOBJ1
      L3_3(L4_4)
      function L3_3()
        _util.StartMiniGame(_const.JIGSAW, 4)
        repeat
          scriptWait()
        until _util.GetGameState() ~= _const.MISSION
        repeat
          scriptWait()
        until _util.GetGameState() == _const.MISSION
        if _util.GetMinigameOutput1() == 1 then
          _util.DisableInput()
          _util.DelItem(_UPVALUE0_)
          _util.RemoveInventoryItem(_id.C2_bluePrintStack3)
          _util.AddInventoryItem(_id.C2_Blueprint)
          _util.SetVar("C2_Event", _id.C2_FoundBluePrint)
          repeat
            scriptWait()
          until _util.IsPopUpVisible()
          _util.EnableInput(true)
          repeat
            scriptWait()
          until not _util.IsPopUpVisible()
          _util.DisableInput()
          repeat
            scriptWait()
          until 40 - 1 == 0
          _util.EnableInput(true)
          _util.MarkObjComplete(_text.C2_OBJ2)
          _util.IncVar("FoundAllBPPieces")
          _util.ClearCom()
          _util.SetupComNpc(_const.COM_GARY, _id.C2_CR_Gary, 0)
          _util.LaunchCommunicator()
        end
      end
      L4_4 = scriptPlay
      L4_4(L3_3)
    end
  else
    L2_2 = _util
    L2_2 = L2_2.GetVar
    L3_3 = "BPFall"
    L2_2 = L2_2(L3_3)
    if L2_2 == 0 then
      L2_2 = _util
      L2_2 = L2_2.AddPlayerThought
      L3_3 = _text
      L3_3 = L3_3.C2_BLUEPRINT_TREE
      L2_2(L3_3)
    end
  end
end
L1_1 = _util
L1_1 = L1_1.GetReason
L1_1 = L1_1()
L2_2 = _const
L2_2 = L2_2.ITEM_DROPPED
if L1_1 == L2_2 then
  L1_1 = _util
  L1_1 = L1_1.GetSource
  L1_1 = L1_1()
  L2_2 = _id
  L2_2 = L2_2.Inventory_PuffleBlue
  if L1_1 == L2_2 then
    L2_2 = _util
    L2_2 = L2_2.GetVar
    L3_3 = "BPFall"
    L2_2 = L2_2(L3_3)
    if L2_2 == 0 then
      L2_2 = _util
      L2_2 = L2_2.SetVar
      L3_3 = "BPFall"
      L4_4 = 1
      L2_2(L3_3, L4_4)
      L2_2 = _util
      L2_2 = L2_2.SetSuccess
      L3_3 = _util
      L3_3 = L3_3.GetSelf
      L3_3 = L3_3()
      L4_4 = true
      L2_2(L3_3, L4_4)
    end
  end
  L2_2 = _id
  L2_2 = L2_2.Inventory_PuffleGreen
  if L1_1 == L2_2 then
    L2_2 = _util
    L2_2 = L2_2.GetVar
    L3_3 = "BPFall"
    L2_2 = L2_2(L3_3)
    if L2_2 == 0 then
      L2_2 = _util
      L2_2 = L2_2.SetSuccess
      L3_3 = _util
      L3_3 = L3_3.GetSelf
      L3_3 = L3_3()
      L4_4 = true
      L2_2(L3_3, L4_4)
    end
  end
end
L1_1 = _util
L1_1 = L1_1.GetReason
L1_1 = L1_1()
L2_2 = _const
L2_2 = L2_2.COLLIDED
if L1_1 == L2_2 then
  L1_1 = _util
  L1_1 = L1_1.GetSource
  L1_1 = L1_1()
  L2_2 = _id
  L2_2 = L2_2.Inventory_PuffleBlue
  if L1_1 == L2_2 then
    L2_2 = _util
    L2_2 = L2_2.GetVar
    L3_3 = "PuffleGetClue"
    L2_2 = L2_2(L3_3)
    if L2_2 == 0 then
      function L2_2()
        _util.DisableInput()
        _util.ChangeBaseAnim("MissionObjects/M2/blueprintPieceB_fall", _id.C2_BlueprintTree)
        repeat
          scriptWait()
        until not _util.IsAnimPlaying(_util.GetSelf())
        _util.ChangeBaseAnim("MissionObjects/M2/blueprintPieceB_fallen", _id.C2_BlueprintTree)
        _util.SetVar("PuffleGetClue", 1)
        _util.EnableInput(true)
      end
      L3_3 = scriptPlay
      L4_4 = L2_2
      L3_3(L4_4)
    end
  end
  L2_2 = _id
  L2_2 = L2_2.Inventory_PuffleGreen
  if L1_1 == L2_2 then
    L2_2 = _util
    L2_2 = L2_2.GetSelf
    L2_2 = L2_2()
    L3_3 = _util
    L3_3 = L3_3.GetVar
    L4_4 = "C2_CombinePiece"
    L3_3 = L3_3(L4_4)
    L3_3 = L3_3 + 1
    L4_4 = _util
    L4_4 = L4_4.SetVar
    L4_4("C2_CombinePiece", L3_3)
    if L3_3 < 4 then
      L4_4 = _util
      L4_4 = L4_4.DelItem
      L4_4(L2_2)
    end
    if L3_3 == 1 then
      L4_4 = _util
      L4_4 = L4_4.IncVar
      L4_4("FoundAllBPPieces")
      L4_4 = _util
      L4_4 = L4_4.AddInventoryItem
      L4_4(_id.C2_bluePrintStack1)
    elseif L3_3 == 2 then
      L4_4 = _util
      L4_4 = L4_4.IncVar
      L4_4("FoundAllBPPieces")
      L4_4 = _util
      L4_4 = L4_4.RemoveInventoryItem
      L4_4(_id.C2_bluePrintStack1)
      L4_4 = _util
      L4_4 = L4_4.IncVar
      L4_4("FoundAllBPPieces")
      L4_4 = _util
      L4_4 = L4_4.AddInventoryItem
      L4_4(_id.C2_bluePrintStack2)
    elseif L3_3 == 3 then
      L4_4 = _util
      L4_4 = L4_4.IncVar
      L4_4("FoundAllBPPieces")
      L4_4 = _util
      L4_4 = L4_4.RemoveInventoryItem
      L4_4(_id.C2_bluePrintStack2)
      L4_4 = _util
      L4_4 = L4_4.IncVar
      L4_4("FoundAllBPPieces")
      L4_4 = _util
      L4_4 = L4_4.AddInventoryItem
      L4_4(_id.C2_bluePrintStack3)
    elseif L3_3 >= 4 then
      L4_4 = _util
      L4_4 = L4_4.MarkObjComplete
      L4_4(_text.C2_2SUBOBJ1)
      function L4_4()
        _util.StartMiniGame(_const.JIGSAW, 4)
        repeat
          scriptWait()
        until _util.GetGameState() ~= _const.MISSION
        repeat
          scriptWait()
        until _util.GetGameState() == _const.MISSION
        if _util.GetMinigameOutput1() == 1 then
          _util.DisableInput()
          _util.DelItem(_UPVALUE0_)
          _util.RemoveInventoryItem(_id.C2_bluePrintStack3)
          _util.AddInventoryItem(_id.C2_Blueprint)
          _util.SetVar("C2_Event", _id.C2_FoundBluePrint)
          repeat
            scriptWait()
          until _util.IsPopUpVisible()
          _util.EnableInput(true)
          repeat
            scriptWait()
          until not _util.IsPopUpVisible()
          _util.DisableInput()
          repeat
            scriptWait()
          until 40 - 1 == 0
          _util.EnableInput()
          _util.MarkObjComplete(_text.C2_OBJ2)
          _util.IncVar("FoundAllBPPieces")
          _util.ClearCom()
          _util.SetupComNpc(_const.COM_GARY, _id.C2_CR_Gary, 0)
          _util.LaunchCommunicator()
        end
      end
      scriptPlay(L4_4)
    end
  end
end
