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
    _util.DisplayPopUp(277, "UI/Zoom/GrouchoGlasses")
    repeat
      scriptWait()
    until _util.IsPopUpVisible() == false
    _util.DisplayPopUp(488, "UI/Smilie", false)
    repeat
      scriptWait()
    until _util.IsPopUpVisible() == false
    _util.AddSmileys(10, _util.GetX(_util.GetSelf()), _util.GetY(_util.GetSelf()))
    _util.ActivateNpc(_util.GetSelf(), 0)
  end
  if _util.GetVar("M1C1_gaveGlasses") == 0 then
    _util.AddDialog(98, _const.CHANGE_DIALOG, 10)
    _util.SetVar("M1C1_gaveGlasses", 1)
  elseif L0_0 == 10 then
    scriptPlay(L1_1)
  elseif _util.GetVar("M1C1_haveCard3") == 0 and L0_0 == 0 then
    _util.AddLoopingConv(99)
    _util.AddLoopingOption(101, 108, _const.UPDATE_LOOP)
    _util.AddLoopingOption(103, 110, _const.CHANGE_DIALOG, 1)
    _util.AddLoopingOption(105, -1, _const.CHANGE_DIALOG, 100)
  elseif L0_0 == 100 then
    _util.AddDialog(107, _const.END_DIALOG, 0)
  elseif L0_0 == 1 then
    _util.AddConversation(110, 112, -1, _const.CHANGE_DIALOG, 2)
  elseif L0_0 == 2 then
    _util.AddConversation(114, 116, -1, _const.CHANGE_DIALOG, 200)
  elseif L0_0 == 200 then
    _util.AddDialog(118, _const.END_DIALOG, 0)
  elseif _util.GetVar("M1C1_haveCard3") == 1 and L0_0 == 0 then
    _util.AddLoopingConv(119)
    _util.AddLoopingOption(120, 123, _const.UPDATE_LOOP)
    _util.AddLoopingOption(121, 124, _const.UPDATE_LOOP)
    _util.AddLoopingOption(122, -1, _const.CHANGE_DIALOG, 300)
  elseif _util.GetVar("M1C1_haveCard3") == 1 and L0_0 == 300 then
    _util.AddDialog(125, _const.END_DIALOG, 0)
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
      L1_1(126, _const.END_DIALOG, 0)
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
        L1_1(127, _const.END_DIALOG, 0)
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
          L1_1(128, _const.END_DIALOG, 0)
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
            L1_1(129, _const.END_DIALOG, 0)
          end
        end
      end
    end
  end
end
