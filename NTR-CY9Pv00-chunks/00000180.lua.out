local L0_0, L1_1, L2_2
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.CREATED
if L0_0 == L1_1 then
  L0_0 = _util
  L0_0 = L0_0.AddInterest
  L1_1 = _const
  L1_1 = L1_1.COMBINE
  L0_0(L1_1)
end
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.COMBINE
if L0_0 == L1_1 then
  L0_0 = _util
  L0_0 = L0_0.GetSelf
  L0_0 = L0_0()
  L1_1 = _util
  L1_1 = L1_1.GetSource
  L1_1 = L1_1()
  function L2_2()
    _util.StartMiniGame(_const.PUMPUP, 0)
    repeat
      scriptWait()
    until _util.GetGameState() ~= _const.MISSION
    repeat
      scriptWait()
    until _util.GetGameState() == _const.MISSION
    if _util.GetMinigameOutput1() == 1 then
      _util.RemoveInventoryItem(_id.M9_Pump)
      _util.RemoveInventoryItem(_id.M9_DuckPatched)
      _util.AddSubObjective(_text.M9_OBJ_3, _text.M9_OBJ_3B)
      _util.MarkSubObjComplete(_text.M9_OBJ_3, _text.M9_OBJ_3B)
      _util.AddInventoryItem(_id.M9_DuckInflated)
      _util.SetCombinationSuccess(1)
    end
  end
  if L1_1 == _id.M9_DuckPatched then
    scriptPlay(L2_2)
  elseif L1_1 == 33699 then
    _util.SetCombinationSuccess(0, _text.M9_DUCK_NEEDS_GUM)
  end
end
