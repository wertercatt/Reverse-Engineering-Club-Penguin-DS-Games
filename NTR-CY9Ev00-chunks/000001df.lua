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
  L3_3 = L3_3("GrabDVDs")
  if L3_3 == 2 then
    function L3_3()
      _util.StartMiniGame(_const.DISCCLEANER, 0)
      repeat
        scriptWait()
      until _util.GetGameState() ~= _const.MISSION
      repeat
        scriptWait()
      until _util.GetGameState() == _const.MISSION
      if _util.GetMinigameOutput1() == 1 then
        _util.RemoveInventoryItem(_id.M11_EmptyBox)
        _util.AddInventoryItem(_id.M11_DVDsInBox)
        _util.MarkObjComplete(_text.M11_3SUBOBJ2)
        _util.AddObjective(_text.M11_OBJ3B)
        _util.SetVar("HaveDVD", 2)
        _util.DelItem(_id.M11_DVDs)
        _util.SetVar("AskForMoreDVDs", 1)
      end
    end
    scriptPlay(L3_3)
  else
    L3_3 = _util
    L3_3 = L3_3.AddPlayerThought
    L3_3(_text.M11_LH_DVDs)
  end
end
L3_3 = _util
L3_3 = L3_3.GetReason
L3_3 = L3_3()
if L3_3 == _const.COMBINE then
  L3_3 = _util
  L3_3 = L3_3.GetSource
  L3_3 = L3_3()
  if L3_3 == _id.M11_EmptyBox then
    _util.RemoveInventoryItem(_id.M11_EmptyBox)
    _util.RemoveInventoryItem(_id.M11_DVDs)
    _util.AddInventoryItem(_id.M11_DVDsInBox)
    _util.SetCombinationSuccess(1)
  end
end
