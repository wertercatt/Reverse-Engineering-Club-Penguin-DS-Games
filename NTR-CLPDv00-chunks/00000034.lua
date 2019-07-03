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
    L1_1 = L1_1("M4C1_Gary_Got_Dot")
    if L1_1 == 0 then
      L1_1 = _util
      L1_1 = L1_1.SetVar
      L1_1("M4C1_Gary_Var", 3)
    end
  end
  L1_1 = _util
  L1_1 = L1_1.GetVar
  L1_1 = L1_1("M4C1_Dot_Status")
  if L1_1 == 0 then
    if L0_0 == 0 then
      L1_1 = _util
      L1_1 = L1_1.AddDialog
      L1_1(2240, _const.CHANGE_NPC, _id.M4C1_Rory_NightClub, 100)
    elseif L0_0 == 1 then
      L1_1 = _util
      L1_1 = L1_1.AddDialog
      L1_1(2242, _const.CHANGE_NPC, _id.M4C1_Rory_NightClub, 200)
    elseif L0_0 == 2 then
      L1_1 = _util
      L1_1 = L1_1.AddDialog
      L1_1(2244, _const.CHANGE_NPC, _id.M4C1_Rory_NightClub, 300)
    elseif L0_0 == 3 then
      L1_1 = _util
      L1_1 = L1_1.AddConversation
      L1_1(2246, 2247, -1, _const.CHANGE_DIALOG, 4)
    elseif L0_0 == 4 then
      function L1_1()
        local L0_2
        L0_2 = _util
        L0_2 = L0_2.DisableInput
        L0_2()
        L0_2 = _util
        L0_2 = L0_2.PushCamera
        L0_2()
        L0_2 = 160
        _util.SwitchState("walk", _id.M4C1_Dot_NightClub)
        _util.MoveObject(_id.M4C1_Dot_NightClub, 500, _util.GetY(_id.M4C1_Dot_NightClub), L0_2)
        repeat
          scriptWait()
        until _util.GetX(_id.M4C1_Dot_NightClub) == 500
        _util.SwitchState("", _id.M4C1_Dot_NightClub)
        _util.SetCursorPos(_util.GetX(_id.M4C1_Dot_NightClub), _util.GetY(_id.M4C1_Dot_NightClub))
        _util.ClearCom()
        if _util.GetVar("M4C1_JPG_Status") < 1 then
          _util.SetupComNpc(_const.COM_JPG, _id.M4C1_JPG_Fishing, 0)
        end
        if 1 > _util.GetVar("M4C1_RookieStatus") then
          _util.SetupComNpc(_const.COM_ROOKIE, _id.M4C1_Rookie_Plaza, 0)
        end
        _util.SetupComNpc(_const.COM_GARY, _id.M4C1_Gary_Gadget, 0)
        _util.EnableInput()
      end
      scriptPlay(L1_1)
      _util.SetVar("M4C1_Dot_Status", 1)
      _util.AddDialog(2248, _const.END_DIALOG, 0)
    end
  else
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("M4C1_Dot_Status")
    if L1_1 == 1 then
      if L0_0 == 0 then
        L1_1 = _util
        L1_1 = L1_1.AddLoopingConv
        L1_1(2258)
        L1_1 = _util
        L1_1 = L1_1.AddLoopingOption
        L1_1(2259, 2262, _const.UPDATE_LOOP)
        L1_1 = _util
        L1_1 = L1_1.AddLoopingOption
        L1_1(2260, 2263, _const.UPDATE_LOOP)
        L1_1 = _util
        L1_1 = L1_1.AddLoopingOption
        L1_1(2261, -1, _const.CHANGE_DIALOG, 1)
      elseif L0_0 == 1 then
        L1_1 = _util
        L1_1 = L1_1.AddDialog
        L1_1(2264, _const.END_DIALOG, 0)
      end
    else
      L1_1 = _util
      L1_1 = L1_1.GetVar
      L1_1 = L1_1("M4C1_Dot_Status")
      if L1_1 == 2 then
        if L0_0 == 20 then
          L1_1 = _util
          L1_1 = L1_1.AddConversation
          L1_1(2268, 2269, -1, _const.CHANGE_DIALOG, 21)
        elseif L0_0 == 21 then
          L1_1 = _util
          L1_1 = L1_1.AddConversation
          L1_1(2270, 2271, -1, _const.CHANGE_DIALOG, 22)
        elseif L0_0 == 22 then
          L1_1 = _util
          L1_1 = L1_1.AddDialog
          L1_1(2272, _const.END_DIALOG, 1)
        end
        if L0_0 == 1 then
          L1_1 = _util
          L1_1 = L1_1.AddLoopingConv
          L1_1(2274)
          L1_1 = _util
          L1_1 = L1_1.AddLoopingOption
          L1_1(2275, 2278, _const.UPDATE_LOOP)
          L1_1 = _util
          L1_1 = L1_1.AddLoopingOption
          L1_1(2276, 2279, _const.UPDATE_LOOP)
          L1_1 = _util
          L1_1 = L1_1.AddLoopingOption
          L1_1(2277, -1, _const.CHANGE_DIALOG, 10)
        elseif L0_0 == 10 then
          L1_1 = _util
          L1_1 = L1_1.AddDialog
          L1_1(2280, _const.END_DIALOG, 0)
        end
        if L0_0 == 0 then
          L1_1 = _util
          L1_1 = L1_1.AddDialog
          L1_1(2281, _const.END_DIALOG, 0)
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
  L1_1 = L1_1.GetVar
  L1_1 = L1_1("M4C1_Dot_Status")
  if L1_1 ~= 2 then
    if L0_0 == 0 then
      L1_1 = _util
      L1_1 = L1_1.AddComText
      L1_1(2283)
      L1_1 = _util
      L1_1 = L1_1.AddComOption
      L1_1(2284, _const.CHANGE_DIALOG, 21)
      L1_1 = _util
      L1_1 = L1_1.AddComOption
      L1_1(2286, _const.END_DIALOG, 0)
    elseif L0_0 == 21 then
      L1_1 = _util
      L1_1 = L1_1.AddComText
      L1_1(2285)
      L1_1 = _util
      L1_1 = L1_1.AddComOption
      L1_1(2286, _const.END_DIALOG, 0)
    end
  elseif L0_0 == 0 then
    L1_1 = _util
    L1_1 = L1_1.AddComText
    L1_1(2287)
    L1_1 = _util
    L1_1 = L1_1.AddComOption
    L1_1(2288, _const.CHANGE_DIALOG, 21)
  elseif L0_0 == 21 then
    L1_1 = _util
    L1_1 = L1_1.AddComText
    L1_1(2289)
    L1_1 = _util
    L1_1 = L1_1.AddComOption
    L1_1(2290, _const.END_DIALOG, 0)
  end
end
