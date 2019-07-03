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
  L3_3 = L3_3("FPMission_Started")
  if L3_3 ~= 0 then
    L3_3 = _util
    L3_3 = L3_3.GetVar
    L3_3 = L3_3("FPMission_Started")
    if L3_3 ~= 7 then
      L3_3 = _util
      L3_3 = L3_3.GetVar
      L3_3 = L3_3("FPM07_missionComplete")
      if L3_3 == 0 then
        L3_3 = _util
        L3_3 = L3_3.AddDialog
        L3_3(3760, _const.END_DIALOG, 0)
      end
    end
  else
    L3_3 = _util
    L3_3 = L3_3.GetVar
    L3_3 = L3_3("FPMission_Started")
    if L3_3 == 0 then
      if L2_2 == 0 then
        L3_3 = _util
        L3_3 = L3_3.AddConversation
        L3_3(3761, 3762, -1, _const.CHANGE_DIALOG, 1)
      elseif L2_2 == 1 then
        L3_3 = _util
        L3_3 = L3_3.AddConversation
        L3_3(3763, 3764, -1, _const.CHANGE_DIALOG, 2)
      elseif L2_2 == 2 then
        L3_3 = _util
        L3_3 = L3_3.AddLoopingConv
        L3_3(3765)
        L3_3 = _util
        L3_3 = L3_3.AddLoopingOption
        L3_3(3766, -1, _const.CHANGE_DIALOG, 3)
        L3_3 = _util
        L3_3 = L3_3.AddLoopingOption
        L3_3(3767, -1, _const.END_DIALOG, 0)
      elseif L2_2 == 3 then
        function L3_3()
          _util.SetVar("FPM07_missionStarted", 1)
          _util.SetVar("FPMission_Started", 7)
          _util.SetVar("FPM07_decodedForestMessage", 0)
          _util.SetVar("FPM07_messagesDecoded", 0)
          _util.SetVar("FPM07_decodedMineMessage", 0)
          _util.SetVar("FPM07_decodedSkiMessage", 0)
          _util.SetVar("FPM07_decodedTownMessage", 0)
          _util.AddItem(_id.FPM07_CodeTown)
          _util.AddItem(_id.FPM07_TownNPC)
          _util.AddItem(_id.FPM07_CodeSki)
          _util.AddItem(_id.FPM07_SkiNPC)
          _util.AddItem(_id.FPM07_CodeMine)
          _util.AddItem(_id.FPM07_MineNPC)
          _util.EnableSpyPodFunc(_const.FLAG_DECODER)
          _util.StartCutscene(_const.FPM07INTRO)
          repeat
            scriptWait()
          until _util.GetGameState() ~= _const.MISSION
          repeat
            scriptWait()
          until _util.GetGameState() == _const.MISSION
          _util.SetObjective(32)
          _util.SetCursorPos(_util.GetX(_id.FPM07_ForestNPC), _util.GetY(_id.FPM07_ForestNPC))
          _util.ActivateNpc(_id.FPM07_ForestNPC, 10)
        end
        scriptPlay(L3_3)
      end
    else
      L3_3 = _util
      L3_3 = L3_3.GetVar
      L3_3 = L3_3("FPM07_decodedForestMessage")
      if L3_3 == 0 then
        if L2_2 == 10 then
          L3_3 = _util
          L3_3 = L3_3.AddConversation
          L3_3(3768, 3769, -1, _const.END_DIALOG, 0)
        elseif L2_2 == 0 then
          L3_3 = _util
          L3_3 = L3_3.AddConversation
          L3_3(3770, 3771, -1, _const.CHANGE_DIALOG, 1)
        elseif L2_2 == 1 then
          L3_3 = _util
          L3_3 = L3_3.AddDialog
          L3_3(3772, _const.END_DIALOG, 0)
        end
      elseif L2_2 == 0 then
        L3_3 = _util
        L3_3 = L3_3.AddConversation
        L3_3(3776, 3777, -1, _const.CHANGE_DIALOG, 1)
      elseif L2_2 == 1 then
        L3_3 = _util
        L3_3 = L3_3.AddDialog
        L3_3(3778, _const.END_DIALOG, 0)
      elseif L2_2 == 20 then
        L3_3 = _util
        L3_3 = L3_3.AddConversation
        L3_3(3806, 3807, -1, _const.CHANGE_DIALOG, 21)
        L3_3 = _util
        L3_3 = L3_3.DelItem
        L3_3(_id.FPM07_MineNPC)
        L3_3 = _util
        L3_3 = L3_3.DelItem
        L3_3(_id.FPM07_TownNPC)
        L3_3 = _util
        L3_3 = L3_3.DelItem
        L3_3(_id.FPM07_SkiNPC)
      elseif L2_2 == 21 then
        L3_3 = _util
        L3_3 = L3_3.AddConversation
        L3_3(3808, 3809, -1, _const.CHANGE_DIALOG, 22)
      elseif L2_2 == 22 then
        L3_3 = _util
        L3_3 = L3_3.AddDialog
        L3_3(3810, _const.CHANGE_DIALOG, 23)
      elseif L2_2 == 23 then
        L3_3 = _util
        L3_3 = L3_3.SetVar
        L3_3("FPM07_firstTwoWrong", 0)
        L3_3 = _util
        L3_3 = L3_3.SetVar
        L3_3("FPM07_secondTwoWrong", 0)
        L3_3 = _util
        L3_3 = L3_3.AddConversation
        L3_3(3811, 3812, -1, _const.CHANGE_DIALOG, 24)
      elseif L2_2 == 24 then
        L3_3 = _util
        L3_3 = L3_3.AddLoopingConv
        L3_3(3813)
        L3_3 = _util
        L3_3 = L3_3.AddLoopingOption
        L3_3(3814, -1, _const.CHANGE_DIALOG, 240)
        L3_3 = _util
        L3_3 = L3_3.AddLoopingOption
        L3_3(3815, -1, _const.CHANGE_DIALOG, 25)
        L3_3 = _util
        L3_3 = L3_3.AddLoopingOption
        L3_3(3816, -1, _const.CHANGE_DIALOG, 240)
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
        L3_3(3817)
        L3_3 = _util
        L3_3 = L3_3.AddLoopingOption
        L3_3(3818, -1, _const.CHANGE_DIALOG, 250)
        L3_3 = _util
        L3_3 = L3_3.AddLoopingOption
        L3_3(3819, -1, _const.CHANGE_DIALOG, 250)
        L3_3 = _util
        L3_3 = L3_3.AddLoopingOption
        L3_3(3820, -1, _const.CHANGE_DIALOG, 26)
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
          L3_3(3821, _const.END_DIALOG, 23)
        else
          function L3_3()
            if _util.GetVar("FP07_firstSmilies") == 0 then
              _util.SetVar("FP07_firstSmilies", 1)
            end
            _util.AddLoopingConv(3823)
            _util.AddLoopingOption(3824, -1, _const.CHANGE_DIALOG, 27)
            _util.AddLoopingOption(3825, -1, _const.CHANGE_DIALOG, 260)
            _util.AddLoopingOption(3826, -1, _const.CHANGE_DIALOG, 260)
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
        L3_3(3827)
        L3_3 = _util
        L3_3 = L3_3.AddLoopingOption
        L3_3(3828, -1, _const.CHANGE_DIALOG, 270)
        L3_3 = _util
        L3_3 = L3_3.AddLoopingOption
        L3_3(3829, -1, _const.CHANGE_DIALOG, 270)
        L3_3 = _util
        L3_3 = L3_3.AddLoopingOption
        L3_3(3830, -1, _const.CHANGE_DIALOG, 28)
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
          L3_3(3831, _const.END_DIALOG, 23)
        else
          function L3_3()
            _util.DisplayPopUp(493, "UI/Smilie", false)
            repeat
              scriptWait()
            until _util.IsPopUpVisible() == false
            _util.SetVar("FPM07_missionComplete", 1)
            if _UPVALUE0_ == 0 and _UPVALUE1_ < 9 then
              _util.RemoveMapAlert(_const.FREEPLAY7START)
            end
            _util.AddDialog(3832, _const.CHANGE_DIALOG, 29)
          end
          scriptPlay(L3_3)
        end
      elseif L2_2 == 29 then
        function L3_3()
          _util.SetSuitcaseItemEnabled(_id.SuitCase_SpaceHelmet, true)
          _util.DisplayPopUp(680, "UI/Zoom/SpaceHelmet")
          repeat
            scriptWait()
          until _util.IsPopUpVisible() == false
          _util.SetSpawn(0, _id.FPM07_ForestNPC)
          _util.DelItem(_id.FPM07_CodeForest)
          _util.DelItem(_id.FPM07_MineNPC)
          _util.DelItem(_id.FPM07_CodeMine)
          _util.DelItem(_id.FPM07_TownNPC)
          _util.DelItem(_id.FPM07_CodeTown)
          _util.DelItem(_id.FPM07_SkiNPC)
          _util.DelItem(_id.FPM07_CodeSki)
          _util.ActivateNpc(_id.FPM07_ForestNPC, 32)
        end
        scriptPlay(L3_3)
      elseif L2_2 == 32 then
        L3_3 = _util
        L3_3 = L3_3.SetVar
        L3_3("FPMission_Started", 0)
        L3_3 = _util
        L3_3 = L3_3.SetObjective
        L3_3(492)
        L3_3 = _util
        L3_3 = L3_3.MarkFreePlayMission
        L3_3(_const.FPM07)
        L3_3 = _util
        L3_3 = L3_3.StartCutscene
        L3_3(_const.FPM07OUTRO)
      end
    end
  end
end
