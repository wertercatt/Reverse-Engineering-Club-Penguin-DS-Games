local L0_0, L1_1
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
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.TOUCHED
if L0_0 == L1_1 then
  L0_0 = _util
  L0_0 = L0_0.GetConversationCount
  L0_0 = L0_0()
  if L0_0 == 0 then
    L1_1 = _util
    L1_1 = L1_1.PushCamera
    L1_1()
    L1_1 = _util
    L1_1 = L1_1.AddMonologue
    L1_1(172, "DialogStrings", _const.CHANGE_DIALOG, 1)
    L1_1 = _util
    L1_1 = L1_1.SwitchState
    L1_1("")
  elseif L0_0 == 1 then
    function L1_1()
      _util.DisableInput()
      _util.SwitchState("reveal")
      repeat
        scriptWait()
      until not _util.IsAnimPlaying()
      _util.SwitchState("revealedTalk")
      _util.AddItem(_id.M1C1_DotBarrelTalk)
      _util.EnableInput()
      _util.ActivateNpc(_id.M1C1_DotBarrelTalk, 111)
      _util.SetCursorPos(_util.GetX(_id.M1C1_DotBarrel), _util.GetY(_id.M1C1_DotBarrel))
      _util.DelItem(_id.M1C1_DotBarrel)
    end
    scriptPlay(L1_1)
  elseif L0_0 == 111 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(173, 174, -1, _const.CHANGE_DIALOG, 2)
  elseif L0_0 == 2 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(175, 176, -1, _const.CHANGE_DIALOG, 3)
  elseif L0_0 == 3 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(177, 178, -1, _const.CHANGE_DIALOG, 4)
  elseif L0_0 == 4 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(179, _const.CHANGE_DIALOG, 5)
  elseif L0_0 == 5 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(180, 181, -1, _const.CHANGE_DIALOG, 6)
  elseif L0_0 == 6 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(182, _const.CHANGE_DIALOG, 7)
  elseif L0_0 == 7 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(183, 184, -1, _const.CHANGE_DIALOG, 8)
  elseif L0_0 == 8 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(185, 186, -1, _const.CHANGE_DIALOG, 9)
  elseif L0_0 == 9 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(187, _const.CHANGE_DIALOG, 10)
  elseif L0_0 == 10 then
    function L1_1()
      _util.DisplayPopUp(283, "UI/Zoom/Map", false)
      repeat
        scriptWait()
      until _util.IsPopUpVisible() == false
      _util.ActivateNpc(_util.GetSelf(), 11)
    end
    scriptPlay(L1_1)
  elseif L0_0 == 11 then
    L1_1 = _util
    L1_1 = L1_1.AddLoopingConv
    L1_1(188)
    L1_1 = _util
    L1_1 = L1_1.AddLoopingOption
    L1_1(189, 191, _const.CHANGE_DIALOG, 12)
    L1_1 = _util
    L1_1 = L1_1.AddLoopingOption
    L1_1(190, 192, _const.CHANGE_DIALOG, 13)
    L1_1 = _util
    L1_1 = L1_1.SetVar
    L1_1("M1C1_dotOutro", 1)
  elseif L0_0 == 12 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(191, 193, -1, _const.CHANGE_DIALOG, 15)
    L1_1 = _util
    L1_1 = L1_1.SetVar
    L1_1("M1C2_noYes", 1)
  elseif L0_0 == 13 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(192, 194, -1, _const.CHANGE_DIALOG, 15)
    L1_1 = _util
    L1_1 = L1_1.SetVar
    L1_1("M1C2_noYes", 0)
  elseif L0_0 == 15 then
    L1_1 = _util
    L1_1 = L1_1.IsCommandCoachActive
    L1_1 = L1_1()
    if L1_1 then
      L1_1 = _util
      L1_1 = L1_1.ActivateNpc
      L1_1(_util.GetSelf(), 50)
    else
      L1_1 = _util
      L1_1 = L1_1.PushCamera
      L1_1(_util.GetSelf())
      L1_1 = _util
      L1_1 = L1_1.EndMission
      L1_1()
    end
  elseif L0_0 == 50 then
    function L1_1()
      _util.PushCamera(_util.GetSelf())
      _util.DisplayPopUp(493, "UI/Smilie", false)
      repeat
        scriptWait()
      until _util.IsPopUpVisible() == false
      repeat
        scriptWait()
      until 0 + 1 == 40
      _util.EndMission()
    end
    scriptPlay(L1_1)
  end
end
