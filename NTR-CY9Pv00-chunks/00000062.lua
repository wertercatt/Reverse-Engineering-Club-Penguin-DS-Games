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
L2_2 = L2_2.GetConversationCount
L2_2 = L2_2()
L3_3 = _util
L3_3 = L3_3.GetReason
L3_3 = L3_3()
if L3_3 == _const.TOUCHED then
  function L3_3()
    _util.StartCutscene(_const.FALLCLIFF)
    _util.SetNextRoom(131)
    repeat
      scriptWait()
    until _util.GetGameState() ~= _const.MISSION
    repeat
      scriptWait()
    until _util.GetGameState() == _const.MISSION
    _util.SetSpawn(0, _id.M6_door2wilderness)
    _util.SetSpawn(0, _id.M6_GaryFix)
    _util.SetSpawn(1, _id.M6_HerbChopper)
    _util.SetSpawn(1, _id.M6_KlutzyChopper)
    _util.SetSpawn(1, _id.M6_Shifter)
    _util.SetSpawn(1, _id.M6_ChopperL)
    _util.SetSpawn(1, _id.M6_ChopperR)
    _util.HideMap()
  end
  if _util.GetExitLocked(_util.GetSelf()) == false then
    scriptPlay(L3_3)
  else
    _util.AddPlayerThought(_text.EXIT_LOCKED_FOREST)
  end
end
