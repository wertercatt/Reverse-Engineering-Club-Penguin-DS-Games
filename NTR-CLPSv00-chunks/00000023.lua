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
        L1_1(3935, _const.END_DIALOG, 0)
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
          _util.DisplayPopUp(493, "UI/Smilie", false)
          repeat
            scriptWait()
          until _util.IsPopUpVisible() == false
          _util.AddConversation(3963, 3964, -1, _const.CHANGE_DIALOG, 50)
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
      L1_1(3937, _const.CHANGE_NPC, _id.FPM10_PetShopClerk, 1)
    end
  elseif L0_0 == 1 then
    L1_1 = _util
    L1_1 = L1_1.AddLoopingConv
    L1_1(3940)
    L1_1 = _util
    L1_1 = L1_1.AddLoopingOption
    L1_1(3941, -1, _const.CHANGE_DIALOG, 2)
    L1_1 = _util
    L1_1 = L1_1.AddLoopingOption
    L1_1(3942, -1, _const.END_DIALOG, 0)
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
      _util.SetObjective(41)
      _util.ActivateNpc(_id.FPM10_PuffleOwner, 3)
    end
    scriptPlay(L1_1)
  elseif L0_0 == 3 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(3943, 3944, -1, _const.CHANGE_DIALOG, 4)
  elseif L0_0 == 4 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(3945, _const.END_DIALOG, 5)
  elseif L0_0 == 5 then
    L1_1 = _util
    L1_1 = L1_1.AddLoopingConv
    L1_1(3950)
    L1_1 = _util
    L1_1 = L1_1.AddLoopingOption
    L1_1(3951, 3954, _const.UPDATE_LOOP)
    L1_1 = _util
    L1_1 = L1_1.AddLoopingOption
    L1_1(3952, 3955, _const.UPDATE_LOOP)
    L1_1 = _util
    L1_1 = L1_1.AddLoopingOption
    L1_1(3953, -1, _const.CHANGE_DIALOG, 6)
  elseif L0_0 == 6 then
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("FPM10_PufflesFound")
    if L1_1 == 0 then
      L1_1 = _util
      L1_1 = L1_1.AddDialog
      L1_1(3956, _const.END_DIALOG, 5)
    else
      L1_1 = _util
      L1_1 = L1_1.GetVar
      L1_1 = L1_1("FPM10_PufflesFound")
      if L1_1 == 1 then
        L1_1 = _util
        L1_1 = L1_1.AddDialog
        L1_1(3957, _const.END_DIALOG, 5)
      else
        L1_1 = _util
        L1_1 = L1_1.GetVar
        L1_1 = L1_1("FPM10_PufflesFound")
        if L1_1 == 2 then
          L1_1 = _util
          L1_1 = L1_1.AddDialog
          L1_1(3958, _const.END_DIALOG, 5)
        else
          L1_1 = _util
          L1_1 = L1_1.GetVar
          L1_1 = L1_1("FPM10_PufflesFound")
          if L1_1 == 3 then
            L1_1 = _util
            L1_1 = L1_1.AddDialog
            L1_1(3959, _const.END_DIALOG, 5)
          else
            L1_1 = _util
            L1_1 = L1_1.GetVar
            L1_1 = L1_1("FPM10_PufflesFound")
            if L1_1 == 4 then
              L1_1 = _util
              L1_1 = L1_1.AddDialog
              L1_1(3960, _const.END_DIALOG, 5)
            else
              L1_1 = _util
              L1_1 = L1_1.GetVar
              L1_1 = L1_1("FPM10_PufflesFound")
              if L1_1 == 5 then
                L1_1 = _util
                L1_1 = L1_1.AddDialog
                L1_1(3961, _const.END_DIALOG, 5)
              else
                L1_1 = _util
                L1_1 = L1_1.GetVar
                L1_1 = L1_1("FPM10_PufflesFound")
                if L1_1 == 6 then
                  L1_1 = _util
                  L1_1 = L1_1.AddDialog
                  L1_1(3962, _const.END_DIALOG, 5)
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
    L1_1(3965, 3966, -1, _const.CHANGE_DIALOG, 51)
  elseif L0_0 == 51 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(3967, _const.CHANGE_DIALOG, 52)
  elseif L0_0 == 52 then
    function L1_1()
      _util.SetConversationCount(53)
      _util.SetVar("FPM10_missionComplete", 1)
      _util.SetVar("FPMission_Started", 0)
      _util.RemoveMapAlert(_const.FREEPLAY10START)
      _util.AddCoins(50)
      _util.DisplayPopUp(494, "UI/coin", false)
      repeat
        scriptWait()
      until _util.IsPopUpVisible() == false
      _util.SetObjective(492)
      _util.MarkFreePlayMission(_const.FPM10)
      _util.StartCutscene(_const.FPM10OUTRO)
    end
    scriptPlay(L1_1)
  elseif L0_0 == 53 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(3968, _const.END_DIALOG, 53)
  end
end
