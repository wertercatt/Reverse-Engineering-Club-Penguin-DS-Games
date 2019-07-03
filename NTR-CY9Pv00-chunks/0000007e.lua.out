local L0_0, L1_1, L2_2, L3_3
L0_0 = _util
L0_0 = L0_0.GetActiveMission
L0_0 = L0_0()
L1_1 = _util
L1_1 = L1_1.GetActiveChapter
L1_1 = L1_1()
L2_2 = _util
L2_2 = L2_2.GetReason
L2_2 = L2_2()
L3_3 = _const
L3_3 = L3_3.CREATED
if L2_2 == L3_3 then
end
L2_2 = _util
L2_2 = L2_2.GetConversationCount
L2_2 = L2_2()
L3_3 = _util
L3_3 = L3_3.GetReason
L3_3 = L3_3()
if L3_3 == _const.TOUCHED then
  L3_3 = _util
  L3_3 = L3_3.GetVar
  L3_3 = L3_3("snowPile")
  if L3_3 == 0 then
    function L3_3()
      _util.StartMiniGame(_const.JACKHAMMERIN, 3, 3)
      repeat
        scriptWait()
      until _util.GetGameState() ~= _const.MISSION
      repeat
        scriptWait()
        if _util.GetMinigameOutput1() == 1 then
          _util.SetVar("snowPile", 1)
          _util.ChangeBaseAnim("MissionObjects/SpySeek/scripted/snowPile_clear", _id.M5_Docks_Item_SnowPile)
          _util.SetSpawn(1, _id.M5_SnakePiece2)
        end
      until _util.GetGameState() == _const.MISSION
    end
    scriptPlay(L3_3)
  end
end
