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
  function L1_1()
    _util.DisableInput()
    _util.SwitchState("give", _util.GetSelf())
    repeat
      scriptWait()
    until not _util.IsAnimPlaying(_util.GetSelf())
    _util.EnableInput()
    _util.SetSuitcaseItemEnabled(_id.SuitCase_Groucho, true)
    _util.DisplayPopUp(353, "UI/Zoom/GrouchoGlasses")
    repeat
      scriptWait()
    until _util.IsPopUpVisible() == false
    _util.DisplayPopUp(626, "UI/Smilie", false)
    repeat
      scriptWait()
    until _util.IsPopUpVisible() == false
    _util.AddSmileys(10, _util.GetX(_util.GetSelf()), _util.GetY(_util.GetSelf()))
    _util.ActivateNpc(_util.GetSelf(), 0)
  end
  if _util.GetVar("M1C1_gaveGlasses") == 0 then
    _util.AddDialog(105, _const.CHANGE_DIALOG, 10)
    _util.SetVar("M1C1_gaveGlasses", 1)
  elseif L0_0 == 10 then
    scriptPlay(L1_1)
  elseif _util.GetVar("M1C1_haveCard3") == 0 and L0_0 == 0 then
    _util.AddLoopingConv(106)
    _util.AddLoopingOption(108, 115, _const.UPDATE_LOOP)
    _util.AddLoopingOption(110, 117, _const.CHANGE_DIALOG, 1)
    _util.AddLoopingOption(112, -1, _const.CHANGE_DIALOG, 100)
  elseif L0_0 == 100 then
    _util.AddDialog(114, _const.END_DIALOG, 0)
  elseif L0_0 == 1 then
    _util.AddConversation(117, 119, -1, _const.CHANGE_DIALOG, 2)
  elseif L0_0 == 2 then
    _util.AddConversation(121, 123, -1, _const.CHANGE_DIALOG, 200)
  elseif L0_0 == 200 then
    _util.AddDialog(125, _const.END_DIALOG, 0)
  elseif _util.GetVar("M1C1_haveCard3") == 1 and L0_0 == 0 then
    _util.AddLoopingConv(126)
    _util.AddLoopingOption(127, 130, _const.UPDATE_LOOP)
    _util.AddLoopingOption(128, 131, _const.UPDATE_LOOP)
    _util.AddLoopingOption(129, -1, _const.CHANGE_DIALOG, 300)
  elseif _util.GetVar("M1C1_haveCard3") == 1 and L0_0 == 300 then
    _util.AddDialog(132, _const.END_DIALOG, 0)
  end
end
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.ITEM_DROPPED
if L0_0 == L1_1 then
  L0_0 = _util
  L0_0 = L0_0.GetSource
  L0_0 = L0_0()
  L1_1 = _id
  L1_1 = L1_1.M1C1_Card1
  if L0_0 == L1_1 then
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("M1C1_haveHat")
    if L1_1 == 1 then
      L1_1 = _util
      L1_1 = L1_1.AddDialog
      L1_1(133, _const.END_DIALOG, 0)
    end
  else
    L1_1 = _id
    L1_1 = L1_1.M1C1_Card2
    if L0_0 == L1_1 then
      L1_1 = _util
      L1_1 = L1_1.GetVar
      L1_1 = L1_1("M1C1_haveHat")
      if L1_1 == 1 then
        L1_1 = _util
        L1_1 = L1_1.AddDialog
        L1_1(134, _const.END_DIALOG, 0)
      end
    else
      L1_1 = _id
      L1_1 = L1_1.M1C1_Card3
      if L0_0 == L1_1 then
        L1_1 = _util
        L1_1 = L1_1.GetVar
        L1_1 = L1_1("M1C1_haveHat")
        if L1_1 == 1 then
          L1_1 = _util
          L1_1 = L1_1.AddDialog
          L1_1(135, _const.END_DIALOG, 0)
        end
      else
        L1_1 = _id
        L1_1 = L1_1.M1C1_Map
        if L0_0 == L1_1 then
          L1_1 = _util
          L1_1 = L1_1.GetVar
          L1_1 = L1_1("M1C1_haveHat")
          if L1_1 == 1 then
            L1_1 = _util
            L1_1 = L1_1.AddDialog
            L1_1(136, _const.END_DIALOG, 0)
          end
        end
      end
    end
  end
end
