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
    L3_3 = L3_3.AddLoopingConv
    L3_3(_text.M10_HQ_ROOKIE_INTRO)
    L3_3 = _util
    L3_3 = L3_3.AddLoopingOption
    L3_3(_text.M10_HQ_ROOKIEA_INTROQ1, -1, _const.CHANGE_DIALOG, 1)
    L3_3 = _util
    L3_3 = L3_3.AddLoopingOption
    L3_3(_text.M10_HQ_ROOKIEA_INTROQ2, -1, _const.CHANGE_DIALOG, 2)
  elseif L2_2 == 1 then
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M10_HQ_ROOKIEA_INTROA1, _const.END_DIALOG, 0)
  elseif L2_2 == 2 then
    L3_3 = _util
    L3_3 = L3_3.AddLoopingConv
    L3_3(_text.M10_HQ_ROOKIEA_INTROA2_2B)
    L3_3 = _util
    L3_3 = L3_3.AddLoopingOption
    L3_3(_text.M10_HQ_ROOKIEB_INTROQ1, -1, _const.CHANGE_DIALOG, 3)
    L3_3 = _util
    L3_3 = L3_3.AddLoopingOption
    L3_3(_text.M10_HQ_ROOKIEB_INTROQ2, -1, _const.CHANGE_DIALOG, 4)
  elseif L2_2 == 3 then
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M10_HQ_ROOKIEB_INTROA1, _const.END_DIALOG, 0)
  elseif L2_2 == 4 then
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M10_HQ_ROOKIEB_INTROA2, _const.END_DIALOG, 0)
  elseif L2_2 == 5 then
    L3_3 = _util
    L3_3 = L3_3.ChangeBaseAnim
    L3_3("NPC/WaddleSquad/Gary/gHQ", _id.M10_GaryDrawing)
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M10_HQ_ROOKIEA_A1_2GARY, _const.CHANGE_NPC, _id.M10_GaryDrawing, 4)
  elseif L2_2 == 6 then
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M10_HQ_ROOKIEB_A1, _const.CHANGE_NPC, _id.M10_GaryDrawing, 5)
  elseif L2_2 == 7 then
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M10_HQ_ROOKIEE_A_2HERB, _const.CHANGE_NPC, _id.M10_HQ_HerbCenter, 5)
    L3_3 = _util
    L3_3 = L3_3.ChangeBaseAnim
    L3_3("NPC/WaddleSquad/Herbert/herbSide", _id.M10_HQ_HerbCenter)
  elseif L2_2 == 8 then
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M10_HQ_ROOKIEG_A_2DIRECTOR, _const.CHANGE_DIALOG, 9)
    L3_3 = _util
    L3_3 = L3_3.ChangeBaseAnim
    L3_3("NPC/WaddleSquad/Gary/gHQ", _id.M10_GaryDrawing)
    L3_3 = _util
    L3_3 = L3_3.ChangeBaseAnim
    L3_3("NPC/WaddleSquad/JetPackGuy/jpgHQMeeting", _id.M10_HQJPG)
  elseif L2_2 == 9 then
    function L3_3()
      _util.DisableInput()
      _util.ChangeBaseAnim("NPC/WaddleSquad/Gary/gHQHerb", _id.M10_GaryDrawing)
      _util.ChangeBaseAnim("NPC/WaddleSquad/JetPackGuy/jpgHQHerb", _id.M10_HQJPG)
      _util.AddItem(_id.M10_HQ_DirScreenOff, 30)
      _util.SwitchState("turnOn", _id.M10_HQ_DirScreenOff)
      _util.PlaySFX(19)
      _util.PushCamera(_id.M10_HQ_DirScreenOff)
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_id.M10_HQ_DirScreenOff)
      _util.PopCamera(_id.M10_HQ_DirScreenOff)
      _util.DelItem(_id.M10_HQ_DirScreenOff)
      _util.AddItem(_id.M10_HQ_DirScreenOn)
      _util.AddItem(_id.M10_HQDirector)
      _util.PushCamera(_id.M10_HQDirector)
      _util.SwitchState("walk", _id.M10_HQDirector)
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_id.M10_HQDirector)
      _util.PopCamera(_id.M10_HQDirector)
      _util.EnableInput()
      _util.ActivateNpc(_id.M10_HQDirector, 0)
    end
    scriptPlay(L3_3)
  elseif L2_2 == 10 then
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M10_HQ_ROOKIEI_A_2GARY, _const.CHANGE_NPC, _id.M10_GaryDrawing, 16)
    L3_3 = _util
    L3_3 = L3_3.ChangeBaseAnim
    L3_3("NPC/WaddleSquad/Gary/gHQ", _id.M10_GaryDrawing)
    L3_3 = _util
    L3_3 = L3_3.ChangeBaseAnim
    L3_3("NPC/WaddleSquad/JetPackGuy/jpgHQMeeting", _id.M10_HQJPG)
  elseif L2_2 == 11 then
    L3_3 = _util
    L3_3 = L3_3.ChangeBaseAnim
    L3_3("NPC/WaddleSquad/Rookie/rHQEnd")
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M10_HQ_ROOKIEK_A_2JPG, _const.CHANGE_NPC, _id.M10_HQJPG, 2)
  end
end
