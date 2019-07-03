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
      _util.AddInventoryItem(_id.Inventory_RookieClue)
      repeat
        scriptWait()
      until _util.IsPopUpVisible() == false
      _util.RemoveMapAlert(_const.M4C1AGENTPLAZA)
      _util.SetVar("M4C1_RookieStatus", 3)
      _util.SetVar("M4C1_Helped_Rookie", 1)
      _util.IncVar("M4C1_Player_Has_Clue")
      if _util.GetVar("M4C1_Player_Has_Clue") == 3 then
        _util.SetObjective(652)
      end
      if _util.GetVar("M4C1_Helped_JPG") == 1 and _util.GetVar("M4C1_Helped_Dot") == 1 then
        _util.SetVar("M4C1_Gary_Var", 4)
      end
      _util.DelItem(_id.M4C1_Rookie_Clue)
    end
  end
  _util.StartMiniGame(_const.GARYS_NOTEBOOK, 1)
  scriptPlay(L0_0)
end
