local L0_0, L1_1, L2_2, L3_3
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
    L3_3 = L3_3.SetVar
    L3_3("M10_JPG_Intro", 1)
    function L3_3()
      _util.ChangeBaseAnim("NPC/WaddleSquad/JetPackGuy/jpgBeachFix")
      _util.SwitchState("turn", _id.M10_Beach_JPG)
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_id.M10_Beach_JPG)
    end
    scriptPlay(L3_3)
    _util.ChangeBaseAnim("NPC/WaddleSquad/JetPackGuy/jpgBeach")
    _util.AddLoopingConv(_text.M10_BEACH_JPG_GREET)
    _util.AddLoopingOption(_text.M10_BEACH_JPGA_Q1, -1, _const.CHANGE_DIALOG, 1)
    _util.AddLoopingOption(_text.M10_BEACH_JPGA_Q2, -1, _const.CHANGE_DIALOG, 2)
  elseif L2_2 == 1 then
    L3_3 = _util
    L3_3 = L3_3.ChangeBaseAnim
    L3_3("NPC/WaddleSquad/JetPackGuy/jpgBeach")
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M10_BEACH_JPGA_A1_2B, _const.CHANGE_DIALOG, 3)
  elseif L2_2 == 2 then
    L3_3 = _util
    L3_3 = L3_3.ChangeBaseAnim
    L3_3("NPC/WaddleSquad/JetPackGuy/jpgBeach")
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M10_BEACH_JPGA_A2_2B, _const.CHANGE_DIALOG, 3)
  elseif L2_2 == 3 then
    L3_3 = _util
    L3_3 = L3_3.AddLoopingConv
    L3_3(_text.M10_BEACH_JPGA_B)
    L3_3 = _util
    L3_3 = L3_3.AddLoopingOption
    L3_3(_text.M10_BEACH_JPGB_Q1, -1, _const.CHANGE_DIALOG, 4)
    L3_3 = _util
    L3_3 = L3_3.AddLoopingOption
    L3_3(_text.M10_BEACH_JPGB_Q2, -1, _const.CHANGE_DIALOG, 4)
  elseif L2_2 == 4 then
    L3_3 = _util
    L3_3 = L3_3.AddSubObjective
    L3_3(_text.M10_OBJ3, _text.M10_3SUBOBJ1, true)
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M10_BEACH_JPGB_A_2B, _const.CHANGE_DIALOG, 5)
  elseif L2_2 == 5 then
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M10_BEACH_JPGB_B, _const.END_DIALOG, 6)
  elseif L2_2 == 6 then
    L3_3 = _util
    L3_3 = L3_3.GetVar
    L3_3 = L3_3("foundSoda")
    if L3_3 == 0 then
      L3_3 = _util
      L3_3 = L3_3.AddConversation
      L3_3(_text.M10_BEACH_JPG_GREET2, _text.M10_BEACH_JPGC_Q1, -1, _const.CHANGE_DIALOG, 7)
    else
      L3_3 = _util
      L3_3 = L3_3.AddLoopingConv
      L3_3(_text.M10_BEACH_JPG_GREET2)
      L3_3 = _util
      L3_3 = L3_3.AddLoopingOption
      L3_3(_text.M10_BEACH_JPGC_Q1, -1, _const.CHANGE_DIALOG, 7)
      L3_3 = _util
      L3_3 = L3_3.AddLoopingOption
      L3_3(_text.M10_BEACH_JPGC_Q2, -1, _const.CHANGE_DIALOG, 8)
    end
  elseif L2_2 == 7 then
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M10_BEACH_JPGC_A1, _const.END_DIALOG, 6)
  elseif L2_2 == 8 then
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M10_BEACH_JPGC_A2_2B, _const.CHANGE_DIALOG, 9)
  elseif L2_2 == 9 then
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M10_BEACH_JPGC_B2_2C, _const.CHANGE_DIALOG, 10)
  elseif L2_2 == 10 then
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M10_BEACH_JPGC_C2, _const.END_DIALOG, 10)
    L3_3 = _util
    L3_3 = L3_3.SetVar
    L3_3("GiveRocketFuel", 1)
  elseif L2_2 == 11 then
    L3_3 = _util
    L3_3 = L3_3.AddLoopingConv
    L3_3(_text.M10_BEACH_JPG_GREET_FAIL)
    L3_3 = _util
    L3_3 = L3_3.AddLoopingOption
    L3_3(_text.M10_BEACH_JPGD_Q1, -1, _const.CHANGE_DIALOG, 12)
    L3_3 = _util
    L3_3 = L3_3.AddLoopingOption
    L3_3(_text.M10_BEACH_JPGD_Q2, -1, _const.CHANGE_DIALOG, 13)
    L3_3 = _util
    L3_3 = L3_3.AddLoopingOption
    L3_3(_text.M10_BEACH_JPGD_Q3, _text.M10_BEACH_JPGD_A3, _const.UPDATE_LOOP)
  elseif L2_2 == 12 then
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M10_BEACH_JPGC_C2, _const.END_DIALOG, 14)
  elseif L2_2 == 13 then
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M10_BEACH_JPGD_A2, _const.CHANGE_DIALOG, 18)
  elseif L2_2 == 14 then
    L3_3 = _util
    L3_3 = L3_3.AddLoopingConv
    L3_3(_text.M10_BEACH_JPG_GREET_FAIL2)
    L3_3 = _util
    L3_3 = L3_3.AddLoopingOption
    L3_3(_text.M10_BEACH_JPGE_Q1, -1, _const.CHANGE_DIALOG, 12)
    L3_3 = _util
    L3_3 = L3_3.AddLoopingOption
    L3_3(_text.M10_BEACH_JPGE_Q2, -1, _const.CHANGE_DIALOG, 13)
    L3_3 = _util
    L3_3 = L3_3.AddLoopingOption
    L3_3(_text.M10_BEACH_JPGD_Q3, _text.M10_BEACH_JPGD_A3, _const.UPDATE_LOOP)
  elseif L2_2 == 15 then
    L3_3 = _util
    L3_3 = L3_3.ChangeBaseAnim
    L3_3("NPC/WaddleSquad/JetPackGuy/jpgBeachBlast")
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M10_BEACH_JPG_PASS, _const.CHANGE_DIALOG, 16)
  elseif L2_2 == 16 then
    L3_3 = _util
    L3_3 = L3_3.SetVar
    L3_3("M10_JPGComplete", 1)
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M10_BEACH_JPG_PASS2, _const.CHANGE_DIALOG, 17)
  elseif L2_2 == 17 then
    function L3_3()
      _util.StartCutscene(_const.JETPACKGUYBLASTOFF)
      repeat
        scriptWait()
      until _util.GetGameState() ~= _const.MISSION
      repeat
        scriptWait()
      until _util.GetGameState() == _const.MISSION
      _util.MarkObjComplete(_text.M10_OBJ3, true)
      if _util.GetVar("M10_JPGComplete") == 1 and _util.GetVar("M10_RookieComplete") == 1 and _util.GetVar("M10_trapComplete") == 1 then
        _util.SetupComNpc(_const.COM_JPG, _id.M10_HQGary, 1)
        _util.LaunchCommunicator()
        _util.SetVar("M10_ComDock", 1)
      end
      _util.DelItem(_id.M10_Beach_JPG)
    end
    scriptPlay(L3_3)
  elseif L2_2 == 18 then
    function L3_3()
      _util.StartMiniGame(_const.BEAKER, 0)
      repeat
        scriptWait()
      until _util.GetGameState() ~= _const.MISSION
      repeat
        scriptWait()
      until _util.GetGameState() == _const.MISSION
      if _util.GetMinigameOutput1() == 1 then
        _util.DelItem(_id.M10_RocketPack)
        _util.ActivateNpc(_id.M10_Beach_JPG, 15)
        _util.SetVar("helpedJPG", 1)
      else
        _util.ActivateNpc(_id.M10_Beach_JPG, 11)
      end
    end
    scriptPlay(L3_3)
  end
end
L3_3 = _util
L3_3 = L3_3.GetReason
L3_3 = L3_3()
if L3_3 == _const.ITEM_DROPPED then
  L3_3 = _util
  L3_3 = L3_3.GetSource
  L3_3 = L3_3()
  if L3_3 == _id.M10_Soda and _util.GetVar("GiveRocketFuel") == 1 then
    _util.RemoveInventoryItem(_id.M10_Soda)
    _util.ActivateNpc(_util.GetSelf(), 18)
  end
end
