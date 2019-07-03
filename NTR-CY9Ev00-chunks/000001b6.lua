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
    L3_3(_text.M10_HQ_DIRECTORG_A)
    L3_3 = _util
    L3_3 = L3_3.AddLoopingOption
    L3_3(_text.M10_HQ_DIRECTORG_Q1, -1, _const.CHANGE_DIALOG, 1)
    L3_3 = _util
    L3_3 = L3_3.AddLoopingOption
    L3_3(_text.M10_HQ_DIRECTORG_Q2, -1, _const.CHANGE_DIALOG, 1)
  elseif L2_2 == 1 then
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M10_HQ_DIRECTORH_A_2B, _const.CHANGE_DIALOG, 2)
  elseif L2_2 == 2 then
    L3_3 = _util
    L3_3 = L3_3.AddLoopingConv
    L3_3(_text.M10_HQ_DIRECTORH_B)
    L3_3 = _util
    L3_3 = L3_3.AddLoopingOption
    L3_3(_text.M10_HQ_DIRECTORH_Q1, -1, _const.CHANGE_DIALOG, 3)
    L3_3 = _util
    L3_3 = L3_3.AddLoopingOption
    L3_3(_text.M10_HQ_DIRECTORH_Q2, -1, _const.CHANGE_DIALOG, 3)
  elseif L2_2 == 3 then
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M10_HQ_DIRECTORI_A1_2B, _const.CHANGE_DIALOG, 5)
  elseif L2_2 == 4 then
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M10_HQ_DIRECTORI_A2_2B, _const.CHANGE_DIALOG, 5)
  elseif L2_2 == 5 then
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M10_HQ_DIRECTORI_B, _const.CHANGE_NPC, _id.M10_GaryDrawing, 15)
  elseif L2_2 == 6 then
    L3_3 = _util
    L3_3 = L3_3.ChangeBaseAnim
    L3_3("NPC/WaddleSquad/Gary/gHQHerb", _id.M10_GaryDrawing)
    L3_3 = _util
    L3_3 = L3_3.ChangeBaseAnim
    L3_3("NPC/WaddleSquad/JetPackGuy/jpgHQHerb", _id.M10_HQJPG)
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M10_HQ_DIRECTORJ_A_2GARY, _const.CHANGE_DIALOG, 7)
  elseif L2_2 == 7 then
    function L3_3()
      _util.PushCamera(_id.M10_HQ_DirScreenOn)
      _util.DelItem(_id.M10_HQDirector)
      _util.SwitchState("turnOff", _id.M10_HQ_DirScreenOn)
      _util.PlaySFX(19)
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_id.M10_HQ_DirScreenOn)
      _util.PopCamera(_id.M10_HQ_DirScreenOn)
      _util.DelItem(_id.M10_HQ_DirScreenOn)
      _util.ChangeBaseAnim("NPC/WaddleSquad/Rookie/rHQ", _id.M10_HQRookie)
      _util.ChangeBaseAnim("NPC/WaddleSquad/Gary/gHQ", _id.M10_GaryDrawing)
      _util.ChangeBaseAnim("NPC/WaddleSquad/JetPackGuy/jpgHQ", _id.M10_HQJPG)
      _util.ActivateNpc(_id.M10_GaryDrawing, 17)
    end
    scriptPlay(L3_3)
  end
end
