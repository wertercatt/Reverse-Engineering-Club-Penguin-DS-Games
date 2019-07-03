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
  L1_1 = L1_1.COMBINE
  L0_0(L1_1)
  L0_0 = _util
  L0_0 = L0_0.SetVar
  L1_1 = "M9_CombinePiece"
  L0_0(L1_1, 0)
end
L0_0 = _util
L0_0 = L0_0.GetConversationCount
L0_0 = L0_0()
L1_1 = _util
L1_1 = L1_1.GetReason
L1_1 = L1_1()
if L1_1 == _const.TOUCHED then
  L1_1 = _util
  L1_1 = L1_1.GetVar
  L1_1 = L1_1("TalkedtoConnect4Penguins")
  if L1_1 == 0 then
    L1_1 = _util
    L1_1 = L1_1.AddPlayerThought
    L1_1(_text.M9_CONNECT_FOUR_PIECE1)
  else
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("M9_CombinePiece")
    L1_1 = L1_1 + 1
    _util.SetVar("M9_CombinePiece", L1_1)
    _util.DelItem(_util.GetSelf())
    if L1_1 >= 8 then
      _util.AddInventoryItem(_id.M9_ConnectFour7)
      _util.RemoveInventoryItem(_id.M9_ConnectFour6)
      _util.SetCombinationSuccess(1)
    elseif L1_1 >= 7 then
      _util.AddInventoryItem(_id.M9_ConnectFour6)
      _util.RemoveInventoryItem(_id.M9_ConnectFour5)
    elseif L1_1 >= 6 then
      _util.AddInventoryItem(_id.M9_ConnectFour5)
      _util.RemoveInventoryItem(_id.M9_ConnectFour4)
    elseif L1_1 >= 5 then
      _util.AddInventoryItem(_id.M9_ConnectFour4)
      _util.RemoveInventoryItem(_id.M9_ConnectFour3)
    elseif L1_1 >= 4 then
      _util.AddInventoryItem(_id.M9_ConnectFour3)
      _util.RemoveInventoryItem(_id.M9_ConnectFour2)
    elseif L1_1 >= 3 then
      _util.AddInventoryItem(_id.M9_ConnectFour2)
      _util.RemoveInventoryItem(_id.M9_ConnectFour1)
    elseif L1_1 >= 2 then
      _util.AddInventoryItem(_id.M9_ConnectFour1)
      _util.RemoveInventoryItem(_id.M9_ConnectFour0)
    else
      _util.AddInventoryItem(_id.M9_ConnectFour0)
    end
  end
end
