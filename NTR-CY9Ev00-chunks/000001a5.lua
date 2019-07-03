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
if L3_3 ~= _const.TOUCHED or L2_2 == 0 then
elseif L2_2 == 1 then
  L3_3 = _util
  L3_3 = L3_3.PushCamera
  L3_3(_id.M10_HQ_HerbCenter)
  L3_3 = _util
  L3_3 = L3_3.AddLoopingConv
  L3_3(_text.M10_HQ_HERBERTC_B1)
  L3_3 = _util
  L3_3 = L3_3.AddLoopingOption
  L3_3(_text.M10_HQ_HERBERTC_Q1, -1, _const.CHANGE_DIALOG, 2)
  L3_3 = _util
  L3_3 = L3_3.AddLoopingOption
  L3_3(_text.M10_HQ_HERBERTC_Q2, -1, _const.CHANGE_DIALOG, 2)
  function L3_3()
    _util.SwitchState("", _id.M10_HQ_HerbLeft)
    _util.SwitchState("talk", _id.M10_HQ_HerbCenter)
    _util.SwitchState("wave", _id.M10_HQ_HerbRight)
    repeat
      scriptWait()
    until not _util.IsAnimPlaying(_id.M10_HQ_HerbRight)
    _util.SwitchState("", _id.M10_HQ_HerbRight)
  end
  scriptPlay(L3_3)
elseif L2_2 == 2 then
  function L3_3()
    _util.AddDialog(_text.M10_HQ_HERBERTD_A_2B, _const.CHANGE_DIALOG, 11)
    _util.SwitchState("thumb", _id.M10_HQ_HerbLeft)
    _util.SwitchState("thumb", _id.M10_HQ_HerbCenter)
    repeat
      scriptWait()
    until not _util.IsAnimPlaying(_id.M10_HQ_HerbCenter)
    _util.SwitchState("", _id.M10_HQ_HerbLeft)
    _util.SwitchState("talk", _id.M10_HQ_HerbCenter)
  end
  scriptPlay(L3_3)
elseif L2_2 == 11 then
  function L3_3()
    _util.AddDialog(_text.M10_HQ_HERBERTD_B_2GARY, _const.CHANGE_NPC, _id.M10_GaryDrawing, 13)
    _util.ChangeBaseAnim("NPC/WaddleSquad/Herbert/herbCenterComb", _id.M10_HQ_HerbCenter, "up")
    _util.ChangeBaseAnim("NPC/WaddleSquad/Herbert/herbRightComb", _id.M10_HQ_HerbRight, "up")
    repeat
      scriptWait()
    until not _util.IsAnimPlaying(_id.M10_HQ_HerbCenter) and not _util.IsAnimPlaying(_id.M10_HQ_HerbRight)
    _util.SwitchState("talk", _id.M10_HQ_HerbCenter)
    _util.SwitchState("talk", _id.M10_HQ_HerbRight)
    repeat
      scriptWait()
    until not _util.IsAnimPlaying(_id.M10_HQ_HerbCenter) and not _util.IsAnimPlaying(_id.M10_HQ_HerbRight)
    _util.SwitchState("down", _id.M10_HQ_HerbCenter)
    _util.SwitchState("down", _id.M10_HQ_HerbRight)
    repeat
      scriptWait()
    until not _util.IsAnimPlaying(_id.M10_HQ_HerbCenter) and not _util.IsAnimPlaying(_id.M10_HQ_HerbRight)
    _util.ChangeBaseAnim("NPC/WaddleSquad/Herbert/herbCenter", _id.M10_HQ_HerbCenter, "talk")
    _util.ChangeBaseAnim("NPC/WaddleSquad/Herbert/herbRight", _id.M10_HQ_HerbRight, "talk")
  end
  scriptPlay(L3_3)
elseif L2_2 == 4 then
  L3_3 = _util
  L3_3 = L3_3.AddDialog
  L3_3(_text.M10_HQ_HERBERTE_A_2ROOKIE, _const.CHANGE_NPC, _id.M10_HQRookie, 7)
elseif L2_2 == 5 then
  L3_3 = _util
  L3_3 = L3_3.AddDialog
  L3_3(_text.M10_HQ_HERBERTF_A_2GARY, _const.CHANGE_NPC, _id.M10_GaryDrawing, 14)
elseif L2_2 == 6 then
  L3_3 = _util
  L3_3 = L3_3.AddDialog
  L3_3(_text.M10_HQ_HERBERTG_A_2B, _const.CHANGE_DIALOG, 7)
  L3_3 = _util
  L3_3 = L3_3.ChangeBaseAnim
  L3_3("NPC/WaddleSquad/Rookie/rHQMeeting", _id.M10_HQRookie)
  L3_3 = _util
  L3_3 = L3_3.SwitchState
  L3_3("", _id.M10_HQJPG)
  L3_3 = clearCoroutines
  L3_3()
elseif L2_2 == 7 then
  L3_3 = _util
  L3_3 = L3_3.ChangeBaseAnim
  L3_3("NPC/WaddleSquad/Herbert/herbCenter", _id.M10_HQ_HerbCenter, "talk")
  L3_3 = _util
  L3_3 = L3_3.AddDialog
  L3_3(_text.M10_HQ_HERBERTG_B_2ROOKIE, _const.CHANGE_DIALOG, 8)
elseif L2_2 == 8 then
  L3_3 = _util
  L3_3 = L3_3.DisableInput
  L3_3()
  L3_3 = _util
  L3_3 = L3_3.PlaySFX
  L3_3(219)
  function L3_3()
    _util.PushCamera(_id.M10_HQ_HerbCenter)
    _util.RestoreSongFromHerbert()
    _util.SwitchState("staticEnd", _id.M10_HQ_HerbLeft)
    _util.SwitchState("staticEnd", _id.M10_HQ_HerbCenter)
    _util.SwitchState("staticEnd", _id.M10_HQ_HerbRight)
    repeat
      scriptWait()
    until not _util.IsAnimPlaying(_id.M10_HQ_HerbCenter)
    _util.PopCamera(_id.M10_HQ_HerbCenter)
    _util.DelItem(_id.M10_HQ_HerbLeft)
    _util.DelItem(_id.M10_HQ_HerbCenter)
    _util.DelItem(_id.M10_HQ_HerbRight)
    _util.AddItem(_id.M10_HQ_HerbLeftBlack)
    _util.AddItem(_id.M10_HQ_HerbCenterBlack)
    _util.AddItem(_id.M10_HQ_HerbRightBlack)
    _util.AddItem(_id.M9_GaryHQ)
    _util.ActivateNpc(_id.M10_HQRookie, 8)
    _util.EnableInput()
  end
  scriptPlay(L3_3)
end
