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
    if L1_1 ~= 9 then
      L1_1 = _util
      L1_1 = L1_1.GetVar
      L1_1 = L1_1("FPM09_missionComplete")
      if L1_1 == 0 then
        L1_1 = _util
        L1_1 = L1_1.AddDialog
        L1_1(3895, _const.END_DIALOG, 0)
      end
    end
  elseif L0_0 == 10 then
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("FPM09_JobsCompleted")
    if L1_1 >= 4 then
      L1_1 = _util
      L1_1 = L1_1.GetVar
      L1_1 = L1_1("FPMission_Started")
      if L1_1 == 9 then
        function L1_1()
          _util.DisplayPopUp(493, "UI/Smilie", false)
          repeat
            scriptWait()
          until _util.IsPopUpVisible() == false
          _util.AddConversation(3916, 3917, -1, _const.CHANGE_DIALOG, 50)
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
      L1_1 = L1_1.AddConversation
      L1_1(3896, 3897, -1, _const.CHANGE_DIALOG, 1)
    end
  elseif L0_0 == 1 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(3898, 3899, -1, _const.CHANGE_DIALOG, 2)
  elseif L0_0 == 2 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(3900, _const.CHANGE_DIALOG, 3)
  elseif L0_0 == 3 then
    L1_1 = _util
    L1_1 = L1_1.AddLoopingConv
    L1_1(3901)
    L1_1 = _util
    L1_1 = L1_1.AddLoopingOption
    L1_1(3902, -1, _const.CHANGE_DIALOG, 5)
    L1_1 = _util
    L1_1 = L1_1.AddLoopingOption
    L1_1(3903, -1, _const.CHANGE_DIALOG, 4)
  elseif L0_0 == 4 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(3904, _const.END_DIALOG, 0)
  elseif L0_0 == 5 then
    function L1_1()
      _util.SetSpawn(1, _id.FPM09_Fire)
      _util.SetSpawn(1, _id.FPM09_Lamp)
      _util.SetSpawn(1, _id.FPM09_GroundL)
      _util.SetSpawn(1, _id.FPM09_GroundR)
      _util.SetSpawn(1, _id.FPM09_Door)
      _util.SetSpawn(0, _id.Doors_IceRink2SnowForts)
      _util.SetSpawn(1, _id.FPM09_Ice)
      _util.SetVar("FPMission_Started", 9)
      _util.SetVar("FPM09_JobsCompleted", 0)
      _util.StartCutscene(_const.FPM09INTRO)
      repeat
        scriptWait()
      until _util.GetGameState() ~= _const.MISSION
      repeat
        scriptWait()
      until _util.GetGameState() == _const.MISSION
      _util.SetObjective(38)
      _util.ActivateNpc(_id.FPM09_Rory, 6)
    end
    scriptPlay(L1_1)
  elseif L0_0 == 6 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(3905, 3906, -1, _const.CHANGE_DIALOG, 7)
  elseif L0_0 == 7 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(3907, _const.CHANGE_DIALOG, 8)
  elseif L0_0 == 8 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(3908, 3909, -1, _const.CHANGE_DIALOG, 9)
  elseif L0_0 == 9 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(3910, _const.END_DIALOG, 10)
  elseif L0_0 == 10 then
    L1_1 = _util
    L1_1 = L1_1.AddLoopingConv
    L1_1(3911)
    L1_1 = _util
    L1_1 = L1_1.AddLoopingOption
    L1_1(3912, 3915, _const.UPDATE_LOOP)
    L1_1 = _util
    L1_1 = L1_1.AddLoopingOption
    L1_1(3913, -1, _const.CHANGE_DIALOG, 11)
  elseif L0_0 == 11 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(3914, _const.END_DIALOG, 10)
  elseif L0_0 == 50 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(3918, 3919, -1, _const.CHANGE_DIALOG, 51)
  elseif L0_0 == 51 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(3920, _const.CHANGE_DIALOG, 52)
  elseif L0_0 == 52 then
    function L1_1()
      _util.SetConversationCount(53)
      _util.SetVar("FPM09_missionComplete", 1)
      _util.SetVar("FPMission_Started", 0)
      _util.RemoveMapAlert(_const.FREEPLAY9START)
      _util.SetSuitcaseItemEnabled(_id.SuitCase_HardHat, true)
      _util.DisplayPopUp(349, "UI/Zoom/HardHat")
      repeat
        scriptWait()
      until _util.IsPopUpVisible() == false
      _util.SetObjective(492)
      _util.MarkFreePlayMission(_const.FPM09)
      _util.StartCutscene(_const.FPM09OUTRO)
    end
    scriptPlay(L1_1)
  elseif L0_0 == 53 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(3921, _const.END_DIALOG, 53)
  end
end
