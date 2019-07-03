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
L2_2 = L2_2.GetReason
L2_2 = L2_2()
L3_3 = _const
L3_3 = L3_3.ITEM_DROPPED
if L2_2 == L3_3 then
  L2_2 = _util
  L2_2 = L2_2.GetSource
  L2_2 = L2_2()
  L3_3 = _id
  L3_3 = L3_3.Inventory_ScissorsTool
  if L2_2 == L3_3 then
    L3_3 = print
    L3_3("DID WE DROP THE SCISSORS")
    L3_3 = _util
    L3_3 = L3_3.GetVar
    L3_3 = L3_3("M10_fakeHerbertDock")
    if L3_3 == 1 then
      L3_3 = print
      L3_3("NEED TO CUT ROPE")
      function L3_3()
        print("SO WE CUT ROPE")
        _util.DisableInput()
        _util.AddItem(_id.M10_NightClub_Scissors)
        _util.ChangeBaseAnim("MissionObjects/WaddleSquad/scripted/scissors", _id.M10_NightClub_Scissors)
        repeat
          scriptWait()
        until not _util.IsAnimPlaying(_id.M10_NightClub_Scissors)
        _util.DelItem(_id.M10_NightClub_Scissors)
        _util.SetVar("M10_ActivateHerbOnReturn", 1)
        _util.SetSpawn(1, _id.M10_NightClub0_Cage1)
        _util.SetSpawn(1, _id.M10_NightClub0_Cage2)
        _util.SetSpawn(1, _id.M10_NightClub0_Cage3)
        _util.StartCutscene(_const.NC_CAGEDROP)
        repeat
          scriptWait()
        until _util.GetGameState() ~= _const.MISSION
        repeat
          scriptWait()
        until _util.GetGameState() == _const.MISSION
        _util.DelItem(_id.M10_CageUp)
        _util.SetCursorPos(_util.GetX(_id.M10_NightClubHerbert), _util.GetY(_id.M10_NightClubHerbert))
        _util.SetVar("M10_fakeHerbertDock", 2)
        _util.ChangeBaseAnim("NPC/WaddleSquad/Herbert/NCAlone", _id.M10_NightClubHerbert)
        _util.ActivateNpc(_id.M10_NightClubHerbert, 1)
      end
      scriptPlay(L3_3)
    end
  end
end
