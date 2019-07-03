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
  L1_1 = L1_1.AFTER_DIALOG
  L0_0(L1_1)
end
L0_0 = _util
L0_0 = L0_0.GetConversationCount
L0_0 = L0_0()
L1_1 = _util
L1_1 = L1_1.GetReason
L1_1 = L1_1()
if L1_1 == _const.TOUCHED then
  if L0_0 == 0 then
    L1_1 = _util
    L1_1 = L1_1.ActivateNpc
    L1_1(_id.M1_T6_Dot, 0)
  elseif L0_0 == 1 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.C1_TC5_ROOKIE_1, _const.CHANGE_NPC, _id.M1_T6_JPG, 1)
  elseif L0_0 == 2 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.C1_TC5_ROOKIE_2, _const.CHANGE_NPC, _id.M1_T6_Dot, 1)
  elseif L0_0 == 3 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.C1_TC5_ROOKIE_3, _const.END_DIALOG, 4)
    L1_1 = _util
    L1_1 = L1_1.SetConversationCount
    L1_1(2, _id.M1_T6_Dot)
    L1_1 = _util
    L1_1 = L1_1.SetConversationCount
    L1_1(3, _id.M1_T6_JPG)
  elseif L0_0 == 4 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.C1_TC5_ROOKIE_4, _const.END_DIALOG, 5)
  elseif L0_0 == 5 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.C1_TC5_ROOKIE_5, _const.END_DIALOG, 5)
  elseif L0_0 == 6 then
    L1_1 = _util
    L1_1 = L1_1.SetVar
    L1_1("c1_tryScalingWall", 1)
    L1_1 = _util
    L1_1 = L1_1.AddObjective
    L1_1(_text.C1_OBJ8)
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(_text.C1_TC5_ROOKIE_7, _const.END_DIALOG)
  end
end
L1_1 = _util
L1_1 = L1_1.GetReason
L1_1 = L1_1()
if L1_1 == _const.AFTER_DIALOG then
  function L1_1()
    _util.StartMiniGame(_const.WALL, 0)
    repeat
      scriptWait()
    until _util.GetGameState() ~= _const.MISSION
    repeat
      scriptWait()
    until _util.GetGameState() == _const.MISSION
    if _util.GetMinigameOutput1() == 1 then
      _util.DelItem(_id.M1_T6_Dot)
      _util.DelItem(_id.M1_T6_JPG)
      _util.AddItem(_id.C1_MetalWallDoorTalking)
      _util.TriggerDGamerUnlockable(_const.DG_UNLOCKABLE_IGLOO_HAT)
      _util.ActivateNpc(_id.C1_MetalWallDoorTalking, 1)
      _util.DelItem(_util.GetSelf())
    end
  end
  if _util.GetVar("c1_tryScalingWall") ~= 0 then
    scriptPlay(L1_1)
  end
end
