local L0_0, L1_1, L2_2, L3_3
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.CREATED
if L0_0 == L1_1 then
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
  L3_3 = _util
  L3_3 = L3_3.GetVar
  L3_3 = L3_3("MixFuel")
  if L3_3 == 1 then
    function L3_3()
      _util.StartMiniGame(_const.WELDING, 0)
      repeat
        scriptWait()
      until _util.GetGameState() ~= _const.MISSION
      repeat
        scriptWait()
      until _util.GetGameState() == _const.MISSION
      if _util.GetMinigameOutput1() == 1 then
        _util.ActivateNpc(_id.M10_GiftShop_Rookie, 13)
        _util.DelItem(_id.M10_MagnetWires)
        _util.AddItem(_id.M10_SolarPanelFixed)
      else
        _util.ActivateNpc(_id.M10_GiftShop_Rookie, 14)
      end
    end
    scriptPlay(L3_3)
  end
end
