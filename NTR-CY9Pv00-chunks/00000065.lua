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
    function L3_3()
      _util.DisableInput()
      _util.ChangeBaseAnim("NPC/SpySeek/PlazaNPCs/PlazaNPCsStart", _id.M9_PlazaPuffles, "start2yellow")
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_id.M9_PlazaPuffles)
      _util.EnableInput()
      _util.ChangeBaseAnim("NPC/SpySeek/PlazaNPCs/PlazaNPCsYellow1", _id.M9_PlazaPuffles, "talk")
      _util.AddDialog(_text.M9_PLAZA_NPC1_GREET, _const.CHANGE_DIALOG, 1)
    end
    scriptPlay(L3_3)
  elseif L2_2 == 1 then
    function L3_3()
      _util.DisableInput()
      _util.SwitchState("bowl", _id.M9_PlazaPuffles)
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_id.M9_PlazaPuffles)
      _util.ChangeBaseAnim("NPC/SpySeek/PlazaNPCs/PlazaNPCsYellow2", _id.M9_PlazaPuffles, "talk")
      _util.EnableInput()
      _util.AddDialog(_text.M9_PLAZA_NPC1A_2NPC2A, _const.CHANGE_DIALOG, 2)
    end
    scriptPlay(L3_3)
  elseif L2_2 == 2 then
    L3_3 = _util
    L3_3 = L3_3.ChangeBaseAnim
    L3_3("NPC/SpySeek/PlazaNPCs/PlazaNPCsGreen1", _id.M9_PlazaPuffles, "talk")
    L3_3 = _util
    L3_3 = L3_3.SwitchState
    L3_3("talk", _id.M9_PlazaPuffles)
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M9_PLAZA_NPC2A_2NPC1B, _const.CHANGE_DIALOG, 3)
  elseif L2_2 == 3 then
    L3_3 = _util
    L3_3 = L3_3.ChangeBaseAnim
    L3_3("NPC/SpySeek/PlazaNPCs/PlazaNPCsYellow2", _id.M9_PlazaPuffles, "talk")
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M9_PLAZA_NPC1B_2NPC2B, _const.CHANGE_DIALOG, 4)
  elseif L2_2 == 4 then
    function L3_3()
      _util.DisableInput()
      _util.SwitchState("yellow22green2", _id.M9_PlazaPuffles)
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_id.M9_PlazaPuffles)
      _util.ChangeBaseAnim("NPC/SpySeek/PlazaNPCs/PlazaNPCsGreen2", _id.M9_PlazaPuffles, "talk")
      _util.EnableInput()
      _util.AddDialog(_text.M9_PLAZA_NPC2B_2NPC1C, _const.CHANGE_DIALOG, 5)
    end
    scriptPlay(L3_3)
  elseif L2_2 == 5 then
    L3_3 = _util
    L3_3 = L3_3.ChangeBaseAnim
    L3_3("NPC/SpySeek/PlazaNPCs/PlazaNPCsYellow3", _id.M9_PlazaPuffles, "talk")
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M9_PLAZA_NPC1C_2NPC2C, _const.CHANGE_DIALOG, 6)
  elseif L2_2 == 6 then
    function L3_3()
      _util.DisableInput()
      _util.SwitchState("yellow32green3", _id.M9_PlazaPuffles)
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_id.M9_PlazaPuffles)
      _util.ChangeBaseAnim("NPC/SpySeek/PlazaNPCs/PlazaNPCsGreen3", _id.M9_PlazaPuffles, "talk")
      _util.EnableInput()
      _util.AddDialog(_text.M9_PLAZA_NPC2C_2NPC1D, _const.CHANGE_DIALOG, 100)
    end
    scriptPlay(L3_3)
  elseif L2_2 == 100 then
    function L3_3()
      _util.DisableInput()
      _util.ChangeBaseAnim("NPC/SpySeek/PlazaNPCs/PlazaNPCsStart", _id.M9_PlazaPuffles, "BlowGum")
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_id.M9_PlazaPuffles)
      _util.DelItem(_id.M9_PlazaPuffles)
      _util.AddItem(_id.M9_PlazaPuffelsTalk, 1)
      _util.AddItem(_id.M9_Gum, 3)
      _util.SetSpawn(0, _id.M9_PlazaPuffles)
      _util.SetSpawn(1, _id.M9_PlazaPuffelsTalk)
      _util.SetSpawn(1, _id.M9_Gum)
      _util.EnableInput()
      _util.ActivateNpc(_id.M9_PlazaPuffelsTalk, 7)
    end
    scriptPlay(L3_3)
  elseif L2_2 == 7 then
    L3_3 = _util
    L3_3 = L3_3.SwitchState
    L3_3("", _id.M9_PlazaPuffelsTalk)
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M9_PLAZA_NPC1D_2NPC2D, _const.CHANGE_DIALOG, 8)
  elseif L2_2 == 8 then
    L3_3 = _util
    L3_3 = L3_3.ChangeBaseAnim
    L3_3("NPC/SpySeek/PlazaNPCs/PlazaNPCsYellow4", _id.M9_PlazaPuffelsTalk, "talk")
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M9_PLAZA_NPC2D_2NPC1E, _const.CHANGE_DIALOG, 9)
  elseif L2_2 == 9 then
    L3_3 = _util
    L3_3 = L3_3.ChangeBaseAnim
    L3_3("NPC/SpySeek/PlazaNPCs/PlazaNPCsGreen4", _id.M9_PlazaPuffelsTalk, "talk")
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M9_PLAZA_NPC1E_2NPC2E, _const.CHANGE_DIALOG, 10)
  elseif L2_2 == 10 then
    L3_3 = _util
    L3_3 = L3_3.ChangeBaseAnim
    L3_3("NPC/SpySeek/PlazaNPCs/PlazaNPCsYellow5", _id.M9_PlazaPuffelsTalk, "talk")
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M9_PLAZA_NPC2E_2NPC1F, _const.CHANGE_DIALOG, 11)
  elseif L2_2 == 11 then
    L3_3 = _util
    L3_3 = L3_3.ChangeBaseAnim
    L3_3("NPC/SpySeek/PlazaNPCs/PlazaNPCsGreen5", _id.M9_PlazaPuffelsTalk, "talk")
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M9_PLAZA_NPC1F_2NPC2F, _const.CHANGE_DIALOG, 12)
  elseif L2_2 == 12 then
    L3_3 = _util
    L3_3 = L3_3.ChangeBaseAnim
    L3_3("NPC/SpySeek/PlazaNPCs/PlazaNPCsYellow6", _id.M9_PlazaPuffelsTalk, "talk")
    L3_3 = _util
    L3_3 = L3_3.AddLoopingConv
    L3_3(_text.M9_PLAZA_NPC2F)
    L3_3 = _util
    L3_3 = L3_3.AddLoopingOption
    L3_3(_text.M9_PLAZA_NPCG_Q1, -1, _const.CHANGE_DIALOG, 13)
    L3_3 = _util
    L3_3 = L3_3.AddLoopingOption
    L3_3(_text.M9_PLAZA_NPCG_Q2, -1, _const.CHANGE_DIALOG, 18)
  elseif L2_2 == 13 then
    L3_3 = _util
    L3_3 = L3_3.ChangeBaseAnim
    L3_3("NPC/SpySeek/PlazaNPCs/PlazaNPCsGreen6", _id.M9_PlazaPuffelsTalk, "talk")
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M9_PLAZA_NPC1G_A1, _const.CHANGE_DIALOG, 14)
  elseif L2_2 == 14 then
    L3_3 = _util
    L3_3 = L3_3.ChangeBaseAnim
    L3_3("NPC/SpySeek/PlazaNPCs/PlazaNPCsYellow7", _id.M9_PlazaPuffelsTalk, "talk")
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M9_PLAZA_NPC2G_A1, _const.CHANGE_DIALOG, 15)
  elseif L2_2 == 15 then
    L3_3 = _util
    L3_3 = L3_3.ChangeBaseAnim
    L3_3("NPC/SpySeek/PlazaNPCs/PlazaNPCsGreen7", _id.M9_PlazaPuffelsTalk, "talk")
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M9_PLAZA_NPC1H_A1, _const.CHANGE_DIALOG, 16)
  elseif L2_2 == 16 then
    L3_3 = _util
    L3_3 = L3_3.ChangeBaseAnim
    L3_3("NPC/SpySeek/PlazaNPCs/PlazaNPCsYellow8", _id.M9_PlazaPuffelsTalk, "talk")
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M9_PLAZA_NPC2H_A1, _const.CHANGE_DIALOG, 17)
  elseif L2_2 == 17 then
    L3_3 = _util
    L3_3 = L3_3.ChangeBaseAnim
    L3_3("NPC/SpySeek/PlazaNPCs/PlazaNPCsGreen7", _id.M9_PlazaPuffelsTalk, "talk")
    L3_3 = _util
    L3_3 = L3_3.AddLoopingConv
    L3_3(_text.M9_PLAZA_NPC1I_A1)
    L3_3 = _util
    L3_3 = L3_3.AddLoopingOption
    L3_3(_text.M9_PLAZA_NPCJ_Q1, -1, _const.CHANGE_DIALOG, 22)
    L3_3 = _util
    L3_3 = L3_3.AddLoopingOption
    L3_3(_text.M9_PLAZA_NPCJ_Q2, -1, _const.CHANGE_DIALOG, 18)
  elseif L2_2 == 18 then
    L3_3 = _util
    L3_3 = L3_3.ChangeBaseAnim
    L3_3("NPC/SpySeek/PlazaNPCs/PlazaNPCsGreen7", _id.M9_PlazaPuffelsTalk, "talk")
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M9_PLAZA_NPC1_QUIT, _const.CHANGE_DIALOG, 19)
  elseif L2_2 == 19 then
    L3_3 = _util
    L3_3 = L3_3.ChangeBaseAnim
    L3_3("NPC/SpySeek/PlazaNPCs/PlazaNPCsYellow8", _id.M9_PlazaPuffelsTalk, "talk")
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M9_PLAZA_NPC2_QUIT, _const.END_DIALOG, 20)
  elseif L2_2 == 20 then
    L3_3 = _util
    L3_3 = L3_3.ChangeBaseAnim
    L3_3("NPC/SpySeek/PlazaNPCs/PlazaNPCsGreen7", _id.M9_PlazaPuffelsTalk, "talk")
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M9_PLAZA_NPC1_GREET2, _const.CHANGE_DIALOG, 21)
  elseif L2_2 == 21 then
    L3_3 = _util
    L3_3 = L3_3.ChangeBaseAnim
    L3_3("NPC/SpySeek/PlazaNPCs/PlazaNPCsYellow8", _id.M9_PlazaPuffelsTalk, "talk")
    L3_3 = _util
    L3_3 = L3_3.AddLoopingConv
    L3_3(_text.M9_PLAZA_NPC2_GREET2)
    L3_3 = _util
    L3_3 = L3_3.AddLoopingOption
    L3_3(_text.M9_PLAZA_NPCK_Q1, -1, _const.CHANGE_DIALOG, 13)
    L3_3 = _util
    L3_3 = L3_3.AddLoopingOption
    L3_3(_text.M9_PLAZA_NPCK_QUIT, -1, _const.CHANGE_DIALOG, 18)
  elseif L2_2 == 22 then
    L3_3 = _util
    L3_3 = L3_3.ChangeBaseAnim
    L3_3("NPC/SpySeek/PlazaNPCs/PlazaNPCsYellow7", _id.M9_PlazaPuffelsTalk, "talk")
    L3_3 = print
    L3_3("in we'll be good")
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M9_PLAZA_NPCJ_A1, _const.END_DIALOG, 20)
  elseif L2_2 == 23 then
    function L3_3()
      _util.DisableInput()
      _util.DelItem(_id.M9_PlazaPuffelsTalk)
      _util.AddItem(_id.M9_PlazaPuffleEnd)
      _util.SetSpawn(0, _id.M9_PlazaPuffelsTalk)
      _util.SetSpawn(1, _id.M9_PlazaPuffleEnd)
      _util.EnableInput()
      _util.ActivateNpc(_id.M9_PlazaPuffleEnd, 231)
    end
    scriptPlay(L3_3)
  elseif L2_2 == 231 then
    L3_3 = _util
    L3_3 = L3_3.ChangeBaseAnim
    L3_3("NPC/SpySeek/PlazaNPCs/PlazaNPCsGreen8", _id.M9_PlazaPuffleEnd, "talk")
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M9_PLAZA_NPC1_GUMREMOVED, _const.CHANGE_DIALOG, 24)
  elseif L2_2 == 24 then
    L3_3 = _util
    L3_3 = L3_3.ChangeBaseAnim
    L3_3("NPC/SpySeek/PlazaNPCs/PlazaNPCsYellow9", _id.M9_PlazaPuffleEnd, "talk")
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M9_PLAZA_NPC2_GUM2L, _const.CHANGE_DIALOG, 25)
  elseif L2_2 == 25 then
    L3_3 = _util
    L3_3 = L3_3.ChangeBaseAnim
    L3_3("NPC/SpySeek/PlazaNPCs/PlazaNPCsGreen9", _id.M9_PlazaPuffleEnd, "talk")
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M9_PLAZA_NPC1L_A1, _const.CHANGE_DIALOG, 26)
  elseif L2_2 == 26 then
    L3_3 = _util
    L3_3 = L3_3.ChangeBaseAnim
    L3_3("NPC/SpySeek/PlazaNPCs/PlazaNPCsYellow10", _id.M9_PlazaPuffleEnd, "talk")
    L3_3 = _util
    L3_3 = L3_3.AddLoopingConv
    L3_3(_text.M9_PLAZA_NPC2L_A1)
    L3_3 = _util
    L3_3 = L3_3.AddLoopingOption
    L3_3(_text.M9_PLAZA_NPCM_Q1, -1, _const.CHANGE_DIALOG, 27)
    L3_3 = _util
    L3_3 = L3_3.AddLoopingOption
    L3_3(_text.M9_PLAZA_NPCM_Q2, -1, _const.CHANGE_DIALOG, 27)
  elseif L2_2 == 27 then
    L3_3 = _util
    L3_3 = L3_3.ChangeBaseAnim
    L3_3("NPC/SpySeek/PlazaNPCs/PlazaNPCsGreen9", _id.M9_PlazaPuffleEnd, "talk")
    L3_3 = _util
    L3_3 = L3_3.AddLoopingConv
    L3_3(_text.M9_PLAZA_NPC1M_A1)
    L3_3 = _util
    L3_3 = L3_3.AddLoopingOption
    L3_3(_text.M9_PLAZA_NPCN_Q1, -1, _const.CHANGE_DIALOG, 28)
    L3_3 = _util
    L3_3 = L3_3.AddLoopingOption
    L3_3(_text.M9_PLAZA_NPCN_Q2, -1, _const.CHANGE_DIALOG, 28)
  elseif L2_2 == 28 then
    L3_3 = _util
    L3_3 = L3_3.SetVar
    L3_3("gumTaken", 1)
    L3_3 = _util
    L3_3 = L3_3.ChangeBaseAnim
    L3_3("NPC/SpySeek/PlazaNPCs/PlazaNPCsGreen10", _id.M9_PlazaPuffleEnd, "talk")
    L3_3 = _util
    L3_3 = L3_3.AddNPCText
    L3_3(_text.M9_PLAZA_NPC1N_A1, _const.CHANGE_DIALOG, -1, 500)
  elseif L2_2 == 500 then
    function L3_3()
      _util.DisableInput()
      _util.AddInventoryItem(_id.M9_Gum)
      repeat
        scriptWait()
      until _util.IsPopUpVisible()
      _util.EnableInput(true)
      repeat
        scriptWait()
      until not _util.IsPopUpVisible()
      _util.ActivateNpc(_id.M9_PlazaPuffleEnd, 29)
    end
    scriptPlay(L3_3)
  elseif L2_2 == 29 then
    L3_3 = _util
    L3_3 = L3_3.ChangeBaseAnim
    L3_3("NPC/SpySeek/PlazaNPCs/PlazaNPCsYellow10", _id.M9_PlazaPuffleEnd, "talk")
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M9_PLAZA_NPC2N_A1, _const.END_DIALOG, 30)
  elseif L2_2 == 30 then
    L3_3 = _util
    L3_3 = L3_3.ChangeBaseAnim
    L3_3("NPC/SpySeek/PlazaNPCs/PlazaNPCsGreen9", _id.M9_PlazaPuffleEnd, "talk")
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M9_PLAZA_NPC1O_A1, _const.CHANGE_DIALOG, 31)
  elseif L2_2 == 31 then
    L3_3 = _util
    L3_3 = L3_3.ChangeBaseAnim
    L3_3("NPC/SpySeek/PlazaNPCs/PlazaNPCsYellow11", _id.M9_PlazaPuffleEnd, "talk")
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M9_PLAZA_NPC2O_A1, _const.END_DIALOG, 30)
  end
end
L3_3 = _util
L3_3 = L3_3.GetReason
L3_3 = L3_3()
if L3_3 == _const.ITEM_DROPPED then
  L3_3 = _util
  L3_3 = L3_3.GetSource
  L3_3 = L3_3()
  if L3_3 == _id.M9_FindFourAll then
    _util.AddDialog(_text.M9_LODGE_NPC1_ITEM_DROP, _const.CHANGE_DIALOG, 10)
  end
end
