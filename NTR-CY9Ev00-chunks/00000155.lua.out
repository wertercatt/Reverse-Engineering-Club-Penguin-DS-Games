local L0_0, L1_1
L0_0 = _util
L0_0 = L0_0.GetActiveMission
L0_0 = L0_0()
L1_1 = _util
L1_1 = L1_1.GetActiveChapter
L1_1 = L1_1()
setupItems(L0_0, L1_1)
spypodCheck(L0_0, L1_1)
mapCheck(L0_0, L1_1)
communicatorCheck(L0_0, L1_1)
if L0_0 == 10 then
  _util.SetSpawn(0, _id.C4_IceBerg_Gary)
  _util.SetSpawn(0, _id.C4_Plaza_Dot)
  if _util.GetVar("MSFloodConversation") == 0 then
    _util.SetVar("MSFloodConversation", 1)
  end
  if _util.GetVar("BalloonRepaired") == 2 then
    _util.DelItem(_id.C4_MineShackFlood_NPC_Herbert)
    _util.HideMap()
    _util.DisableSpyPodFunc(_const.FLAG_HEADQUARTERS)
    _util.ActivateNpc(_id.C4_MineShackFlood_NPC_Gary, 2)
    _util.SetVar("BalloonRepaired", 3)
  elseif _util.GetVar("BalloonRepaired") == 1 then
    _util.DelItem(_id.C4_MineShackFlood_NPC_Herbert)
  elseif 3 <= _util.GetVar("GotStatue") then
    _util.DelItem(_id.C4_MineShackFlood_Item_Geyser)
  end
  if _util.GetVar("geyserDiverted") == 1 then
    _util.ChangeBaseAnim("MissionObjects/M4/geyser_low", _id.C4_MineShackFlood_Item_Geyser)
  elseif _util.GetVar("geyserDiverted") == 2 then
    _util.ChangeBaseAnim("MissionObjects/M4/geyser_objects", _id.C4_MineShackFlood_Item_Geyser)
  end
  if _util.GetVar("GotStatue") == 1 then
    _util.ChangeBaseAnim("MissionObjects/M4/statue_hang", _id.C4_MineShackFlood_Item_Statue)
  elseif _util.GetVar("GotStatue") == 2 then
    _util.ChangeBaseAnim("MissionObjects/M4/statue", _id.C4_MineShackFlood_Item_Statue)
  elseif _util.GetVar("GotStatue") == 3 then
    _util.ChangeBaseAnim("MissionObjects/M4/statue2", _id.C4_MineShackFlood_Item_Statue)
  elseif _util.GetVar("GotStatue") >= 4 then
    _util.ChangeBaseAnim("MissionObjects/M4/statue2_frozen", _id.C4_MineShackFlood_Item_Statue)
  end
  if _util.GetVar("ByeHerbert") == 1 then
    _util.SetVar("ByeHerbert", 2)
    _util.ActivateNpc(_id.C4_MineShackFlood_NPC_Gary, 6)
    _util.ClearCom()
  end
end
