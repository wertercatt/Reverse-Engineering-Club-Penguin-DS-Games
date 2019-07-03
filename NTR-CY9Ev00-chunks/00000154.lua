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
    L3_3(_text.M11_HQ2_ROOKIE_4, _const.CHANGE_NPC, _id.M11_HQHerbertScreen, 1)
  elseif L2_2 == 1 then
    L3_3 = _util
    L3_3 = L3_3.AddNPCText
    L3_3(_text.M11_HQ2_ROOKIE_7, _const.CHANGE_NPC, _id.M11_HQGaryScreen, 28)
  elseif L2_2 == 2 then
    L3_3 = _util
    L3_3 = L3_3.ChangeBaseAnim
    L3_3("NPC/M11/Gary/GaryHScreen", _id.M11_HQGaryScreen)
    L3_3 = _util
    L3_3 = L3_3.AddNPCText
    L3_3(_text.M11_HQ2_ROOKIE_8, _const.CHANGE_NPC, _id.M11_HQHerbertScreen, 4)
  elseif L2_2 == 3 then
    L3_3 = _util
    L3_3 = L3_3.AddNPCText
    L3_3(_text.M11_HQ2_ROOKIE_9, _const.CHANGE_NPC, _id.M11_HQHerbertScreen, 5)
  elseif L2_2 == 4 then
    L3_3 = _util
    L3_3 = L3_3.AddNPCText
    L3_3(_text.M11_HQ2_ROOKIE_11, _const.CHANGE_NPC, _id.M11_HQHerbertScreen, 10)
  elseif L2_2 == 5 then
    L3_3 = _util
    L3_3 = L3_3.AddNPCText
    L3_3(_text.M11_HQ2_ROOKIE_13, _const.CHANGE_NPC, _id.M11_HQHerbertScreen, 12)
  elseif L2_2 == 6 then
    L3_3 = _util
    L3_3 = L3_3.AddNPCText
    L3_3(_text.M11_HQ2_ROOKIE_16, _const.CHANGE_NPC, _id.M11_HQHerbertScreen, 15)
  elseif L2_2 == 7 then
    L3_3 = _util
    L3_3 = L3_3.GetVar
    L3_3 = L3_3("StopBroadcast")
    if L3_3 == 1 then
      L3_3 = _util
      L3_3 = L3_3.ChangeBaseAnim
      L3_3("NPC/M11/Rookie/RookieHQ")
    end
    L3_3 = _util
    L3_3 = L3_3.AddNPCText
    L3_3(_text.M11_HQ2_JPG_ROOKIE, _const.END_DIALOG)
    L3_3 = _util
    L3_3 = L3_3.SetVar
    L3_3("StopBroadcast", 1)
  elseif L2_2 == 8 then
    L3_3 = _util
    L3_3 = L3_3.AddNPCText
    L3_3(_text.M11_HQ3_ROOKIE_2, _const.CHANGE_DIALOG, -1, 10)
  elseif L2_2 == 10 then
    function L3_3()
      _util.DisableInput()
      _util.AddItem(_id.M11_HQHerbertScreen)
      _util.AddItem(_id.M11_HQHerbertScreenLeft)
      _util.AddItem(_id.M11_HQHerbertScreenRight)
      _util.PushCamera(_id.M11_HQHerbertScreen)
      _util.PlaySFX(218)
      _util.SwitchState("staticBegin", _id.M11_HQHerbertScreen)
      _util.SwitchState("staticBegin", _id.M11_HQHerbertScreenLeft)
      _util.SwitchState("staticBegin", _id.M11_HQHerbertScreenRight)
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_id.M11_HQHerbertScreen)
      _util.SwitchState("fadeIn", _id.M11_HQHerbertScreen)
      _util.SwitchState("fadeIn", _id.M11_HQHerbertScreenLeft)
      _util.SwitchState("fadeIn", _id.M11_HQHerbertScreenRight)
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_id.M11_HQHerbertScreen)
      _util.PopCamera(_id.M11_HQHerbertScreen)
      _util.EnableInput()
      _util.ActivateNpc(_id.M11_HQHerbertScreen, 18)
    end
    scriptPlay(L3_3)
  elseif L2_2 == 9 then
    L3_3 = _util
    L3_3 = L3_3.GetVar
    L3_3 = L3_3("SearchForExit")
    if L3_3 == 0 then
      L3_3 = _util
      L3_3 = L3_3.AddNPCText
      L3_3(_text.M11_HQ3_ROOKIE_4, _const.CHANGE_NPC, _id.M11_HQGaryEscape, 33)
    else
      L3_3 = _util
      L3_3 = L3_3.AddNPCText
      L3_3(_text.M11_HQ3_ROOKIE_4, _const.END_DIALOG, -1, 9)
    end
  end
end
