local L0_0, L1_1
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.CREATED
if L0_0 == L1_1 then
  L0_0 = _util
  L0_0 = L0_0.SetVar
  L1_1 = "C3_CombinePiece"
  L0_0(L1_1, 0)
end
L0_0 = _util
L0_0 = L0_0.GetConversationCount
L0_0 = L0_0()
L1_1 = _util
L1_1 = L1_1.GetReason
L1_1 = L1_1()
if L1_1 == _const.TOUCHED then
  function L1_1()
    local L0_2
    L0_2 = _util
    L0_2 = L0_2.GetVar
    L0_2 = L0_2("C3_CombinePiece")
    L0_2 = L0_2 + 1
    _util.SetVar("C3_CombinePiece", L0_2)
    if L0_2 == 1 then
      _util.AddInventoryItem(_id.C3_PropellerBladeStack_1)
    elseif L0_2 == 2 then
      _util.RemoveInventoryItem(_id.C3_PropellerBladeStack_1)
      _util.AddInventoryItem(_id.C3_PropellerBladeStack_2)
    elseif L0_2 == 3 then
      _util.RemoveInventoryItem(_id.C3_PropellerBladeStack_2)
      _util.AddInventoryItem(_id.C3_PropellerBladeStack_3)
    elseif L0_2 == 4 then
      _util.RemoveInventoryItem(_id.C3_PropellerBladeStack_3)
      _util.AddInventoryItem(_id.C3_PropellerBladeStack_4)
    end
    _util.SetSpawn(0, _util.GetSelf())
    _util.DelItem(_util.GetSelf())
  end
  scriptPlay(L1_1)
end
