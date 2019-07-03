local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
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
L2_2 = 0
L3_3 = 0
L4_4 = _util
L4_4 = L4_4.GetConversationCount
L4_4 = L4_4()
L5_5 = _util
L5_5 = L5_5.GetReason
L5_5 = L5_5()
if L5_5 == _const.TOUCHED then
  L5_5 = _util
  L5_5 = L5_5.PlayHerbertLurking
  L5_5()
  if L4_4 == 0 then
    L5_5 = _util
    L5_5 = L5_5.MarkObjComplete
    L5_5(_text.M8_OBJ1)
    L5_5 = _util
    L5_5 = L5_5.AddObjective
    L5_5(_text.M8_OBJ2)
    L5_5 = _util
    L5_5 = L5_5.AddLoopingConv
    L5_5(_text.M8_DOCKS_HERBERT_GREET)
    L5_5 = _util
    L5_5 = L5_5.AddLoopingOption
    L5_5(_text.M8_DOCKS_HERBERTA_Q1, -1, _const.CHANGE_DIALOG, 1)
    L5_5 = _util
    L5_5 = L5_5.AddLoopingOption
    L5_5(_text.M8_DOCKS_HERBERTA_Q2, -1, _const.CHANGE_DIALOG, 2)
  elseif L4_4 == 1 then
    L5_5 = _util
    L5_5 = L5_5.AddDialog
    L5_5(_text.M8_DOCKS_HERBERTA_A1_2B, _const.CHANGE_DIALOG, 3)
  elseif L4_4 == 2 then
    L5_5 = _util
    L5_5 = L5_5.AddDialog
    L5_5(_text.M8_DOCKS_HERBERTA_A2_2B, _const.CHANGE_DIALOG, 3)
  elseif L4_4 == 3 then
    L5_5 = _util
    L5_5 = L5_5.ChangeBaseAnim
    L5_5("NPC/MysteriousTremors/Herbert/HerbDockThink")
    L5_5 = _util
    L5_5 = L5_5.AddLoopingConv
    L5_5(_text.M8_DOCKS_HERBERTA_B1)
    L5_5 = _util
    L5_5 = L5_5.AddLoopingOption
    L5_5(_text.M8_DOCKS_HERBERTB_Q1, -1, _const.CHANGE_DIALOG, 4)
    L5_5 = _util
    L5_5 = L5_5.AddLoopingOption
    L5_5(_text.M8_DOCKS_HERBERTB_Q2, -1, _const.CHANGE_DIALOG, 4)
  elseif L4_4 == 4 then
    L5_5 = _util
    L5_5 = L5_5.ChangeBaseAnim
    L5_5("NPC/MysteriousTremors/Herbert/HerbDock")
    L5_5 = _util
    L5_5 = L5_5.AddDialog
    L5_5(_text.M8_DOCKS_HERBERTB_A1_2B, _const.CHANGE_DIALOG, 5)
  elseif L4_4 == 5 then
    L5_5 = _util
    L5_5 = L5_5.ChangeBaseAnim
    L5_5("NPC/MysteriousTremors/Herbert/HerbDockThink")
    L5_5 = _util
    L5_5 = L5_5.AddDialog
    L5_5(_text.M8_DOCKS_HERBERTB_B1_2C, _const.CHANGE_DIALOG, 6)
  elseif L4_4 == 6 then
    L5_5 = _util
    L5_5 = L5_5.ChangeBaseAnim
    L5_5("NPC/MysteriousTremors/Herbert/HerbDockLaugh")
    L5_5 = _util
    L5_5 = L5_5.AddLoopingConv
    L5_5(_text.M8_DOCKS_HERBERTB_C1)
    L5_5 = _util
    L5_5 = L5_5.AddLoopingOption
    L5_5(_text.M8_DOCKS_HERBERTC_Q1, -1, _const.CHANGE_DIALOG, 7)
    L5_5 = _util
    L5_5 = L5_5.AddLoopingOption
    L5_5(_text.M8_DOCKS_HERBERTD_Q1, -1, _const.CHANGE_DIALOG, 9)
    L5_5 = _util
    L5_5 = L5_5.AddLoopingOption
    L5_5(_text.M8_DOCKS_HERBERTE_Q1, -1, _const.CHANGE_DIALOG, 11)
  elseif L4_4 == 7 then
    L5_5 = _util
    L5_5 = L5_5.AddDialog
    L5_5(_text.M8_DOCKS_HERBERTC_A1_2B, _const.CHANGE_DIALOG, 8)
  elseif L4_4 == 8 then
    L5_5 = _util
    L5_5 = L5_5.ChangeBaseAnim
    L5_5("NPC/MysteriousTremors/Herbert/HerbDock")
    L5_5 = _util
    L5_5 = L5_5.AddDialog
    L5_5(_text.M8_DOCKS_HERBERTC_B1, _const.CHANGE_DIALOG, 12)
  elseif L4_4 == 9 then
    L5_5 = _util
    L5_5 = L5_5.ChangeBaseAnim
    L5_5("NPC/MysteriousTremors/Herbert/HerbDock")
    L5_5 = _util
    L5_5 = L5_5.AddDialog
    L5_5(_text.M8_DOCKS_HERBERTD_A1_2B, _const.CHANGE_DIALOG, 10)
  elseif L4_4 == 10 then
    L5_5 = _util
    L5_5 = L5_5.AddDialog
    L5_5(_text.M8_DOCKS_HERBERTD_B1, _const.CHANGE_DIALOG, 12)
  elseif L4_4 == 11 then
    L5_5 = _util
    L5_5 = L5_5.ChangeBaseAnim
    L5_5("NPC/MysteriousTremors/Herbert/HerbDock")
    L5_5 = _util
    L5_5 = L5_5.AddDialog
    L5_5(_text.M8_DOCKS_HERBERTE_A1_2B, _const.CHANGE_DIALOG, 12)
  elseif L4_4 == 12 then
    L5_5 = _util
    L5_5 = L5_5.AddDialog
    L5_5(_text.M8_DOCKS_HERBERTE_B1_2C, _const.CHANGE_DIALOG, 13)
  elseif L4_4 == 13 then
    L5_5 = _util
    L5_5 = L5_5.AddDialog
    L5_5(_text.M8_DOCKS_HERBERTE_C1_2D, _const.CHANGE_DIALOG, 14)
  elseif L4_4 == 14 then
    L5_5 = _util
    L5_5 = L5_5.AddDialog
    L5_5(_text.M8_DOCKS_HERBERTE_D1_2E, _const.CHANGE_DIALOG, 15)
  elseif L4_4 == 15 then
    L5_5 = _util
    L5_5 = L5_5.AddDialog
    L5_5(_text.M8_DOCKS_HERBERTE_E1_2F, _const.CHANGE_DIALOG, 16)
  elseif L4_4 == 16 then
    L5_5 = _util
    L5_5 = L5_5.ChangeBaseAnim
    L5_5("NPC/MysteriousTremors/Herbert/HerbDockMapLaugh")
    L5_5 = _util
    L5_5 = L5_5.AddDialog
    L5_5(_text.M8_DOCKS_HERBERTE_F1_2G, _const.CHANGE_DIALOG, 17)
  elseif L4_4 == 17 then
    function L5_5()
      _util.StartCutscene(_const.HERBERTDOCK2)
      repeat
        scriptWait()
      until _util.GetGameState() ~= _const.MISSION
      repeat
        scriptWait()
      until _util.GetGameState() == _const.MISSION
      _util.DelItem(_id.M8_KlutzyLantern)
      _util.AddItem(_id.M8_GroundLantern)
      _util.ActivateNpc(32310, 21)
    end
    scriptPlay(L5_5)
  elseif L4_4 == 21 then
    L5_5 = _util
    L5_5 = L5_5.ChangeBaseAnim
    L5_5("NPC/MysteriousTremors/Herbert/HerbDockThink")
    L5_5 = _util
    L5_5 = L5_5.ClearObjective
    L5_5()
    L5_5 = _util
    L5_5 = L5_5.SetObjective
    L5_5(_text.M8_OBJ4)
    L5_5 = _util
    L5_5 = L5_5.AddDialog
    L5_5(_text.M8_DOCKS_HERBERTE_I1_2J, _const.CHANGE_DIALOG, 22)
  elseif L4_4 == 22 then
    L5_5 = _util
    L5_5 = L5_5.ChangeBaseAnim
    L5_5("NPC/MysteriousTremors/Herbert/HerbDock")
    L5_5 = _util
    L5_5 = L5_5.AddDialog
    L5_5(_text.M8_DOCKS_HERBERTE_J1_2K, _const.CHANGE_DIALOG, 23)
  elseif L4_4 == 23 then
    function L5_5()
      _util.SetSpawn(0, 32502)
      _util.SetSpawn(1, 5974)
      _util.SetSpawn(0, _id.M8_DoorSnowF2Town)
      _util.SetSpawn(1, _id.M8_DoorSnowF2TownTremors)
      _util.StartCutscene(_const.HERBERTDOCK3)
      repeat
        scriptWait()
      until _util.GetGameState() ~= _const.MISSION
      repeat
        scriptWait()
      until _util.GetGameState() == _const.MISSION
      _util.DelItem(_id.M8_DrillTL)
      _util.DelItem(_id.M8_DrillTR)
      _util.DelItem(_id.M8_KlutzyDocks)
      _util.DelItem(_id.M8_DrillBL)
      _util.DelItem(_id.M8_HerbDocks)
      _util.DelItem(_id.M8_DrillBR)
      _util.AddItem(_id.M8_Docks_GiftSunkSprite)
      _util.DelItem(_id.M8_Docks_GiftSprite)
      _util.ActivateNpc(_id.M8_HerbInHole, 24)
    end
    scriptPlay(L5_5)
  elseif L4_4 == 24 then
    L5_5 = _util
    L5_5 = L5_5.SetVar
    L5_5("HerbertFound", 1)
    L5_5 = _util
    L5_5 = L5_5.SetExitLocked
    L5_5(6738, false)
    L5_5 = _util
    L5_5 = L5_5.SetExitLocked
    L5_5(6833, false)
    L5_5 = _util
    L5_5 = L5_5.SetExitLocked
    L5_5(41583, false)
    L5_5 = _util
    L5_5 = L5_5.AddDialog
    L5_5(_text.M8_DOCKS_HERBERTE_K1, _const.CHANGE_DIALOG, 25)
  elseif L4_4 == 25 then
    L5_5 = _util
    L5_5 = L5_5.DelItem
    L5_5(_util.GetSelf())
    L5_5 = _util
    L5_5 = L5_5.ClearObjective
    L5_5()
    L5_5 = _util
    L5_5 = L5_5.RestoreSongFromHerbert
    L5_5()
  end
end
