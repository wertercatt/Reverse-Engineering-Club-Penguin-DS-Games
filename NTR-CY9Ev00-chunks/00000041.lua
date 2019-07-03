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
  if L2_2 == 0 then
    L3_3 = _util
    L3_3 = L3_3.AddNPCText
    L3_3(_text.M11_HQ3_DOT_4)
    L3_3 = _util
    L3_3 = L3_3.AddPlayerOption
    L3_3(_text.M11_HQ3_A_4A, _const.CHANGE_DIALOG, -1, 1)
    L3_3 = _util
    L3_3 = L3_3.AddPlayerOption
    L3_3(_text.M11_HQ3_A_4B, _const.CHANGE_DIALOG, -1, 1)
  elseif L2_2 == 1 then
    L3_3 = _util
    L3_3 = L3_3.AddNPCText
    L3_3(_text.M11_HQ3_DOT_5, _const.CHANGE_NPC, _id.M11_HQGaryEscape, 35)
  elseif L2_2 == 2 then
    L3_3 = _util
    L3_3 = L3_3.AddNPCText
    L3_3(_text.M11_PH_HQ_DOTA_A3, _const.CHANGE_DIALOG, -1, 3)
  elseif L2_2 == 3 then
    L3_3 = _util
    L3_3 = L3_3.AddNPCText
    L3_3(_text.M11_HQ3_DOT_6)
    L3_3 = _util
    L3_3 = L3_3.AddPlayerOption
    L3_3(_text.M11_HQ3_A_6, _const.CHANGE_DIALOG, -1, 4)
    L3_3 = _util
    L3_3 = L3_3.SetVar
    L3_3("Tele2Village", 1)
  elseif L2_2 == 4 then
    L3_3 = _util
    L3_3 = L3_3.AddNPCText
    L3_3(_text.M11_HQ3_DOT_7, _const.CHANGE_DIALOG, -1, 5)
  elseif L2_2 == 5 then
    L3_3 = _util
    L3_3 = L3_3.SetSpawn
    L3_3(0, _id.M11_VillageRookiePop)
    L3_3 = _util
    L3_3 = L3_3.SetSpawn
    L3_3(0, _id.M11_VillageGary)
    L3_3 = _util
    L3_3 = L3_3.SetSpawn
    L3_3(0, _id.M11_VillageDot)
    L3_3 = _util
    L3_3 = L3_3.SetSpawn
    L3_3(0, _id.M11_VillageJPGPop)
    function L3_3()
      _util.SetNextRoom(100)
      _util.StartCutscene(_const.POPCORNEXPLOSION)
      repeat
        scriptWait()
      until _util.GetGameState() ~= _const.MISSION
      repeat
        scriptWait()
      until _util.GetGameState() == _const.MISSION
    end
    scriptPlay(L3_3)
  end
end
