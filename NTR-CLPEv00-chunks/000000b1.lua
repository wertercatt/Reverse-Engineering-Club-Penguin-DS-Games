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
  L0_0 = _util
  L0_0 = L0_0.AddInterest
  L1_1 = _const
  L1_1 = L1_1.COLLIDED
  L0_0(L1_1)
  L0_0 = _util
  L0_0 = L0_0.AddInterest
  L1_1 = _const
  L1_1 = L1_1.COMMUNICATOR
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
  L1_1 = _util
  L1_1 = L1_1.GetVar
  L1_1 = L1_1("M4C1_Helped_JPG")
  if L1_1 == 1 then
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("M4C1_Helped_Dot")
    if L1_1 == 1 then
      L1_1 = _util
      L1_1 = L1_1.GetVar
      L1_1 = L1_1("M4C1_Helped_Rookie")
      if L1_1 == 1 then
        L1_1 = _util
        L1_1 = L1_1.SetVar
        L1_1("M4C1_Gary_Var", 4)
      end
    end
  else
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("M4C1_Gary_Got_Rookie")
    if L1_1 == 0 then
      L1_1 = _util
      L1_1 = L1_1.SetVar
      L1_1("M4C1_Gary_Var", 1)
    end
  end
  L1_1 = _util
  L1_1 = L1_1.GetVar
  L1_1 = L1_1("M4C1_RookieStatus")
  if L1_1 == 0 then
    if L0_0 == 0 then
      function L1_1()
        _util.DisableInput()
        _util.PushCamera(_id.M4C1_Rookie_Plaza)
        _util.SwitchState("jackhammer", _util.GetSelf())
        repeat
          scriptWait()
        until not _util.IsAnimPlaying(_util.GetSelf())
        _util.AddItem(_id.M4C1_Jackhammer)
        _util.SwitchState("lift", _util.GetSelf())
        repeat
          scriptWait()
        until not _util.IsAnimPlaying(_util.GetSelf())
        _util.PopCamera(_id.M4C1_Rookie_Plaza)
        _util.EnableInput()
        _util.ActivateNpc(_id.M4C1_Rookie_Plaza, 100)
      end
      scriptPlay(L1_1)
    elseif L0_0 == 100 then
      L1_1 = _util
      L1_1 = L1_1.AddConversation
      L1_1(2182, 2183, -1, _const.CHANGE_DIALOG, 101)
    elseif L0_0 == 101 then
      L1_1 = _util
      L1_1 = L1_1.AddConversation
      L1_1(2184, 2185, -1, _const.CHANGE_DIALOG, 102)
    elseif L0_0 == 102 then
      L1_1 = _util
      L1_1 = L1_1.AddConversation
      L1_1(2186, 2187, -1, _const.CHANGE_DIALOG, 103)
    elseif L0_0 == 103 then
      L1_1 = _util
      L1_1 = L1_1.AddConversation
      L1_1(2188, 2189, -1, _const.CHANGE_DIALOG, 104)
    elseif L0_0 == 104 then
      function L1_1()
        _util.SetVar("M4C1_RookieStatus", 1)
        _util.ClearCom()
        if 1 > _util.GetVar("M4C1_JPG_Status") then
          _util.SetupComNpc(_const.COM_JPG, _id.M4C1_JPG_Fishing, 0)
        end
        if 1 > _util.GetVar("M4C1_Dot_Status") then
          _util.SetupComNpc(_const.COM_DOT, _id.M4C1_Dot_NightClub, 0)
        end
        _util.SetupComNpc(_const.COM_GARY, _id.M4C1_Gary_Gadget, 0)
        _util.AddDialog(2190, _const.END_DIALOG, 0)
      end
      scriptPlay(L1_1)
    end
  else
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("M4C1_RookieStatus")
    if L1_1 == 1 then
      if L0_0 == 0 then
        L1_1 = _util
        L1_1 = L1_1.AddLoopingConv
        L1_1(2199)
        L1_1 = _util
        L1_1 = L1_1.AddLoopingOption
        L1_1(2200, 2203, _const.UPDATE_LOOP)
        L1_1 = _util
        L1_1 = L1_1.AddLoopingOption
        L1_1(2201, 2204, _const.UPDATE_LOOP)
        L1_1 = _util
        L1_1 = L1_1.AddLoopingOption
        L1_1(2202, -1, _const.CHANGE_DIALOG, 1)
      elseif L0_0 == 1 then
        L1_1 = _util
        L1_1 = L1_1.AddDialog
        L1_1(2205, _const.END_DIALOG, 0)
      end
    else
      L1_1 = _util
      L1_1 = L1_1.GetVar
      L1_1 = L1_1("M4C1_RookieStatus")
      if L1_1 == 2 then
        if L0_0 == 0 then
          L1_1 = _util
          L1_1 = L1_1.AddLoopingConv
          L1_1(2206)
          L1_1 = _util
          L1_1 = L1_1.AddLoopingOption
          L1_1(2207, 2210, _const.UPDATE_LOOP)
          L1_1 = _util
          L1_1 = L1_1.AddLoopingOption
          L1_1(2208, -1, _const.CHANGE_DIALOG, 10)
          L1_1 = _util
          L1_1 = L1_1.AddLoopingOption
          L1_1(2209, -1, _const.CHANGE_DIALOG, 1)
        elseif L0_0 == 1 then
          L1_1 = _util
          L1_1 = L1_1.AddDialog
          L1_1(2211, _const.END_DIALOG, 0)
        elseif L0_0 == 10 then
          L1_1 = _util
          L1_1 = L1_1.GetVar
          L1_1 = L1_1("M4C1_RookieClueAdded")
          if L1_1 == 0 then
            L1_1 = _util
            L1_1 = L1_1.AddItem
            L1_1(_id.M4C1_Rookie_Clue)
            L1_1 = _util
            L1_1 = L1_1.SetVar
            L1_1("M4C1_RookieClueAdded", 1)
          end
          L1_1 = _util
          L1_1 = L1_1.AddLoopingConv
          L1_1(2212)
          L1_1 = _util
          L1_1 = L1_1.AddLoopingOption
          L1_1(2213, 2215, _const.UPDATE_LOOP)
          L1_1 = _util
          L1_1 = L1_1.AddLoopingOption
          L1_1(2214, -1, _const.CHANGE_DIALOG, 11)
        elseif L0_0 == 11 then
          L1_1 = _util
          L1_1 = L1_1.AddDialog
          L1_1(2216, _const.END_DIALOG, 0)
        elseif L0_0 == 50 then
          L1_1 = _util
          L1_1 = L1_1.AddDialog
          L1_1(2196, _const.CHANGE_DIALOG, 0)
        end
      else
        L1_1 = _util
        L1_1 = L1_1.GetVar
        L1_1 = L1_1("M4C1_RookieStatus")
        if L1_1 == 3 then
          if L0_0 == 0 then
            L1_1 = _util
            L1_1 = L1_1.AddLoopingConv
            L1_1(2220)
            L1_1 = _util
            L1_1 = L1_1.AddLoopingOption
            L1_1(2221, 2224, _const.UPDATE_LOOP)
            L1_1 = _util
            L1_1 = L1_1.AddLoopingOption
            L1_1(2222, 2225, _const.UPDATE_LOOP)
            L1_1 = _util
            L1_1 = L1_1.AddLoopingOption
            L1_1(2223, -1, _const.CHANGE_DIALOG, 1)
          elseif L0_0 == 1 then
            L1_1 = _util
            L1_1 = L1_1.AddDialog
            L1_1(2226, _const.END_DIALOG, 0)
          end
        end
      end
    end
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
  L1_1 = L1_1.Inventory_PuffleBlack
  if L0_0 == L1_1 then
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("M4C1_RookieStatus")
    if L1_1 < 2 then
      L1_1 = _util
      L1_1 = L1_1.SetSuccess
      L1_1(_util.GetSelf(), true)
      L1_1 = _util
      L1_1 = L1_1.SetVar
      L1_1("M4C1_hit", 0)
    end
  else
    L1_1 = _id
    L1_1 = L1_1.Inventory_PufflePink
    if L0_0 == L1_1 then
      L1_1 = _util
      L1_1 = L1_1.AddMonologue
      L1_1(2195)
    else
      L1_1 = _id
      L1_1 = L1_1.Inventory_RookieClue
      if L0_0 == L1_1 then
        L1_1 = conversationCount
        if L1_1 == 3 then
          L1_1 = _util
          L1_1 = L1_1.AddDialog
          L1_1(2215, _const.CHANGE_DIALOG, 2)
        end
      end
    end
  end
end
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.COLLIDED
if L0_0 == L1_1 then
  L0_0 = _util
  L0_0 = L0_0.GetSource
  L0_0 = L0_0()
  L1_1 = _id
  L1_1 = L1_1.Inventory_PuffleBlack
  if L0_0 == L1_1 then
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("M4C1_hit")
    if L1_1 == 0 then
      L1_1 = _util
      L1_1 = L1_1.SetVar
      L1_1("M4C1_hit", 1)
      function L1_1()
        local L0_2
        L0_2 = 0
        repeat
          _util.DisableInput()
          L0_2 = L0_2 + 1
          scriptWait()
          if L0_2 == 45 then
            _util.PlaySFX(91)
            _util.SwitchState("weld", _util.GetSelf())
          end
        until L0_2 >= 150 and not _util.IsAnimPlaying(_id.M4C1_Rookie_Plaza)
        _util.DelItem(_id.M4C1_Rookie_Plaza)
        _util.AddItem(_id.M4C1_Rookie_Weld)
        _util.EnableInput()
        _util.DisplayPopUp(626, "UI/Smilie", false)
        repeat
          scriptWait()
        until _util.IsPopUpVisible() == false
        _util.AddSmileys(10, _util.GetX(_util.GetSelf()), _util.GetY(_util.GetSelf()))
        _util.SetVar("M4C1_RookieStatus", 2)
        _util.ActivateNpc(_id.M4C1_Rookie_Weld, 50)
      end
      scriptPlay(L1_1)
    end
  end
end
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.COMMUNICATOR
if L0_0 == L1_1 then
  L0_0 = _util
  L0_0 = L0_0.GetComCount
  L0_0 = L0_0()
  if L0_0 == 0 then
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("M4C1_RookieStatus")
    if L1_1 <= 2 then
      L1_1 = _util
      L1_1 = L1_1.AddComText
      L1_1(2227)
      L1_1 = _util
      L1_1 = L1_1.AddComOption
      L1_1(2228, _const.CHANGE_DIALOG, 21)
    end
  elseif L0_0 == 21 then
    L1_1 = _util
    L1_1 = L1_1.AddComText
    L1_1(2229)
    L1_1 = _util
    L1_1 = L1_1.AddComOption
    L1_1(2230, _const.END_DIALOG, 0)
  elseif L0_0 == 0 then
    L1_1 = _util
    L1_1 = L1_1.AddComText
    L1_1(2231)
    L1_1 = _util
    L1_1 = L1_1.AddComOption
    L1_1(2232, _const.CHANGE_DIALOG, 22)
  elseif L0_0 == 22 then
    L1_1 = _util
    L1_1 = L1_1.AddComText
    L1_1(2233)
    L1_1 = _util
    L1_1 = L1_1.AddComOption
    L1_1(2234, _const.END_DIALOG, 0)
  end
end
