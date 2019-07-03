local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.CREATED
if L0_0 == L1_1 then
  L0_0 = _util
  L0_0 = L0_0.AddInterest
  L1_1 = _const
  L1_1 = L1_1.COMMUNICATOR
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
L3_3 = 0
L4_4 = _util
L4_4 = L4_4.GetReason
L4_4 = L4_4()
if L4_4 == _const.TOUCHED then
  if L2_2 == 0 then
    function L4_4()
      _util.DisableInput()
      _util.PlaySFX(172)
      _util.ScreenShake(60)
      _util.ChangeBaseAnim("NPC/MysteriousTremors/Gary/GaryGRShake")
      _UPVALUE0_ = 0
      repeat
        _UPVALUE0_ = _UPVALUE0_ + 1
        scriptWait()
      until _UPVALUE0_ >= 60
      _util.ChangeBaseAnim("NPC/MysteriousTremors/Gary/GaryGRSeismo")
      _util.EnableInput()
      _util.AddDialog(_text.M8_INTRO, _const.CHANGE_DIALOG, 120)
    end
    scriptPlay(L4_4)
  elseif L2_2 == 120 then
    L4_4 = _util
    L4_4 = L4_4.AddLoopingConv
    L4_4(_text.M8_INTRO2)
    L4_4 = _util
    L4_4 = L4_4.AddLoopingOption
    L4_4(_text.M8_GADGETROOM_GARYA_Q1, -1, _const.CHANGE_DIALOG, 3)
    L4_4 = _util
    L4_4 = L4_4.AddLoopingOption
    L4_4(_text.M8_GADGETROOM_GARYA_QUIT, -1, _const.CHANGE_DIALOG, 2)
  elseif L2_2 == 1 then
    L4_4 = _util
    L4_4 = L4_4.AddLoopingConv
    L4_4(_text.M8_INTRO2_B)
    L4_4 = _util
    L4_4 = L4_4.AddLoopingOption
    L4_4(_text.M8_GADGETROOM_GARYA_Q1, -1, _const.CHANGE_DIALOG, 3)
    L4_4 = _util
    L4_4 = L4_4.AddLoopingOption
    L4_4(_text.M8_GADGETROOM_GARYA_QUIT, -1, _const.CHANGE_DIALOG, 2)
  elseif L2_2 == 2 then
    L4_4 = _util
    L4_4 = L4_4.AddDialog
    L4_4(_text.M8_GADGETROOM_GARYA_QUITRESPONSE, _const.END_DIALOG, 1)
  elseif L2_2 == 3 then
    L4_4 = _util
    L4_4 = L4_4.AddDialog
    L4_4(_text.M8_GADGETROOM_GARYA_A1, _const.CHANGE_DIALOG, 4)
  elseif L2_2 == 4 then
    L4_4 = _util
    L4_4 = L4_4.AddLoopingConv
    L4_4(_text.M8_GADGETROOM_GARYA_B1)
    L4_4 = _util
    L4_4 = L4_4.AddLoopingOption
    L4_4(_text.M8_GADGETROOM_GARYB_Q1, -1, _const.CHANGE_DIALOG, 5)
    L4_4 = _util
    L4_4 = L4_4.AddLoopingOption
    L4_4(_text.M8_GADGETROOM_GARYC_Q1, -1, _const.CHANGE_DIALOG, 105)
  elseif L2_2 == 5 then
    L4_4 = _util
    L4_4 = L4_4.AddDialog
    L4_4(_text.M8_GADGETROOM_GARYB_A1, _const.CHANGE_DIALOG, 6)
  elseif L2_2 == 105 then
    L4_4 = _util
    L4_4 = L4_4.AddDialog
    L4_4(_text.M8_GADGETROOM_GARYC_Q2, _const.CHANGE_DIALOG, 6)
  elseif L2_2 == 6 then
    L4_4 = _util
    L4_4 = L4_4.ChangeBaseAnim
    L4_4("NPC/MysteriousTremors/Gary/GaryGRChalk")
    L4_4 = _util
    L4_4 = L4_4.AddDialog
    L4_4(_text.M8_GADGETROOM_GARYC_A, _const.CHANGE_DIALOG, 101)
  elseif L2_2 == 100 then
    function L4_4()
      _util.DisableInput()
      _util.SwitchState("Chalk2Wait")
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_id.M8_GaryGR)
      _util.ChangeBaseAnim("NPC/MysteriousTremors/Gary/GaryGRSeismo")
      _util.EnableInput()
      _util.ActivateNpc(_id.M8_GaryGR, 7)
    end
    scriptPlay(L4_4)
  elseif L2_2 == 101 then
    L4_4 = _util
    L4_4 = L4_4.AddLoopingOption
    L4_4(_text.M8_GADGETROOM_GARYD_Q1, -1, _const.CHANGE_DIALOG, 100)
    L4_4 = _util
    L4_4 = L4_4.AddLoopingOption
    L4_4(_text.M8_GADGETROOM_GARYD_Q2, -1, _const.CHANGE_DIALOG, 100)
    L4_4 = _util
    L4_4 = L4_4.AddLoopingOption
    L4_4(_text.M8_GADGETROOM_GARYD_Q3, -1, _const.CHANGE_DIALOG, 100)
  elseif L2_2 == 7 then
    L4_4 = _util
    L4_4 = L4_4.AddLoopingConv
    L4_4(_text.M8_GADGETROOM_GARYD_A)
    L4_4 = _util
    L4_4 = L4_4.AddLoopingOption
    L4_4(_text.M8_GADGETROOM_GARYE_Q1, -1, _const.CHANGE_DIALOG, 8)
    L4_4 = _util
    L4_4 = L4_4.AddLoopingOption
    L4_4(_text.M8_GADGETROOM_GARYF_Q1, -1, _const.CHANGE_DIALOG, 9)
  elseif L2_2 == 8 then
    L4_4 = _util
    L4_4 = L4_4.AddDialog
    L4_4(_text.M8_GADGETROOM_GARYE_A1, _const.CHANGE_DIALOG, 10)
  elseif L2_2 == 9 then
    L4_4 = _util
    L4_4 = L4_4.AddDialog
    L4_4(_text.M8_GADGETROOM_GARYF_A1, _const.CHANGE_DIALOG, 10)
  elseif L2_2 == 10 then
    L4_4 = _util
    L4_4 = L4_4.AddDialog
    L4_4(_text.M8_GADGETROOM_GARYF_A1_2, _const.CHANGE_DIALOG, 11)
  elseif L2_2 == 11 then
    function L4_4()
      _util.DisableInput()
      _util.PlaySFX(172)
      _util.ScreenShake(60)
      _util.ChangeBaseAnim("NPC/MysteriousTremors/Gary/GaryGRShake")
      _UPVALUE0_ = 0
      repeat
        _UPVALUE0_ = _UPVALUE0_ + 1
        scriptWait()
      until _UPVALUE0_ >= 60
      _util.ChangeBaseAnim("NPC/MysteriousTremors/Gary/GaryGRSeismo")
      _util.EnableInput()
      _util.ActivateNpc(_util.GetSelf(), 12)
    end
    scriptPlay(L4_4)
  elseif L2_2 == 12 then
    L4_4 = _util
    L4_4 = L4_4.AddObjective
    L4_4(_text.M8_OBJ1)
    L4_4 = _util
    L4_4 = L4_4.AddDialog
    L4_4(_text.M8_GADGETROOM_GARYF_A1_3, _const.CHANGE_DIALOG, 13)
  elseif L2_2 == 13 then
    L4_4 = _util
    L4_4 = L4_4.AddLoopingConv
    L4_4(_text.M8_GADGETROOM_GARYF_A1_4)
    L4_4 = _util
    L4_4 = L4_4.AddLoopingOption
    L4_4(_text.M8_GADGETROOM_GARYG_Q1, -1, _const.CHANGE_DIALOG, 14)
    L4_4 = _util
    L4_4 = L4_4.AddLoopingOption
    L4_4(_text.M8_GADGETROOM_GARYG_Q2, -1, _const.CHANGE_DIALOG, 14)
  elseif L2_2 == 14 then
    L4_4 = _util
    L4_4 = L4_4.SetVar
    L4_4("M8_MissionIntro", 1)
    L4_4 = _util
    L4_4 = L4_4.SetVar
    L4_4("SeenUgGiftShop", 0)
    L4_4 = _util
    L4_4 = L4_4.SetSpawn
    L4_4(0, _id.M8_GiftDoor2Town)
    L4_4 = _util
    L4_4 = L4_4.ClearObjective
    L4_4()
    function L4_4()
      if _util.GetVar("M8_HerbertDockIntro") == 0 and _util.GetVar("M8_MissionIntro") == 1 then
        _util.CutsceneQueueBegin()
        _util.SetVar("M8_playHerbert1played", 1)
        _util.SetVar("M8_HerbertDockIntro", 1)
        _util.DisableInput()
        _util.StartCutscene(_const.HERBERTDOCK1)
        repeat
          scriptWait()
        until _util.GetGameState() ~= _const.MISSION
        repeat
          scriptWait()
        until _util.GetGameState() == _const.MISSION
        _util.EnableInput()
        _util.CutsceneQueueEnd()
      end
    end
    m8_playHerbert1 = L4_4
    L4_4 = _util
    L4_4 = L4_4.AddScriptQueue
    L4_4(28, "m8_playHerbert1", 0, 0)
    function L4_4()
      if _util.GetVar("GiftShopItems") > 0 and _util.GetVar("GiftShopItems") < 4 then
        _util.CutsceneQueueBegin()
        _util.SetVar("GiftShopItems", 0)
        _util.SetSpawn(0, _id.M8_UGGiftSodaR)
        _util.SetSpawn(0, _id.M8_UGGiftSodaL)
        _util.SetSpawn(0, _id.M8_BarrelGift1)
        _util.ShowMap()
        _util.DisableInput()
        _util.StartCutscene(_const.UGGIFTFAIL1)
        repeat
          scriptWait()
        until _util.GetGameState() ~= _const.MISSION
        repeat
          scriptWait()
        until _util.GetGameState() == _const.MISSION
        _util.EnableInput()
        _util.CutsceneQueueEnd()
      end
    end
    m8_showGiftShopFallingUG = L4_4
    L4_4 = _util
    L4_4 = L4_4.AddScriptQueue
    L4_4(127, "m8_showGiftShopFallingUG", 0, 1)
    L4_4 = _util
    L4_4 = L4_4.AddDialog
    L4_4(_text.M8_GADGETROOM_GARYG_A1, _const.END_DIALOG, 15)
  elseif L2_2 == 15 then
    L4_4 = _util
    L4_4 = L4_4.GetVar
    L4_4 = L4_4("HerbertFound")
    if L4_4 == 0 then
      L4_4 = _util
      L4_4 = L4_4.AddDialog
      L4_4(_text.M8_GADGETROOM_GARY_GREET, _const.END_DIALOG, 15)
    else
      L4_4 = _util
      L4_4 = L4_4.AddLoopingConv
      L4_4(_text.M8_GADGETROOM_GARY_GREET3)
      L4_4 = _util
      L4_4 = L4_4.AddLoopingOption
      L4_4(_text.M8_GADGETROOM_GARYJ_Q1, -1, _const.CHANGE_DIALOG, 17)
      L4_4 = _util
      L4_4 = L4_4.AddLoopingOption
      L4_4(_text.M8_GADGETROOM_GARYJ_Q2, -1, _const.CHANGE_DIALOG, 16)
    end
  elseif L2_2 == 16 then
    L4_4 = _util
    L4_4 = L4_4.AddDialog
    L4_4(_text.M8_GADGETROOM_GARYJ_A2, _const.END_DIALOG, 15)
  elseif L2_2 == 17 then
    L4_4 = _util
    L4_4 = L4_4.AddLoopingConv
    L4_4(_text.M8_GADGETROOM_GARYJ_A1)
    L4_4 = _util
    L4_4 = L4_4.HasInventoryItem
    L4_4 = L4_4(_id.Inventory_MapComp)
    if L4_4 then
      L4_4 = _util
      L4_4 = L4_4.AddLoopingOption
      L4_4(_text.M8_GADGETROOM_GARYK_Q1, -1, _const.CHANGE_DIALOG, 20)
    else
      L4_4 = _util
      L4_4 = L4_4.AddLoopingOption
      L4_4(_text.M8_GADGETROOM_GARYK_Q1, -1, _const.CHANGE_DIALOG, 19)
    end
    L4_4 = _util
    L4_4 = L4_4.AddLoopingOption
    L4_4(_text.M8_GADGETROOM_GARYK_QUIT, -1, _const.CHANGE_DIALOG, 18)
  elseif L2_2 == 18 then
    L4_4 = _util
    L4_4 = L4_4.AddDialog
    L4_4(_text.M8_GADGETROOM_GARYK_QUITRESPONSE, _const.END_DIALOG, 17)
  elseif L2_2 == 19 then
    L4_4 = _util
    L4_4 = L4_4.AddConversation
    L4_4(_text.M8_GADGETROOM_GARYK_A1, _text.M8_GADGETROOM_GARYL_Q1, -1, _const.CHANGE_DIALOG, 20)
  elseif L2_2 == 20 then
    L4_4 = _util
    L4_4 = L4_4.HasInventoryItem
    L4_4 = L4_4(_id.Inventory_MapComp)
    if L4_4 then
      L4_4 = _util
      L4_4 = L4_4.AddDialog
      L4_4(_text.M8_GADGETROOM_GARYL_A1, _const.CHANGE_DIALOG, 121)
    else
      L4_4 = _util
      L4_4 = L4_4.AddDialog
      L4_4(_text.M8_GADGETROOM_GARYL_A1, _const.CHANGE_DIALOG, 21)
    end
  elseif L2_2 == 21 then
    L4_4 = _util
    L4_4 = L4_4.AddDialog
    L4_4(_text.M8_GADGETROOM_GARYL_A2, _const.CHANGE_DIALOG, 22)
  elseif L2_2 == 121 then
    L4_4 = _util
    L4_4 = L4_4.AddDialog
    L4_4(_text.M8_GADGETROOM_GARYL_A2B, _const.CHANGE_DIALOG, 22)
  elseif L2_2 == 22 then
    L4_4 = _util
    L4_4 = L4_4.AddDialog
    L4_4(_text.M8_GADGETROOM_GARYL_A3, _const.CHANGE_DIALOG, 23)
  elseif L2_2 == 23 then
    function L4_4()
      _util.DisableInput()
      _util.PlaySFX(172)
      _util.ScreenShake(60)
      _UPVALUE0_ = 0
      repeat
        _UPVALUE0_ = _UPVALUE0_ + 1
        scriptWait()
      until _UPVALUE0_ >= 60
      _util.EnableInput()
      _util.ActivateNpc(_util.GetSelf(), 24)
    end
    scriptPlay(L4_4)
  elseif L2_2 == 24 then
    L4_4 = _util
    L4_4 = L4_4.AddLoopingConv
    L4_4(_text.M8_GADGETROOM_GARYL_A4)
    L4_4 = _util
    L4_4 = L4_4.AddLoopingOption
    L4_4(_text.M8_GADGETROOM_GARYM_QUIT1, -1, _const.CHANGE_DIALOG, 25)
    L4_4 = _util
    L4_4 = L4_4.AddLoopingOption
    L4_4(_text.M8_GADGETROOM_GARYM_QUIT2, -1, _const.CHANGE_DIALOG, 25)
  elseif L2_2 == 25 then
    L4_4 = _util
    L4_4 = L4_4.AddDialog
    L4_4(_text.M8_GADGETROOM_GARYM_QUITRESPONSE, _const.END_DIALOG, 26)
  elseif L2_2 == 26 then
    L4_4 = _util
    L4_4 = L4_4.GetVar
    L4_4 = L4_4("hitBoiler")
    if L4_4 == 1 then
      L4_4 = _util
      L4_4 = L4_4.AddDialog
      L4_4(_text.M8_GADGETROOM_GARY_GREET5, _const.END_DIALOG, 26)
    else
      L4_4 = _util
      L4_4 = L4_4.GetVar
      L4_4 = L4_4("HeliumTouch")
      if L4_4 == 1 then
        L4_4 = _util
        L4_4 = L4_4.AddLoopingConv
        L4_4(_text.M8_GADGETROOM_GARY_GREET2)
        L4_4 = _util
        L4_4 = L4_4.AddLoopingOption
        L4_4(_text.M8_GADGETROOM_GARYH_Q1, -1, _const.CHANGE_DIALOG, 28)
        L4_4 = _util
        L4_4 = L4_4.AddLoopingOption
        L4_4(_text.M8_GADGETROOM_GARYH_QUIT, -1, _const.CHANGE_DIALOG, 27)
      else
        L4_4 = _util
        L4_4 = L4_4.AddDialog
        L4_4(_text.M8_GADGETROOM_GARY_GREET4, _const.END_DIALOG, 26)
      end
    end
  elseif L2_2 == 27 then
    L4_4 = _util
    L4_4 = L4_4.AddDialog
    L4_4(_text.M8_GADGETROOM_GARYH_QUITRESPONSE, _const.END_DIALOG, 26)
  elseif L2_2 == 28 then
    L4_4 = _util
    L4_4 = L4_4.AddLoopingConv
    L4_4(_text.M8_GADGETROOM_GARYH_A1)
    L4_4 = _util
    L4_4 = L4_4.AddLoopingOption
    L4_4(_text.M8_GADGETROOM_GARYI_Q1, -1, _const.CHANGE_DIALOG, 29)
    L4_4 = _util
    L4_4 = L4_4.AddLoopingOption
    L4_4(_text.M8_GADGETROOM_GARYI_Q2, _text.M8_GADGETROOM_GARYI_A2, _const.UPDATE_LOOP)
    L4_4 = _util
    L4_4 = L4_4.AddLoopingOption
    L4_4(_text.M8_GADGETROOM_GARYI_Q3, -1, _const.CHANGE_DIALOG, 30)
  elseif L2_2 == 29 then
    L4_4 = _util
    L4_4 = L4_4.SetVar
    L4_4("HeliumTouch", 2)
    L4_4 = _util
    L4_4 = L4_4.AddDialog
    L4_4(_text.M8_GADGETROOM_GARYI_A1, _const.END_DIALOG, 26)
  elseif L2_2 == 30 then
    L4_4 = _util
    L4_4 = L4_4.AddDialog
    L4_4(_text.M8_GADGETROOM_GARYI_A3, _const.END_DIALOG, 26)
  end
end
L4_4 = _util
L4_4 = L4_4.GetReason
L4_4 = L4_4()
if L4_4 == _const.COMMUNICATOR then
  L4_4 = _util
  L4_4 = L4_4.GetComCount
  L4_4 = L4_4()
  if _util.GetVar("hitBoiler") == 1 then
    if L4_4 == 0 then
      _util.AddNPCTextComm(_text.M8_GADGETROOM_GARY_COM1)
      _util.AddPlayerOptionComm(_text.M8_GADGETROOM_GARY_COM1_Q1, _const.CHANGE_DIALOG, -1, 1)
      _util.AddPlayerOptionComm(_text.M8_GADGETROOM_GARY_COM1_Q2, _const.CHANGE_DIALOG, -1, 2)
    elseif L4_4 == 1 then
      _util.AddNPCTextComm(_text.M8_GADGETROOM_GARY_COM1_A1, _const.END_DIALOG, -1, 0)
    elseif L4_4 == 2 then
      _util.AddNPCTextComm(_text.M8_GADGETROOM_GARY_COM1_A2, _const.END_DIALOG, -1, 0)
    end
  elseif _util.GetVar("hitBoiler") == 2 then
    _util.ClearCom()
    _util.AddNPCTextComm(_text.M8_GADGETROOM_GARY_COM2, _const.END_DIALOG, -1, 0)
  end
end
