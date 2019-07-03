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
  L3_3 = _util
  L3_3 = L3_3.GetVar
  L3_3 = L3_3("M10_JPGComplete")
  L3_3 = L3_3 == 1 and L3_3 == 1 and L3_3 == 1
  allPenguinsComplete = L3_3
  if L0_0 == 6 and L2_2 == 0 then
    L3_3 = _util
    L3_3 = L3_3.GetVar
    L3_3 = L3_3("M10_fakeHerbertDock")
    if L3_3 == 0 then
      L3_3 = allPenguinsComplete
      if L3_3 then
        function L3_3()
          _util.DisableInput()
          _util.SetCursorPos(511, 192)
          _util.PushCamera(_id.M10_Docks_Kluzy)
          _util.SwitchState("TO", _id.M10_Docks_Kluzy)
          repeat
            scriptWait()
          until not _util.IsAnimPlaying(_id.M10_Docks_Kluzy)
          _util.AddItem(_id.M10_Docks_HerbertDecoy)
          _util.SwitchState("TO", _id.M10_Docks_HerbertDecoy)
          _util.SwitchState("outro", _id.M10_Docks_Kluzy)
          repeat
            scriptWait()
          until not _util.IsAnimPlaying(_id.M10_Docks_HerbertDecoy)
          _util.SwitchState("fallen", _id.M10_Docks_HerbertDecoy)
          repeat
            scriptWait()
          until not _util.IsAnimPlaying(_id.M10_Docks_Kluzy)
          _util.SetVar("M10_fakeHerbertDock", 1)
          _util.SetVar("foundKlutzy", 1)
          _util.PopCamera(_id.M10_Docks_Kluzy)
          _util.MarkObjComplete(_text.M10_OBJ6, true)
          _util.SetupComNpc(_const.COM_ROOKIE, _id.M10_GiftShop_Rookie, 0)
          _util.LaunchCommunicator()
          _util.SetVar("M10_foundHerbAtNC", 1)
          _util.EnableInput(true)
        end
        scriptPlay(L3_3)
      end
    end
  end
end
