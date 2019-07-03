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
L2_2 = L2_2.GetReason
L2_2 = L2_2()
L3_3 = _const
L3_3 = L3_3.TOUCHED
if L2_2 == L3_3 then
  L2_2 = _util
  L2_2 = L2_2.GetConversationCount
  L2_2 = L2_2()
  L3_3 = _util
  L3_3 = L3_3.GetVar
  L3_3 = L3_3("FPM07_decodedTownMessage")
  if L3_3 == 0 then
    if L2_2 == 0 then
      L3_3 = _util
      L3_3 = L3_3.AddConversation
      L3_3(4061, 4062, -1, _const.CHANGE_DIALOG, 1)
    elseif L2_2 == 1 then
      L3_3 = _util
      L3_3 = L3_3.AddDialog
      L3_3(4063, _const.END_DIALOG, 0)
    end
  elseif L2_2 == 0 then
    L3_3 = _util
    L3_3 = L3_3.AddConversation
    L3_3(4067, 4068, -1, _const.CHANGE_DIALOG, 1)
  elseif L2_2 == 1 then
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(4069, _const.END_DIALOG, 0)
  elseif L2_2 == 20 then
    L3_3 = _util
    L3_3 = L3_3.AddConversation
    L3_3(4088, 4089, -1, _const.CHANGE_DIALOG, 21)
    L3_3 = _util
    L3_3 = L3_3.DelItem
    L3_3(_id.FPM07_ForestNPC)
    L3_3 = _util
    L3_3 = L3_3.DelItem
    L3_3(_id.FPM07_MineNPC)
    L3_3 = _util
    L3_3 = L3_3.DelItem
    L3_3(_id.FPM07_SkiNPC)
  elseif L2_2 == 21 then
    L3_3 = _util
    L3_3 = L3_3.AddConversation
    L3_3(4090, 4091, -1, _const.CHANGE_DIALOG, 22)
  elseif L2_2 == 22 then
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(4092, _const.CHANGE_DIALOG, 23)
  elseif L2_2 == 23 then
    L3_3 = _util
    L3_3 = L3_3.SetVar
    L3_3("FPM07_firstTwoWrong", 0)
    L3_3 = _util
    L3_3 = L3_3.SetVar
    L3_3("FPM07_secondTwoWrong", 0)
    L3_3 = _util
    L3_3 = L3_3.AddConversation
    L3_3(4093, 4094, -1, _const.CHANGE_DIALOG, 24)
  elseif L2_2 == 24 then
    L3_3 = _util
    L3_3 = L3_3.AddLoopingConv
    L3_3(4095)
    L3_3 = _util
    L3_3 = L3_3.AddLoopingOption
    L3_3(4096, -1, _const.CHANGE_DIALOG, 240)
    L3_3 = _util
    L3_3 = L3_3.AddLoopingOption
    L3_3(4097, -1, _const.CHANGE_DIALOG, 25)
    L3_3 = _util
    L3_3 = L3_3.AddLoopingOption
    L3_3(4098, -1, _const.CHANGE_DIALOG, 240)
  elseif L2_2 == 240 then
    L3_3 = _util
    L3_3 = L3_3.SetVar
    L3_3("FPM07_firstTwoWrong", 1)
    L3_3 = _util
    L3_3 = L3_3.ActivateNpc
    L3_3(_util.GetSelf(), 25)
  elseif L2_2 == 25 then
    L3_3 = _util
    L3_3 = L3_3.AddLoopingConv
    L3_3(4099)
    L3_3 = _util
    L3_3 = L3_3.AddLoopingOption
    L3_3(4100, -1, _const.CHANGE_DIALOG, 250)
    L3_3 = _util
    L3_3 = L3_3.AddLoopingOption
    L3_3(4101, -1, _const.CHANGE_DIALOG, 250)
    L3_3 = _util
    L3_3 = L3_3.AddLoopingOption
    L3_3(4102, -1, _const.CHANGE_DIALOG, 26)
  elseif L2_2 == 250 then
    L3_3 = _util
    L3_3 = L3_3.SetVar
    L3_3("FPM07_firstTwoWrong", 1)
    L3_3 = _util
    L3_3 = L3_3.ActivateNpc
    L3_3(_util.GetSelf(), 26)
  elseif L2_2 == 26 then
    L3_3 = _util
    L3_3 = L3_3.GetVar
    L3_3 = L3_3("FPM07_firstTwoWrong")
    if L3_3 == 1 then
      L3_3 = _util
      L3_3 = L3_3.AddDialog
      L3_3(4103, _const.END_DIALOG, 23)
    else
      function L3_3()
        if _util.GetVar("FP07_firstSmilies") == 0 then
          _util.SetVar("FP07_firstSmilies", 1)
        end
        _util.AddLoopingConv(4105)
        _util.AddLoopingOption(4106, -1, _const.CHANGE_DIALOG, 27)
        _util.AddLoopingOption(4107, -1, _const.CHANGE_DIALOG, 260)
        _util.AddLoopingOption(4108, -1, _const.CHANGE_DIALOG, 260)
      end
      scriptPlay(L3_3)
    end
  elseif L2_2 == 260 then
    L3_3 = _util
    L3_3 = L3_3.SetVar
    L3_3("FPM07_secondTwoWrong", 1)
    L3_3 = _util
    L3_3 = L3_3.ActivateNpc
    L3_3(_util.GetSelf(), 27)
  elseif L2_2 == 27 then
    L3_3 = _util
    L3_3 = L3_3.AddLoopingConv
    L3_3(4109)
    L3_3 = _util
    L3_3 = L3_3.AddLoopingOption
    L3_3(4110, -1, _const.CHANGE_DIALOG, 270)
    L3_3 = _util
    L3_3 = L3_3.AddLoopingOption
    L3_3(4111, -1, _const.CHANGE_DIALOG, 270)
    L3_3 = _util
    L3_3 = L3_3.AddLoopingOption
    L3_3(4112, -1, _const.CHANGE_DIALOG, 28)
  elseif L2_2 == 270 then
    L3_3 = _util
    L3_3 = L3_3.SetVar
    L3_3("FPM07_secondTwoWrong", 1)
    L3_3 = _util
    L3_3 = L3_3.ActivateNpc
    L3_3(_util.GetSelf(), 28)
  elseif L2_2 == 28 then
    L3_3 = _util
    L3_3 = L3_3.GetVar
    L3_3 = L3_3("FPM07_secondTwoWrong")
    if L3_3 == 1 then
      L3_3 = _util
      L3_3 = L3_3.AddDialog
      L3_3(4113, _const.END_DIALOG, 23)
    else
      function L3_3()
        _util.DisplayPopUp(626, "UI/Smilie", false)
        repeat
          scriptWait()
        until _util.IsPopUpVisible() == false
        _util.AddSmileys(20, _util.GetX(_util.GetSelf()), _util.GetY(_util.GetSelf()))
        _util.SetVar("FPM07_missionComplete", 1)
        if _UPVALUE0_ == 0 and _UPVALUE1_ < 9 then
          _util.RemoveMapAlert(_const.FREEPLAY7START)
        end
        _util.AddDialog(4114, _const.CHANGE_DIALOG, 29)
      end
      scriptPlay(L3_3)
    end
  elseif L2_2 == 29 then
    function L3_3()
      _util.SetSuitcaseItemEnabled(_id.SuitCase_SpaceHelmet, true)
      _util.DisplayPopUp(839, "UI/Zoom/SpaceHelmet")
      repeat
        scriptWait()
      until _util.IsPopUpVisible() == false
      _util.DelItem(_id.FPM07_ForestNPC)
      _util.DelItem(_id.FPM07_CodeForest)
      _util.DelItem(_id.FPM07_MineNPC)
      _util.DelItem(_id.FPM07_CodeMine)
      _util.SetSpawn(0, _id.FPM07_TownNPC)
      _util.DelItem(_id.FPM07_CodeTown)
      _util.DelItem(_id.FPM07_SkiNPC)
      _util.DelItem(_id.FPM07_CodeSki)
      _util.ActivateNpc(_id.FPM07_TownNPC, 32)
    end
    scriptPlay(L3_3)
  elseif L2_2 == 32 then
    L3_3 = _util
    L3_3 = L3_3.SetVar
    L3_3("FPMission_Started", 0)
    L3_3 = _util
    L3_3 = L3_3.SetObjective
    L3_3(625)
    L3_3 = _util
    L3_3 = L3_3.MarkFreePlayMission
    L3_3(_const.FPM07)
    L3_3 = _util
    L3_3 = L3_3.StartCutscene
    L3_3(_const.FPM07OUTRO)
  end
end
