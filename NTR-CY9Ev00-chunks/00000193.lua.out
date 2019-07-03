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
  L1_1 = L1_1.ITEM_DROPPED
  L0_0(L1_1)
end
L0_0 = _util
L0_0 = L0_0.GetConversationCount
L0_0 = L0_0()
L1_1 = _util
L1_1 = L1_1.GetReason
L1_1 = L1_1()
L2_2 = _const
L2_2 = L2_2.ITEM_DROPPED
if L1_1 == L2_2 then
  L1_1 = _util
  L1_1 = L1_1.GetSource
  L1_1 = L1_1()
  L2_2 = _id
  L2_2 = L2_2.C4_InventoryItem_BallonFilled
  if L1_1 == L2_2 then
    function L2_2()
      _util.SetVar("BalloonRepaired", 2)
      _util.DisableInput()
      _util.RemoveInventoryItem(_id.C4_InventoryItem_BallonFilled)
      _util.SetVar("HerbFlewAway", 1)
      _util.ChangeBaseAnim("MissionObjects/M4/airshipFixed", _id.C4_SkiVillage_BrokenAirShip)
      repeat
        scriptWait()
      until 0 + 1 > 30
      _util.DelItem(_id.C4_SkiVillage_Herb)
      _util.ChangeBaseAnim("NPC/M4/Herbert/HerbShip", _id.C4_SkiVillage_BrokenAirShip)
      repeat
        scriptWait()
      until 0 + 1 > 30
      _util.ChangeBaseAnim("NPC/M4/Herbert/HerbShip", _id.C4_SkiVillage_BrokenAirShip, "lift")
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_id.C4_SkiVillage_BrokenAirShip)
      _util.ChangeBaseAnim("MissionObjects/M4/airshipCables", _id.C4_SkiVillage_BrokenAirShip)
      _util.EnableInput(true)
      _util.MarkObjComplete(_text.C4_4SUBOBJ1)
    end
    if _util.GetVar("BalloonRepaired") > 0 then
      scriptPlay(L2_2)
    end
  end
end
