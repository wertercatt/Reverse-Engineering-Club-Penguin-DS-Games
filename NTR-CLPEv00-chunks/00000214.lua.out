local L0_0
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
if L0_0 == _const.CREATED then
end
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
if L0_0 == _const.TOUCHED then
  function L0_0()
    repeat
      scriptWait()
    until _util.GetGameState() ~= _const.MISSION
    repeat
      scriptWait()
    until _util.GetGameState() == _const.MISSION
    if _util.GetMinigameOutput1() == 1 then
      _util.AddInventoryItem(_id.M4C1_JPGClue)
      repeat
        scriptWait()
      until _util.IsPopUpVisible() == false
      _util.RemoveMapAlert(_const.M4C1AGENTLODGE)
      _util.SetVar("M4C1_Helped_JPG", 1)
      _util.IncVar("M4C1_Player_Has_Clue")
      if _util.GetVar("M4C1_Player_Has_Clue") == 3 then
        _util.SetObjective(809)
      end
      _util.ActivateNpc(_id.M4C1_JPG_Fishing, 20)
      _util.DelItem(_id.M4C1_JPG_Clue)
    end
  end
  _util.StartMiniGame(_const.GARYS_NOTEBOOK, 2)
  scriptPlay(L0_0)
end
