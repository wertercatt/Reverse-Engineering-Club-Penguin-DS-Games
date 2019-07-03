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
  L1_1 = L1_1("FP02_introMine")
  if L1_1 == 1 then
    if L0_0 == 0 then
      L1_1 = _util
      L1_1 = L1_1.AddConversation
      L1_1(3682, 3683, -1, _const.CHANGE_DIALOG, 1)
    elseif L0_0 == 1 then
      L1_1 = _util
      L1_1 = L1_1.AddConversation
      L1_1(3684, 3685, -1, _const.CHANGE_DIALOG, 2)
    elseif L0_0 == 2 then
      L1_1 = _util
      L1_1 = L1_1.AddDialog
      L1_1(4743, _const.END_DIALOG, 0)
    end
  else
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("FP02_introMine")
    if L1_1 == 2 then
      if L0_0 == 0 then
        function L1_1()
          _util.DisplayPopUp(626, "UI/Smilie", false)
          repeat
            scriptWait()
          until _util.IsPopUpVisible() == false
          _util.AddSmileys(20, _util.GetX(_util.GetSelf()), _util.GetY(_util.GetSelf()))
          _util.AddConversation(3686, 3687, -1, _const.CHANGE_DIALOG, 1)
        end
        scriptPlay(L1_1)
      elseif L0_0 == 1 then
        L1_1 = _util
        L1_1 = L1_1.AddConversation
        L1_1(3688, 3689, -1, _const.CHANGE_DIALOG, 2)
      elseif L0_0 == 2 then
        L1_1 = _util
        L1_1 = L1_1.AddConversation
        L1_1(3690, 3691, -1, _const.CHANGE_DIALOG, 3)
      elseif L0_0 == 3 then
        L1_1 = _util
        L1_1 = L1_1.AddConversation
        L1_1(3692, 3693, -1, _const.CHANGE_DIALOG, 4)
      elseif L0_0 == 4 then
        function L1_1()
          _util.SetVar("FPM02_missionComplete", 1)
          _util.SetConversationCount(5)
          _util.SetVar("FPMission_Started", 0)
          _util.RemoveMapAlert(_const.FREEPLAY2START)
          _util.SetSuitcaseItemEnabled(_id.SuitCase_VikingHelmet, true)
          _util.DisplayPopUp(417, "UI/Zoom/VikingHelmet")
          repeat
            scriptWait()
          until _util.IsPopUpVisible() == false
          _util.SetObjective(625)
          _util.MarkFreePlayMission(_const.FPM02)
          _util.StartCutscene(_const.FPM02OUTRO)
        end
        scriptPlay(L1_1)
      elseif L0_0 == 5 then
        L1_1 = _util
        L1_1 = L1_1.AddDialog
        L1_1(3695, _const.END_DIALOG, 5)
      end
    end
  end
end
