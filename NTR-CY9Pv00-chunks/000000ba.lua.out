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
  if L2_2 == 0 then
    L3_3 = _util
    L3_3 = L3_3.GetVar
    L4_4 = "GrabClues"
    L3_3 = L3_3(L4_4)
    if L3_3 == 1 then
      L3_3 = _util
      L3_3 = L3_3.AddMonologue
      L4_4 = _text
      L4_4 = L4_4.C2_DIRTPILE_CLEAN
      L3_3(L4_4, "DialogStrings", _const.CHANGE_DIALOG, 1)
    else
      L3_3 = _util
      L3_3 = L3_3.AddMonologue
      L4_4 = _text
      L4_4 = L4_4.C2_DIRTPILE_DIRTY
      L3_3(L4_4, "DialogStrings", _const.END_DIALOG, 0)
    end
  elseif L2_2 == 1 then
    function L3_3()
      _util.MarkSubObjComplete(_text.C2_OBJ3, _text.C2_3SUBOBJ1)
      _util.StartMiniGame(_const.JIGSAW, 7)
      repeat
        scriptWait()
      until _util.GetGameState() ~= _const.MISSION
      repeat
        scriptWait()
      until _util.GetGameState() == _const.MISSION
      if _util.GetMinigameOutput1() == 1 then
        _util.DisableInput()
        _util.SetVar("C2_SearchHerbsOldBase", 1)
        _util.SetVar("C2_Event", _id.C2_CombinedGridPaper)
        _util.MarkObjComplete(_text.C2_OBJ3)
        _util.AddInventoryItem(_id.C2_3x3Grid)
        _util.DelItem(_id.C2_GridPaper)
        repeat
          scriptWait()
        until _util.IsPopUpVisible()
        _util.EnableInput(true)
        repeat
          scriptWait()
        until not _util.IsPopUpVisible()
        if _util.GetVar("C2_TouchFakeRock") == 1 then
          _util.ClearCom()
          _util.SetupComNpc(_const.COM_DOT, _id.C2_Wilderness_Dot, 0)
          _util.LaunchCommunicator()
        end
      end
    end
    L4_4 = scriptPlay
    L4_4(L3_3)
  end
end
L3_3 = _util
L3_3 = L3_3.GetReason
L3_3 = L3_3()
L4_4 = _const
L4_4 = L4_4.ITEM_DROPPED
if L3_3 == L4_4 then
  L3_3 = _util
  L3_3 = L3_3.GetVar
  L4_4 = "GrabClues"
  L3_3 = L3_3(L4_4)
  if L3_3 == 0 then
    L3_3 = _util
    L3_3 = L3_3.GetSource
    L3_3 = L3_3()
    L4_4 = _id
    L4_4 = L4_4.Inventory_MechanoDuster
    if L3_3 == L4_4 then
      function L4_4()
        _util.SetNextRoom(15)
        _util.StartMiniGame(_const.MECHANO_DUSTER, _const.MECHANO_DIRT)
        repeat
          scriptWait()
        until _util.GetGameState() ~= _const.MISSION
        repeat
          scriptWait()
        until _util.GetGameState() == _const.MISSION
        if _util.GetMinigameOutput1() == 1 then
          _util.SetVar("GrabClues", 1)
          _util.DelItem(_id.C2_PileofDirt)
          _util.AddItem(_id.C2_GridPaper)
        end
      end
      scriptPlay(L4_4)
    end
  end
end
