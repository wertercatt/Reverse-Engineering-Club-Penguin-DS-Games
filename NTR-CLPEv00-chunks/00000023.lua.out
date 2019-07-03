local L0_0, L1_1
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.CREATED
if L0_0 == L1_1 then
end
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.TOUCHED
if L0_0 == L1_1 then
  L0_0 = _util
  L0_0 = L0_0.GetConversationCount
  L0_0 = L0_0()
  L1_1 = _util
  L1_1 = L1_1.GetVar
  L1_1 = L1_1("FPMission_Started")
  if L1_1 ~= 0 then
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("FPMission_Started")
    if L1_1 ~= 10 then
      L1_1 = _util
      L1_1 = L1_1.GetVar
      L1_1 = L1_1("FPM10_missionComplete")
      if L1_1 == 0 then
        L1_1 = _util
        L1_1 = L1_1.AddDialog
        L1_1(4226, _const.END_DIALOG, 0)
      end
    end
  elseif L0_0 == 5 then
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("FPM10_PufflesFound")
    if L1_1 >= 7 then
      L1_1 = _util
      L1_1 = L1_1.GetVar
      L1_1 = L1_1("FPMission_Started")
      if L1_1 == 10 then
        function L1_1()
          _util.DisplayPopUp(626, "UI/Smilie", false)
          repeat
            scriptWait()
          until _util.IsPopUpVisible() == false
          _util.AddSmileys(20, _util.GetX(_util.GetSelf()), _util.GetX(_util.GetSelf()))
          _util.AddConversation(4254, 4255, -1, _const.CHANGE_DIALOG, 50)
        end
        scriptPlay(L1_1)
      end
    end
  elseif L0_0 == 0 then
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("FPMission_Started")
    if L1_1 == 0 then
      L1_1 = _util
      L1_1 = L1_1.AddDialog
      L1_1(4228, _const.CHANGE_NPC, _id.FPM10_PetShopClerk, 1)
    end
  elseif L0_0 == 1 then
    L1_1 = _util
    L1_1 = L1_1.AddLoopingConv
    L1_1(4231)
    L1_1 = _util
    L1_1 = L1_1.AddLoopingOption
    L1_1(4232, -1, _const.CHANGE_DIALOG, 2)
    L1_1 = _util
    L1_1 = L1_1.AddLoopingOption
    L1_1(4233, -1, _const.END_DIALOG, 0)
  elseif L0_0 == 2 then
    function L1_1()
      _util.SetSpawn(1, _id.FPM10_Puffle1)
      _util.SetSpawn(1, _id.FPM10_Puffle2)
      _util.SetSpawn(1, _id.FPM10_Puffle3)
      _util.SetSpawn(1, _id.FPM10_Puffle4)
      _util.SetSpawn(1, _id.FPM10_Puffle5)
      _util.SetSpawn(1, _id.FPM10_Puffle6)
      _util.SetSpawn(1, _id.FPM10_Puffle7)
      _util.SetVar("FPM10_PufflesFound", 0)
      _util.SetVar("FPMission_Started", 10)
      _util.StartCutscene(_const.FPM10INTRO)
      repeat
        scriptWait()
      until _util.GetGameState() ~= _const.MISSION
      repeat
        scriptWait()
      until _util.GetGameState() == _const.MISSION
      _util.SetObjective(92)
      _util.ActivateNpc(_id.FPM10_PuffleOwner, 3)
    end
    scriptPlay(L1_1)
  elseif L0_0 == 3 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(4234, 4235, -1, _const.CHANGE_DIALOG, 4)
  elseif L0_0 == 4 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(4236, _const.END_DIALOG, 5)
  elseif L0_0 == 5 then
    L1_1 = _util
    L1_1 = L1_1.AddLoopingConv
    L1_1(4241)
    L1_1 = _util
    L1_1 = L1_1.AddLoopingOption
    L1_1(4242, 4245, _const.UPDATE_LOOP)
    L1_1 = _util
    L1_1 = L1_1.AddLoopingOption
    L1_1(4243, 4246, _const.UPDATE_LOOP)
    L1_1 = _util
    L1_1 = L1_1.AddLoopingOption
    L1_1(4244, -1, _const.CHANGE_DIALOG, 6)
  elseif L0_0 == 6 then
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("FPM10_PufflesFound")
    if L1_1 == 0 then
      L1_1 = _util
      L1_1 = L1_1.AddDialog
      L1_1(4247, _const.END_DIALOG, 5)
    else
      L1_1 = _util
      L1_1 = L1_1.GetVar
      L1_1 = L1_1("FPM10_PufflesFound")
      if L1_1 == 1 then
        L1_1 = _util
        L1_1 = L1_1.AddDialog
        L1_1(4248, _const.END_DIALOG, 5)
      else
        L1_1 = _util
        L1_1 = L1_1.GetVar
        L1_1 = L1_1("FPM10_PufflesFound")
        if L1_1 == 2 then
          L1_1 = _util
          L1_1 = L1_1.AddDialog
          L1_1(4249, _const.END_DIALOG, 5)
        else
          L1_1 = _util
          L1_1 = L1_1.GetVar
          L1_1 = L1_1("FPM10_PufflesFound")
          if L1_1 == 3 then
            L1_1 = _util
            L1_1 = L1_1.AddDialog
            L1_1(4250, _const.END_DIALOG, 5)
          else
            L1_1 = _util
            L1_1 = L1_1.GetVar
            L1_1 = L1_1("FPM10_PufflesFound")
            if L1_1 == 4 then
              L1_1 = _util
              L1_1 = L1_1.AddDialog
              L1_1(4251, _const.END_DIALOG, 5)
            else
              L1_1 = _util
              L1_1 = L1_1.GetVar
              L1_1 = L1_1("FPM10_PufflesFound")
              if L1_1 == 5 then
                L1_1 = _util
                L1_1 = L1_1.AddDialog
                L1_1(4252, _const.END_DIALOG, 5)
              else
                L1_1 = _util
                L1_1 = L1_1.GetVar
                L1_1 = L1_1("FPM10_PufflesFound")
                if L1_1 == 6 then
                  L1_1 = _util
                  L1_1 = L1_1.AddDialog
                  L1_1(4253, _const.END_DIALOG, 5)
                end
              end
            end
          end
        end
      end
    end
  elseif L0_0 == 50 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(4256, 4257, -1, _const.CHANGE_DIALOG, 51)
  elseif L0_0 == 51 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(4258, _const.CHANGE_DIALOG, 52)
  elseif L0_0 == 52 then
    function L1_1()
      _util.SetConversationCount(53)
      _util.SetVar("FPM10_missionComplete", 1)
      _util.SetVar("FPMission_Started", 0)
      _util.RemoveMapAlert(_const.FREEPLAY10START)
      _util.AddCoins(50)
      _util.DisplayPopUp(627, "UI/coin", false)
      repeat
        scriptWait()
      until _util.IsPopUpVisible() == false
      _util.SetObjective(625)
      _util.MarkFreePlayMission(_const.FPM10)
      _util.StartCutscene(_const.FPM10OUTRO)
    end
    scriptPlay(L1_1)
  elseif L0_0 == 53 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(4259, _const.END_DIALOG, 53)
  end
end
