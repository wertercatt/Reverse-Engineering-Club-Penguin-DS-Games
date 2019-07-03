local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
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
  if _util.GetVar("ClimbSkiHill") == 0 and _util.GetMinigameOutput1() == 1 then
    _util.SetNextRoom(98)
    _util.SetVar("ClimbSkiHill", 1)
  end
end
L4_4 = _util
L4_4 = L4_4.GetReason
L4_4 = L4_4()
L5_5 = _const
L5_5 = L5_5.TOUCHED
if L4_4 == L5_5 then
  L4_4 = _util
  L4_4 = L4_4.AddMonologue
  L5_5 = _text
  L5_5 = L5_5.M6_WILDERNESS_MOUNTAIN_TOUCH
  L4_4(L5_5, "DialogStrings", _const.END_DIALOG, 0)
end
L4_4 = _util
L4_4 = L4_4.GetReason
L4_4 = L4_4()
L5_5 = _const
L5_5 = L5_5.ITEM_DROPPED
if L4_4 == L5_5 then
  L4_4 = _util
  L4_4 = L4_4.GetSource
  L4_4 = L4_4()
  L5_5 = _id
  L5_5 = L5_5.M6_GrapplingHook
  if L4_4 == L5_5 then
    function L5_5()
      _util.StartMiniGame(_const.GRAPPLINGHOOK, 3)
      repeat
        scriptWait()
      until _util.GetGameState() ~= _const.MISSION
      repeat
        scriptWait()
        _UPVALUE0_()
      until _util.GetGameState() == _const.MISSION
      if _util.GetMinigameOutput1() == 1 then
        _util.RemoveInventoryItem(_id.M6_GrapplingHook)
        _util.SetVar("ClimbedSkiHill", 1)
        _util.MarkObjComplete(_text.M6_OBJ6)
        _util.AddObjective(_text.M6_OBJ7)
        _util.SetSpawn(0, 37477)
        _util.ShowMap()
      end
    end
    scriptPlay(L5_5)
  else
    L5_5 = _id
    L5_5 = L5_5.M6_RopeA
    if L4_4 ~= L5_5 then
      L5_5 = interactID
      if L5_5 ~= _id.M6_RopeB then
        L5_5 = _id
        L5_5 = L5_5.M6_Anchor
      end
    else
      if L4_4 == L5_5 then
        L5_5 = _util
        L5_5 = L5_5.AddMonologue
        L5_5(_text.M6_ROPE_NO_CLIMB, "DialogStrings", _const.END_DIALOG, 0)
    end
    else
      L5_5 = _util
      L5_5 = L5_5.AddMonologue
      L5_5(_text.M6_WILDERNESS_MOUNTAIN_DROPWRONG, "DialogStrings", _const.END_DIALOG, 0)
    end
  end
end
