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
  if L1_1 == 0 then
    if L0_0 == 0 then
      L1_1 = _util
      L1_1 = L1_1.AddConversation
      L1_1(4390, 4391, -1, _const.CHANGE_DIALOG, 1)
    elseif L0_0 == 1 then
      L1_1 = _util
      L1_1 = L1_1.AddLoopingConv
      L1_1(4392)
      L1_1 = _util
      L1_1 = L1_1.AddLoopingOption
      L1_1(4393, 4394, _const.CHANGE_DIALOG, 10)
      L1_1 = _util
      L1_1 = L1_1.AddLoopingOption
      L1_1(4395, 4396, _const.UPDATE_LOOP)
      L1_1 = _util
      L1_1 = L1_1.AddLoopingOption
      L1_1(4397, -1, _const.END_DIALOG, 0)
    elseif L0_0 == 10 then
      L1_1 = _util
      L1_1 = L1_1.SetVar
      L1_1("FPMission_Started", 13)
      L1_1 = _util
      L1_1 = L1_1.SetVar
      L1_1("SM03_NumRevealed", 0)
      L1_1 = _util
      L1_1 = L1_1.SetVar
      L1_1("SM03_AA_Revealed", 0)
      L1_1 = _util
      L1_1 = L1_1.SetVar
      L1_1("SM03_D_Revealed", 0)
      L1_1 = _util
      L1_1 = L1_1.SetVar
      L1_1("SM03_G_Revealed", 0)
      L1_1 = _util
      L1_1 = L1_1.SetVar
      L1_1("SM03_JPG_Revealed", 0)
      L1_1 = _util
      L1_1 = L1_1.SetVar
      L1_1("SM03_Rookie_Revealed", 0)
      L1_1 = _util
      L1_1 = L1_1.ActivateNpc
      L1_1(_util.GetSelf(), 99)
    end
  else
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("SM03_D_Revealed")
    if L1_1 == 0 then
      if L0_0 == 99 then
        L1_1 = _util
        L1_1 = L1_1.AddDialog
        L1_1(4394, _const.CHANGE_DIALOG, 100)
      elseif L0_0 == 100 then
        L1_1 = _util
        L1_1 = L1_1.AddDialog
        L1_1(4398, _const.CHANGE_DIALOG, 101)
      elseif L0_0 == 101 then
        L1_1 = _util
        L1_1 = L1_1.AddDialog
        L1_1(4399, _const.CHANGE_DIALOG, 102)
      elseif L0_0 == 102 then
        L1_1 = _util
        L1_1 = L1_1.AddDialog
        L1_1(4400, _const.CHANGE_DIALOG, 103)
      elseif L0_0 == 103 then
        L1_1 = _util
        L1_1 = L1_1.AddDialog
        L1_1(4401, _const.END_DIALOG, 0)
      elseif L0_0 == 0 then
        L1_1 = _util
        L1_1 = L1_1.AddLoopingConv
        L1_1(4423)
        L1_1 = _util
        L1_1 = L1_1.AddLoopingOption
        L1_1(4424, 4425, _const.CHANGE_DIALOG, 10)
        L1_1 = _util
        L1_1 = L1_1.AddLoopingOption
        L1_1(4426, 4427, _const.CHANGE_DIALOG, 20)
        L1_1 = _util
        L1_1 = L1_1.AddLoopingOption
        L1_1(4428, -1, _const.END_DIALOG, 0)
      elseif L0_0 == 10 then
        L1_1 = _util
        L1_1 = L1_1.AddDialog
        L1_1(4439, _const.CHANGE_DIALOG, 11)
      elseif L0_0 == 11 then
        L1_1 = _util
        L1_1 = L1_1.AddLoopingConv
        L1_1(4440)
        L1_1 = _util
        L1_1 = L1_1.AddLoopingOption
        L1_1(4441, -1, _const.END_DIALOG, 0)
        L1_1 = _util
        L1_1 = L1_1.AddLoopingOption
        L1_1(4442, -1, _const.CHANGE_DIALOG, 10)
      elseif L0_0 == 20 then
        L1_1 = _util
        L1_1 = L1_1.GetVar
        L1_1 = L1_1("SM03_Dbonus")
        if L1_1 == 0 then
          L1_1 = _util
          L1_1 = L1_1.AddLoopingConv
          L1_1(4427)
          L1_1 = _util
          L1_1 = L1_1.AddLoopingOption
          L1_1(4429, -1, _const.CHANGE_DIALOG, 21)
          L1_1 = _util
          L1_1 = L1_1.AddLoopingOption
          L1_1(4430, -1, _const.END_DIALOG, 0)
        else
          L1_1 = _util
          L1_1 = L1_1.ActivateNpc
          L1_1(_util.GetSelf(), 21)
        end
      elseif L0_0 == 21 then
        L1_1 = _util
        L1_1 = L1_1.AddLoopingConv
        L1_1(4431)
        L1_1 = _util
        L1_1 = L1_1.AddLoopingOption
        L1_1(4432, -1, _const.CHANGE_DIALOG, 23)
        L1_1 = _util
        L1_1 = L1_1.AddLoopingOption
        L1_1(4433, -1, _const.CHANGE_DIALOG, 22)
        L1_1 = _util
        L1_1 = L1_1.AddLoopingOption
        L1_1(4434, -1, _const.CHANGE_DIALOG, 22)
      elseif L0_0 == 22 then
        L1_1 = _util
        L1_1 = L1_1.SetVar
        L1_1("SM03_Dbonus", 1)
        L1_1 = _util
        L1_1 = L1_1.AddDialog
        L1_1(4437, _const.END_DIALOG, 0)
      elseif L0_0 == 23 then
        function L1_1()
          _util.SetVar("SM03_D_Revealed", 1)
          _util.IncVar("SM03_NumRevealed")
          _util.SetConversationCount(0)
          _util.AddItem(_id.SM03_Dot)
          if _util.GetVar("SM03_NumRevealed") == 5 then
            _util.ActivateNpc(_id.SM03_Dot, 90)
          else
            _util.ActivateNpc(_id.SM03_Dot, 200)
          end
          _util.DelItem(_id.SM03_DotDisguised)
        end
        scriptPlay(L1_1)
      end
    elseif L0_0 == 0 then
      L1_1 = _util
      L1_1 = L1_1.AddDialog
      L1_1(4443, _const.END_DIALOG, 0)
    elseif L0_0 == 200 then
      function L1_1()
        _util.DisplayPopUp(626, "UI/Smilie", false)
        repeat
          scriptWait()
        until _util.IsPopUpVisible() == false
        _util.AddSmileys(5, _util.GetX(_util.GetSelf()), _util.GetY(_util.GetSelf()))
        if _util.GetVar("SM03_Dbonus") == 0 then
          _util.AddCoins(10)
          _util.DisplayPopUp(627, "UI/coin", false)
          repeat
            scriptWait()
          until _util.IsPopUpVisible() == false
          _util.AddDialog(4435, _const.END_DIALOG, 0)
        else
          _util.AddDialog(4436, _const.END_DIALOG, 0)
        end
      end
      scriptPlay(L1_1)
    elseif L0_0 == 90 then
      L1_1 = _util
      L1_1 = L1_1.GetVar
      L1_1 = L1_1("SM03_Dbonus")
      if L1_1 == 0 then
        function L1_1()
          _util.AddCoins(10)
          _util.DisplayPopUp(627, "UI/coin", false)
          repeat
            scriptWait()
          until _util.IsPopUpVisible() == false
          _util.AddDialog(4435, _const.CHANGE_DIALOG, 100)
        end
        scriptPlay(L1_1)
      else
        L1_1 = _util
        L1_1 = L1_1.ActivateNpc
        L1_1(_id.SM03_Dot, 100)
      end
    elseif L0_0 == 100 then
      function L1_1()
        _util.DisplayPopUp(626, "UI/Smilie", false)
        repeat
          scriptWait()
        until _util.IsPopUpVisible() == false
        _util.AddSmileys(10, _util.GetX(_util.GetSelf()), _util.GetY(_util.GetSelf()))
        _util.AddDialog(4507, _const.CHANGE_DIALOG, 101)
      end
      scriptPlay(L1_1)
    elseif L0_0 == 101 then
      L1_1 = _util
      L1_1 = L1_1.AddDialog
      L1_1(4508, _const.CHANGE_DIALOG, 102)
    elseif L0_0 == 102 then
      L1_1 = _util
      L1_1 = L1_1.AddDialog
      L1_1(4509, _const.CHANGE_DIALOG, 103)
    elseif L0_0 == 103 then
      function L1_1()
        _util.AddCoins(50)
        _util.DisplayPopUp(627, "UI/coin", false)
        repeat
          scriptWait()
        until _util.IsPopUpVisible() == false
        _util.SetVar("FPMission_Started", 0)
        _util.SetVar("SNM03_missionComplete", 1)
        _util.AddItem(_id.SM03_AADisguised)
        _util.AddItem(_id.SM03_GDisguised)
        _util.AddItem(_id.SM03_JPGDisguised)
        _util.AddItem(_id.SM03_RookieDisguised)
        _util.AddItem(_id.SM03_DotDisguised)
        _util.DelItem(_id.SM03_AA)
        _util.DelItem(_id.SM03_G)
        _util.DelItem(_id.SM03_JPG)
        _util.DelItem(_id.SM03_Rookie)
        _util.DelItem(_id.SM03_Dot)
      end
      scriptPlay(L1_1)
    end
  end
end
