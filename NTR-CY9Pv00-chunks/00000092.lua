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
  L1_1 = L1_1.COMBINE
  L0_0(L1_1)
  L0_0 = _util
  L0_0 = L0_0.SetVar
  L1_1 = "C2_CombinePiece"
  L2_2 = 0
  L0_0(L1_1, L2_2)
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
  L3_3 = "C2_CombinePiece"
  L2_2 = L2_2(L3_3)
  L2_2 = L2_2 + 1
  L3_3 = _util
  L3_3 = L3_3.SetVar
  L3_3("C2_CombinePiece", L2_2)
  if L2_2 < 4 then
    L3_3 = _util
    L3_3 = L3_3.DelItem
    L3_3(L1_1)
  end
  if L2_2 == 1 then
    L3_3 = _util
    L3_3 = L3_3.IncVar
    L3_3("FoundAllBPPieces")
    L3_3 = _util
    L3_3 = L3_3.AddInventoryItem
    L3_3(_id.C2_bluePrintStack1)
  elseif L2_2 == 2 then
    L3_3 = _util
    L3_3 = L3_3.IncVar
    L3_3("FoundAllBPPieces")
    L3_3 = _util
    L3_3 = L3_3.RemoveInventoryItem
    L3_3(_id.C2_bluePrintStack1)
    L3_3 = _util
    L3_3 = L3_3.IncVar
    L3_3("FoundAllBPPieces")
    L3_3 = _util
    L3_3 = L3_3.AddInventoryItem
    L3_3(_id.C2_bluePrintStack2)
  elseif L2_2 == 3 then
    L3_3 = _util
    L3_3 = L3_3.IncVar
    L3_3("FoundAllBPPieces")
    L3_3 = _util
    L3_3 = L3_3.RemoveInventoryItem
    L3_3(_id.C2_bluePrintStack2)
    L3_3 = _util
    L3_3 = L3_3.AddInventoryItem
    L3_3(_id.C2_bluePrintStack3)
  elseif L2_2 >= 4 then
    L3_3 = _util
    L3_3 = L3_3.MarkObjComplete
    L3_3(_text.C2_2SUBOBJ1)
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
        _util.EnableInput()
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
    scriptPlay(L3_3)
  end
end
