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
function L3_3()
  if _util.GetVar("InsertedDVD") == 0 then
    _util.DisableInput()
    _util.PushCamera(_id.M11_VillageHerbert)
    _util.RemoveInventoryItem(_id.M11_DVDs2)
    _util.RemoveInventoryItem(_id.M11_DVDsInBox)
    _util.ChangeBaseAnim("NPC/M11/Rookie/RookieDVD_walk", _id.M11_VillageRookie)
    repeat
      scriptWait()
    until not _util.IsAnimPlaying(_id.M11_VillageRookie)
    _util.AddItem(_id.M11_VillageRookieDVD)
    _util.DelItem(_id.M11_VillageRookie)
    _util.SetVar("InsertedDVD", 1)
    _util.EnableInput()
    _util.ActivateNpc(_id.M11_VillageJPG, 1)
  else
    _util.AddNPCText(_text.M11_ROOKIE_DVD_ATTEMPT2, _const.END_DIALOG, -1, 8)
  end
end
L4_4 = _util
L4_4 = L4_4.GetReason
L4_4 = L4_4()
if L4_4 == _const.TOUCHED then
  if L2_2 == 0 then
    L4_4 = _util
    L4_4 = L4_4.AddNPCText
    L4_4(_text.M11_SKI2_ROOKIE_1, _const.CHANGE_DIALOG, -1, 1)
  elseif L2_2 == 1 then
    L4_4 = _util
    L4_4 = L4_4.AddNPCText
    L4_4(_text.M11_SKI2_ROOKIE_2, _const.CHANGE_DIALOG, -1, 2)
  elseif L2_2 == 2 then
    L4_4 = _util
    L4_4 = L4_4.GetVar
    L4_4 = L4_4("HaveDVD")
    if L4_4 < 2 then
      L4_4 = _util
      L4_4 = L4_4.AddNPCText
      L4_4(_text.M11_SKI2_ROOKIE_3)
      L4_4 = _util
      L4_4 = L4_4.MarkObjComplete
      L4_4(_text.M11_OBJ3)
      L4_4 = _util
      L4_4 = L4_4.AddObjective
      L4_4(_text.M11_3SUBOBJ2)
      L4_4 = _util
      L4_4 = L4_4.AddPlayerOption
      L4_4(_text.M11_SKI2_A_3, _const.CHANGE_DIALOG, -1, 3)
    else
      L4_4 = _util
      L4_4 = L4_4.AddNPCText
      L4_4(_text.M11_SKI2_ROOKIE_3)
      L4_4 = _util
      L4_4 = L4_4.AddPlayerOption
      L4_4(_text.M11_SKI2_A_3_2, _const.CHANGE_DIALOG, -1, 30)
      L4_4 = _util
      L4_4 = L4_4.SetSpawn
      L4_4(1, _id.M11_VillageNPCP1)
      L4_4 = _util
      L4_4 = L4_4.SetSpawn
      L4_4(1, _id.M11_VillageNPCP2)
      L4_4 = _util
      L4_4 = L4_4.SetSpawn
      L4_4(1, _id.M11_VillageNPCBrownP)
    end
  elseif L2_2 == 3 then
    L4_4 = _util
    L4_4 = L4_4.AddNPCText
    L4_4(_text.M11_SKI2_ROOKIE_4, _const.END_DIALOG, -1, 4)
    L4_4 = _util
    L4_4 = L4_4.SetVar
    L4_4("FindDVD", 1)
  elseif L2_2 == 30 then
    L4_4 = _util
    L4_4 = L4_4.AddNPCText
    L4_4(_text.M11_SKI2_ROOKIE_4_2, _const.CHANGE_DIALOG, -1, 31)
    L4_4 = _util
    L4_4 = L4_4.SetVar
    L4_4("FindDVD", 1)
  elseif L2_2 == 31 then
    L4_4 = _util
    L4_4 = L4_4.SetVar
    L4_4("FixMachine", 2)
    L4_4 = scriptPlay
    L4_4(L3_3)
  elseif L2_2 == 4 then
    L4_4 = _util
    L4_4 = L4_4.AddNPCText
    L4_4(_text.M11_SKI3_ROOKIE_1, _const.END_DIALOG, -1, 4)
  elseif L2_2 == 6 then
    L4_4 = _util
    L4_4 = L4_4.DelItem
    L4_4(_id.M11_VillageHerbert)
    L4_4 = _util
    L4_4 = L4_4.AddNPCText
    L4_4(_text.M11_SKI3_ROOKIE_2, _const.CHANGE_DIALOG, -1, 32)
  elseif L2_2 == 32 then
    function L4_4()
      _util.DisableInput()
      _util.SwitchState("vol")
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_util.GetSelf())
      _util.PopCamera(_id.M11_VillageHerbert)
      _util.SwitchState("")
      _util.EnableInput()
      _util.ActivateNpc(_util.GetSelf(), 7)
    end
    scriptPlay(L4_4)
  elseif L2_2 == 7 then
    L4_4 = _util
    L4_4 = L4_4.SetVar
    L4_4("OpenCase", 1)
    L4_4 = _util
    L4_4 = L4_4.ChangeBaseAnim
    L4_4("NPC/M11/Rookie/RookieDVD2nob", _id.M11_VillageRookieDVD)
    L4_4 = _util
    L4_4 = L4_4.AddNPCText
    L4_4(_text.M11_SKI3_ROOKIE_3)
    L4_4 = _util
    L4_4 = L4_4.AddPlayerOption
    L4_4(_text.M11_SKI3_A_3, _const.CHANGE_DIALOG, -1, 8)
  elseif L2_2 == 8 then
    L4_4 = _util
    L4_4 = L4_4.ChangeBaseAnim
    L4_4("NPC/M11/Rookie/RookieDVD2", _id.M11_VillageRookieDVD)
    L4_4 = _util
    L4_4 = L4_4.AddSubObjective
    L4_4(_text.M11_OBJ3B, _text.M11_3BSUBOBJ1)
    L4_4 = _util
    L4_4 = L4_4.AddNPCText
    L4_4(_text.M11_SKI3_ROOKIE_4, _const.END_DIALOG, -1, 8)
  elseif L2_2 == 80 then
    L4_4 = _util
    L4_4 = L4_4.AddNPCText
    L4_4(_text.M11_SKI2_ROOKIE_4, _const.END_DIALOG, -1, 80)
    L4_4 = _util
    L4_4 = L4_4.DelItem
    L4_4(_id.M11_VillageJPG)
  elseif L2_2 == 9 then
    L4_4 = _util
    L4_4 = L4_4.AddNPCText
    L4_4(_text.M11_SKI4_ROOKIE_1, _const.CHANGE_NPC, _id.M11_VillageGary, 0)
  elseif L2_2 == 10 then
    L4_4 = _util
    L4_4 = L4_4.AddNPCText
    L4_4(_text.M11_SKI4_ROOKIE_4, _const.CHANGE_NPC, _id.M11_VillageGary, 4)
  elseif L2_2 == 11 then
    L4_4 = _util
    L4_4 = L4_4.AddNPCText
    L4_4(_text.M11_SKI4_ROOKIE_5)
    L4_4 = _util
    L4_4 = L4_4.AddPlayerOption
    L4_4(_text.M11_SKI4_A_5, _const.CHANGE_NPC, _id.M11_VillageGary, 5)
  elseif L2_2 == 12 then
    L4_4 = _util
    L4_4 = L4_4.TriggerDGamerUnlockable
    L4_4(_const.DG_UNLOCKABLE_EPF_2_HOODIE)
    L4_4 = _util
    L4_4 = L4_4.TriggerDGamerHonor
    L4_4(_const.DG_HONOR_THE_LAST_MISSION)
    L4_4 = _util
    L4_4 = L4_4.AddNPCText
    L4_4(_text.M11_SKI4_ROOKIE_7, _const.END_MISSION)
  end
end
L4_4 = _util
L4_4 = L4_4.GetReason
L4_4 = L4_4()
if L4_4 == _const.ITEM_DROPPED then
  L4_4 = _util
  L4_4 = L4_4.GetSource
  L4_4 = L4_4()
  if L4_4 == _id.M11_DVDsInBox or L4_4 == _id.M11_DVDs2 then
    _util.SetVar("FixMachine", 2)
    _util.SetVar("DVDItemNum", L4_4)
    scriptPlay(L3_3)
  end
end
