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
  L1_1 = L1_1.ITEM_DROPPED
  L0_0(L1_1)
end
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.TOUCHED
if L0_0 == L1_1 then
  L0_0 = _util
  L0_0 = L0_0.GetConversationCount
  L0_0 = L0_0()
  if L0_0 == 0 then
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("M4C1_Dot_Status")
    if L1_1 == 1 then
      function L1_1()
        repeat
          scriptWait()
        until _util.GetGameState() ~= _const.MISSION
        repeat
          scriptWait()
        until _util.GetGameState() == _const.MISSION
        if _util.GetMinigameOutput1() == 1 then
          _util.AddItem(_id.M4C1_DotDone_NightClub)
          _util.DelItem(_id.M4C1_Dot_NightClub)
          _util.SetCursorPos(_util.GetX(_id.M4C1_DotDone_NightClub), _util.GetY(_id.M4C1_DotDone_NightClub))
          _util.AddInventoryItem(_id.M4C1_HelmetClue)
          repeat
            scriptWait()
          until _util.IsPopUpVisible() == false
          _util.RemoveMapAlert(_const.M4C1AGENTNIGHT)
          _util.SetVar("M4C1_Dot_Status", 2)
          _util.SetVar("M4C1_Helped_Dot", 1)
          _util.IncVar("M4C1_Player_Has_Clue")
          if _util.GetVar("M4C1_Player_Has_Clue") == 3 then
            _util.SetObjective(809)
          end
          _util.AddMonologue(2308, "DialogStrings", _const.CHANGE_NPC, _id.M4C1_DotDone_NightClub, 20)
          _util.DelItem(_id.M4C1_ClueBucket)
        end
      end
      _util.StartMiniGame(_const.GARYS_NOTEBOOK, 0)
      scriptPlay(L1_1)
    end
  end
end
