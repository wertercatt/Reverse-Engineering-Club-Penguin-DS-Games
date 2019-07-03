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
  L1_1 = L1_1("M4C1_JPG_Status")
  if L1_1 < 2 then
    L1_1 = _util
    L1_1 = L1_1.SetVar
    L1_1("M4C1_Gary_Var", 2)
  else
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
      L1_1 = L1_1.SetVar
      L1_1("M4C1_Gary_Var", 5)
    end
  end
  L1_1 = _util
  L1_1 = L1_1.GetVar
  L1_1 = L1_1("M4C1_JPG_Status")
  if L1_1 == 0 then
    if L0_0 == 0 then
      L1_1 = _util
      L1_1 = L1_1.AddConversation
      L1_1(2194, 2195, -1, _const.CHANGE_DIALOG, 1)
    elseif L0_0 == 1 then
      L1_1 = _util
      L1_1 = L1_1.AddConversation
      L1_1(2196, 2197, -1, _const.CHANGE_DIALOG, 2)
    elseif L0_0 == 2 then
      L1_1 = _util
      L1_1 = L1_1.AddConversation
      L1_1(2198, 2199, -1, _const.CHANGE_DIALOG, 3)
    elseif L0_0 == 3 then
      L1_1 = _util
      L1_1 = L1_1.AddConversation
      L1_1(2200, 2201, -1, _const.CHANGE_DIALOG, 4)
    elseif L0_0 == 4 then
      function L1_1()
        _util.SetVar("M4C1_JPG_Status", 1)
        _util.ClearCom()
        if 1 > _util.GetVar("M4C1_RookieStatus") then
          _util.SetupComNpc(_const.COM_ROOKIE, _id.M4C1_Rookie_Plaza, 0)
        end
        if 1 > _util.GetVar("M4C1_Dot_Status") then
          _util.SetupComNpc(_const.COM_DOT, _id.M4C1_Dot_NightClub, 0)
        end
        _util.SetupComNpc(_const.COM_GARY, _id.M4C1_Gary_Gadget, 0)
        _util.AddDialog(2202, _const.END_DIALOG, 0)
      end
      scriptPlay(L1_1)
    end
  else
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("M4C1_JPG_Status")
    if L1_1 == 1 then
      if L0_0 == 0 then
        L1_1 = _util
        L1_1 = L1_1.AddLoopingConv
        L1_1(2207)
        L1_1 = _util
        L1_1 = L1_1.AddLoopingOption
        L1_1(2208, 2211, _const.UPDATE_LOOP)
        L1_1 = _util
        L1_1 = L1_1.AddLoopingOption
        L1_1(2209, 2212, _const.UPDATE_LOOP)
        L1_1 = _util
        L1_1 = L1_1.AddLoopingOption
        L1_1(2210, -1, _const.CHANGE_DIALOG, 10)
      elseif L0_0 == 10 then
        L1_1 = _util
        L1_1 = L1_1.AddDialog
        L1_1(2213, _const.END_DIALOG, 0)
      elseif L0_0 == 1 then
        L1_1 = _util
        L1_1 = L1_1.AddLoopingConv
        L1_1(2214)
        L1_1 = _util
        L1_1 = L1_1.AddLoopingOption
        L1_1(2215, 2217, _const.UPDATE_LOOP)
        L1_1 = _util
        L1_1 = L1_1.AddLoopingOption
        L1_1(2216, -1, _const.CHANGE_DIALOG, 11)
      elseif L0_0 == 11 then
        L1_1 = _util
        L1_1 = L1_1.AddDialog
        L1_1(2218, _const.END_DIALOG, 0)
      end
    else
      L1_1 = _util
      L1_1 = L1_1.GetVar
      L1_1 = L1_1("M4C1_JPG_Status")
      if L1_1 == 2 then
        if L0_0 == 0 then
          L1_1 = _util
          L1_1 = L1_1.AddConversation
          L1_1(2220, 4506, -1, _const.CHANGE_DIALOG, 1)
        elseif L0_0 == 1 then
          L1_1 = _util
          L1_1 = L1_1.AddDialog
          L1_1(4507, _const.END_DIALOG, 0)
        elseif L0_0 == 20 then
          L1_1 = _util
          L1_1 = L1_1.AddConversation
          L1_1(4508, 2221, -1, _const.CHANGE_DIALOG, 21)
        elseif L0_0 == 21 then
          L1_1 = _util
          L1_1 = L1_1.AddConversation
          L1_1(2223, 2224, -1, _const.CHANGE_DIALOG, 22)
        elseif L0_0 == 22 then
          L1_1 = _util
          L1_1 = L1_1.AddConversation
          L1_1(2225, 2226, -1, _const.CHANGE_DIALOG, 23)
        elseif L0_0 == 23 then
          L1_1 = _util
          L1_1 = L1_1.AddConversation
          L1_1(2227, 2228, -1, _const.CHANGE_DIALOG, 24)
        elseif L0_0 == 24 then
          L1_1 = _util
          L1_1 = L1_1.AddDialog
          L1_1(2229, _const.END_DIALOG, 10)
        end
        if L0_0 == 10 then
          L1_1 = _util
          L1_1 = L1_1.AddDialog
          L1_1(2230, _const.END_DIALOG, 10)
        end
      end
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
  L1_1 = _util
  L1_1 = L1_1.IsInRoom
  L1_1 = L1_1(_id.M4C1_JPG_Fishing, 11)
  if L1_1 then
    L1_1 = _util
    L1_1 = L1_1.AddComText
    L1_1(4499, _const.END_DIALOG, 0)
  else
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("M4C1_JPG_Status")
    if L1_1 ~= 2 then
      if L0_0 == 0 then
        L1_1 = _util
        L1_1 = L1_1.AddComText
        L1_1(2232)
        L1_1 = _util
        L1_1 = L1_1.AddComOption
        L1_1(2233, _const.CHANGE_DIALOG, 21)
      elseif L0_0 == 21 then
        L1_1 = _util
        L1_1 = L1_1.AddComText
        L1_1(2234)
        L1_1 = _util
        L1_1 = L1_1.AddComOption
        L1_1(2235, _const.END_DIALOG, 0)
      end
    elseif L0_0 == 0 then
      L1_1 = _util
      L1_1 = L1_1.AddComtext
      L1_1(2236)
      L1_1 = _util
      L1_1 = L1_1.AddComOption
      L1_1(2237, _const.CHANGE_DIALOG, 1)
    elseif L0_0 == 1 then
      L1_1 = _util
      L1_1 = L1_1.AddComtext
      L1_1(2238)
      L1_1 = _util
      L1_1 = L1_1.AddComOption
      L1_1(2239, _const.END_DIALOG, 0)
    end
  end
end
