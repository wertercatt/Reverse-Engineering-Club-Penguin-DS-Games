local L0_0, L1_1
L0_0 = _util
L0_0 = L0_0.GetActiveMission
L0_0 = L0_0()
L1_1 = _util
L1_1 = L1_1.GetActiveChapter
L1_1 = L1_1()
spypodCheck(L0_0, L1_1)
mapCheck(L0_0, L1_1)
communicatorCheck(L0_0, L1_1)
if L0_0 == 9 then
end
if L0_0 == 10 then
  _util.HideMap()
  _util.AddInventoryItem(_id.C4_JackHammer, 1, 0)
  _util.SetExitLocked(_id.NewLobbyDoortoCR, true)
  _util.AddObjective(_text.MISSION_SELECT_M10)
  _util.SetExitLocked(_id.Doors_Pool2MineInt, true)
  if _util.GetVar("c4IntroProgression") == 0 then
    _util.ActivateNpc(_id.C4_MountainTop_NPC_Rookie, 0)
  elseif _util.GetVar("c4IntroProgression") == 2 then
    _util.ActivateNpc(_id.C4_MountainTop_NPC_JPG, 3)
  elseif _util.GetVar("c4IntroProgression") == 3 and _util.GetVar("islandSinking") == 0 then
    _util.ActivateNpc(_id.C4_MountainTop_NPC_JPG, 3)
  elseif _util.GetVar("c4IntroProgression") == 5 then
    _util.SetConversationCount(4, _id.C4_MountainTop_NPC_Dot)
    _util.SetConversationCount(3, _id.C4_MountainTop_NPC_JPG)
    _util.SetVar("c4IntroProgression", 6)
    _util.ChangeRoom(88)
  end
end
