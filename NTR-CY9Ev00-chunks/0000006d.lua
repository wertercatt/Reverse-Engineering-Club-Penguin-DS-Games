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
  L2_2 = _id
  L2_2 = L2_2.C3_PropellerBladeStack_4
  if L1_1 ~= L2_2 then
    L2_2 = _id
    L2_2 = L2_2.C3_BrokePropeller
  elseif L1_1 == L2_2 then
    function L2_2()
      _util.StartMiniGame(_const.JIGSAW, 5)
      repeat
        scriptWait()
      until _util.GetGameState() ~= _const.MISSION
      repeat
        scriptWait()
      until _util.GetGameState() == _const.MISSION
      if _util.GetMinigameOutput1() == 1 then
        _util.RemoveInventoryItem(_id.C3_PropellerBladeStack_4)
        _util.RemoveInventoryItem(_id.C3_BrokePropeller)
        _util.AddInventoryItem(_id.C3_CombinedPropeller)
      end
    end
    scriptPlay(L2_2)
  end
end
