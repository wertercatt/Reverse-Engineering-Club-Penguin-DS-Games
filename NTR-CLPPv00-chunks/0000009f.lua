local L0_0, L1_1, L2_2, L3_3
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
  if L0_0 == 300 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L2_2 = 2657
    L3_3 = 2658
    L1_1(L2_2, L3_3, -1, _const.END_DIALOG, 0)
  elseif L0_0 == 0 then
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L2_2 = "M4C3_hit"
    L1_1 = L1_1(L2_2)
    if L1_1 == 0 then
      L1_1 = _util
      L1_1 = L1_1.AddConversation
      L2_2 = 2659
      L3_3 = 2660
      L1_1(L2_2, L3_3, -1, _const.END_DIALOG, 0)
      L1_1 = print
      L2_2 = "***DEFAULT LINE (Conversation Count = 0)***"
      L1_1(L2_2)
    end
  elseif L0_0 == 199 then
    function L1_1()
      _util.DisableInput()
      _util.PlaySFX(67)
      _util.SwitchState("failBlue", _id.M4C3_SBot_Slope)
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_id.M4C3_SBot_Slope)
      _util.SwitchState("", _id.M4C3_SBot_Slope)
      _util.EnableInput()
      _util.AddMonologue(2671, "DialogStrings", _const.END_DIALOG, 0)
      _util.SetVar("M4C3_blueSB", 0)
      _util.SetVar("M4C3_hit", 0)
    end
    L2_2 = scriptPlay
    L3_3 = L1_1
    L2_2(L3_3)
  elseif L0_0 == 200 then
    function L1_1()
      _util.DisableInput()
      _util.PlaySFX(67)
      _util.SwitchState("failBlack", _id.M4C3_SBot_Slope)
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_id.M4C3_SBot_Slope)
      _util.SwitchState("", _id.M4C3_SBot_Slope)
      _util.EnableInput()
      _util.AddMonologue(2673, "DialogStrings", _const.END_DIALOG, 0)
      _util.SetVar("M4C3_blackSB", 0)
      _util.SetVar("M4C3_hit", 0)
    end
    L2_2 = scriptPlay
    L3_3 = L1_1
    L2_2(L3_3)
  elseif L0_0 == 201 then
    function L1_1()
      _util.DisableInput()
      _util.PlaySFX(67)
      _util.SwitchState("failRed", _id.M4C3_SBot_Slope)
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_id.M4C3_SBot_Slope)
      _util.SwitchState("", _id.M4C3_SBot_Slope)
      _util.EnableInput()
      _util.AddMonologue(2665, "DialogStrings", _const.END_DIALOG, 0)
      _util.SetVar("M4C3_redSB", 0)
      _util.SetVar("M4C3_hit", 0)
    end
    L2_2 = scriptPlay
    L3_3 = L1_1
    L2_2(L3_3)
  elseif L0_0 == 202 then
    function L1_1()
      _util.DisableInput()
      _util.PlaySFX(67)
      _util.SwitchState("failPurple", _id.M4C3_SBot_Slope)
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_id.M4C3_SBot_Slope)
      _util.SwitchState("", _id.M4C3_SBot_Slope)
      _util.EnableInput()
      _util.AddMonologue(2675, "DialogStrings", _const.END_DIALOG, 0)
      _util.SetVar("M4C3_purpleSB", 0)
      _util.SetVar("M4C3_hit", 0)
    end
    L2_2 = scriptPlay
    L3_3 = L1_1
    L2_2(L3_3)
  elseif L0_0 == 203 then
    function L1_1()
      _util.DisableInput()
      _util.PlaySFX(67)
      _util.SwitchState("failYellow", _id.M4C3_SBot_Slope)
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_id.M4C3_SBot_Slope)
      _util.SwitchState("", _id.M4C3_SBot_Slope)
      _util.EnableInput()
      _util.AddMonologue(2669, "DialogStrings", _const.END_DIALOG, 0)
      _util.SetVar("M4C3_yellowSB", 0)
      _util.SetVar("M4C3_hit", 0)
    end
    L2_2 = scriptPlay
    L3_3 = L1_1
    L2_2(L3_3)
  elseif L0_0 == 204 then
    function L1_1()
      _util.DisableInput()
      _util.PlaySFX(67)
      _util.SwitchState("failGreen", _id.M4C3_SBot_Slope)
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_id.M4C3_SBot_Slope)
      _util.SwitchState("", _id.M4C3_SBot_Slope)
      _util.EnableInput()
      _util.AddMonologue(2667, "DialogStrings", _const.END_DIALOG, 0)
      _util.SetVar("M4C3_greenSB", 0)
      _util.SetVar("M4C3_hit", 0)
    end
    L2_2 = scriptPlay
    L3_3 = L1_1
    L2_2(L3_3)
  elseif L0_0 == 208 then
    L1_1 = _util
    L1_1 = L1_1.AddMonologue
    L2_2 = 2662
    L3_3 = "DialogStrings"
    L1_1(L2_2, L3_3, _const.END_DIALOG, 0)
    L1_1 = _util
    L1_1 = L1_1.SetVar
    L2_2 = "M4C3_dusterSB"
    L3_3 = 0
    L1_1(L2_2, L3_3)
    L1_1 = _util
    L1_1 = L1_1.SetVar
    L2_2 = "M4C3_hit"
    L3_3 = 0
    L1_1(L2_2, L3_3)
  else
    L1_1 = print
    L2_2 = "***SPAMMING ERROR IS CORRECTED (Conversation Count = 0 and M4C3_hit = 0) ***"
    L1_1(L2_2)
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
  L1_1 = L1_1.Inventory_PufflePink
  if L0_0 == L1_1 then
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L2_2 = "M4C3_fightSB"
    L1_1 = L1_1(L2_2)
    if L1_1 < 2 then
      L1_1 = _util
      L1_1 = L1_1.SetSuccess
      L2_2 = _id
      L2_2 = L2_2.M4C3_SBot_Slope
      L3_3 = true
      L1_1(L2_2, L3_3)
      L1_1 = _util
      L1_1 = L1_1.SetVar
      L2_2 = "M4C3_hit"
      L3_3 = 0
      L1_1(L2_2, L3_3)
      L1_1 = _util
      L1_1 = L1_1.SetConversationCount
      L2_2 = 1000
      L3_3 = _id
      L3_3 = L3_3.M4C3_SBot_Slope
      L1_1(L2_2, L3_3)
    end
  else
    L1_1 = _id
    L1_1 = L1_1.Inventory_PuffleBlack
    if L0_0 == L1_1 then
      L1_1 = _util
      L1_1 = L1_1.GetVar
      L2_2 = "M4C3_blackSB"
      L1_1 = L1_1(L2_2)
      if L1_1 < 2 then
        L1_1 = _util
        L1_1 = L1_1.SetSuccess
        L2_2 = _id
        L2_2 = L2_2.M4C3_SBot_Slope
        L3_3 = true
        L1_1(L2_2, L3_3)
        L1_1 = _util
        L1_1 = L1_1.SetVar
        L2_2 = "M4C3_hit"
        L3_3 = 0
        L1_1(L2_2, L3_3)
        L1_1 = _util
        L1_1 = L1_1.SetConversationCount
        L2_2 = 1000
        L3_3 = _id
        L3_3 = L3_3.M4C3_SBot_Slope
        L1_1(L2_2, L3_3)
      end
    else
      L1_1 = _id
      L1_1 = L1_1.Inventory_PuffleBlue
      if L0_0 == L1_1 then
        L1_1 = _util
        L1_1 = L1_1.GetVar
        L2_2 = "M4C3_blueSB"
        L1_1 = L1_1(L2_2)
        if L1_1 < 2 then
          L1_1 = _util
          L1_1 = L1_1.SetSuccess
          L2_2 = _id
          L2_2 = L2_2.M4C3_SBot_Slope
          L3_3 = true
          L1_1(L2_2, L3_3)
          L1_1 = _util
          L1_1 = L1_1.SetVar
          L2_2 = "M4C3_hit"
          L3_3 = 0
          L1_1(L2_2, L3_3)
          L1_1 = _util
          L1_1 = L1_1.SetConversationCount
          L2_2 = 1000
          L3_3 = _id
          L3_3 = L3_3.M4C3_SBot_Slope
          L1_1(L2_2, L3_3)
        end
      else
        L1_1 = _id
        L1_1 = L1_1.Inventory_PufflePurple
        if L0_0 == L1_1 then
          L1_1 = _util
          L1_1 = L1_1.GetVar
          L2_2 = "M4C3_purpleSB"
          L1_1 = L1_1(L2_2)
          if L1_1 < 2 then
            L1_1 = _util
            L1_1 = L1_1.SetSuccess
            L2_2 = _id
            L2_2 = L2_2.M4C3_SBot_Slope
            L3_3 = true
            L1_1(L2_2, L3_3)
            L1_1 = _util
            L1_1 = L1_1.SetVar
            L2_2 = "M4C3_hit"
            L3_3 = 0
            L1_1(L2_2, L3_3)
            L1_1 = _util
            L1_1 = L1_1.SetConversationCount
            L2_2 = 1000
            L3_3 = _id
            L3_3 = L3_3.M4C3_SBot_Slope
            L1_1(L2_2, L3_3)
          end
        else
          L1_1 = _id
          L1_1 = L1_1.Inventory_PuffleGreen
          if L0_0 == L1_1 then
            L1_1 = _util
            L1_1 = L1_1.GetVar
            L2_2 = "M4C3_greenSB"
            L1_1 = L1_1(L2_2)
            if L1_1 < 2 then
              L1_1 = _util
              L1_1 = L1_1.SetSuccess
              L2_2 = _id
              L2_2 = L2_2.M4C3_SBot_Slope
              L3_3 = true
              L1_1(L2_2, L3_3)
              L1_1 = _util
              L1_1 = L1_1.SetVar
              L2_2 = "M4C3_hit"
              L3_3 = 0
              L1_1(L2_2, L3_3)
              L1_1 = _util
              L1_1 = L1_1.SetConversationCount
              L2_2 = 1000
              L3_3 = _id
              L3_3 = L3_3.M4C3_SBot_Slope
              L1_1(L2_2, L3_3)
            end
          else
            L1_1 = _id
            L1_1 = L1_1.Inventory_PuffleYellow
            if L0_0 == L1_1 then
              L1_1 = _util
              L1_1 = L1_1.GetVar
              L2_2 = "M4C3_yellowSB"
              L1_1 = L1_1(L2_2)
              if L1_1 < 2 then
                L1_1 = _util
                L1_1 = L1_1.SetSuccess
                L2_2 = _id
                L2_2 = L2_2.M4C3_SBot_Slope
                L3_3 = true
                L1_1(L2_2, L3_3)
                L1_1 = _util
                L1_1 = L1_1.SetVar
                L2_2 = "M4C3_hit"
                L3_3 = 0
                L1_1(L2_2, L3_3)
                L1_1 = _util
                L1_1 = L1_1.SetConversationCount
                L2_2 = 1000
                L3_3 = _id
                L3_3 = L3_3.M4C3_SBot_Slope
                L1_1(L2_2, L3_3)
              end
            else
              L1_1 = _id
              L1_1 = L1_1.Inventory_PuffleRed
              if L0_0 == L1_1 then
                L1_1 = _util
                L1_1 = L1_1.GetVar
                L2_2 = "M4C3_redSB"
                L1_1 = L1_1(L2_2)
                if L1_1 < 2 then
                  L1_1 = _util
                  L1_1 = L1_1.SetSuccess
                  L2_2 = _id
                  L2_2 = L2_2.M4C3_SBot_Slope
                  L3_3 = true
                  L1_1(L2_2, L3_3)
                  L1_1 = _util
                  L1_1 = L1_1.SetVar
                  L2_2 = "M4C3_hit"
                  L3_3 = 0
                  L1_1(L2_2, L3_3)
                  L1_1 = _util
                  L1_1 = L1_1.SetConversationCount
                  L2_2 = 1000
                  L3_3 = _id
                  L3_3 = L3_3.M4C3_SBot_Slope
                  L1_1(L2_2, L3_3)
                end
              else
                L1_1 = _id
                L1_1 = L1_1.Inventory_MechanoDuster
                if L0_0 == L1_1 then
                  L1_1 = _util
                  L1_1 = L1_1.GetVar
                  L2_2 = "M4C3_dusterSB"
                  L1_1 = L1_1(L2_2)
                  if L1_1 == 0 then
                    function L1_1()
                      _util.DisableInput()
                      _util.PlaySFX(67)
                      _util.SwitchState("failDuster", _id.M4C3_SBot_Slope)
                      repeat
                        scriptWait()
                      until not _util.IsAnimPlaying(_id.M4C3_SBot_Slope)
                      _util.SwitchState("", _id.M4C3_SBot_Slope)
                      _util.SetVar("M4C3_dusterSB", 1)
                      _util.EnableInput()
                      _util.AddDialog(2661, _const.CHANGE_DIALOG, 208)
                    end
                    L2_2 = scriptPlay
                    L3_3 = L1_1
                    L2_2(L3_3)
                  end
                else
                  L1_1 = _id
                  L1_1 = L1_1.Inventory_RobotomyTool
                  if L0_0 == L1_1 then
                    L1_1 = _util
                    L1_1 = L1_1.GetVar
                    L2_2 = "M4C3_robotomySB"
                    L1_1 = L1_1(L2_2)
                    if L1_1 == 0 then
                      function L1_1()
                        _util.DisableInput()
                        _util.PlaySFX(67)
                        _util.SwitchState("failRobotomy", _id.M4C3_SBot_Slope)
                        repeat
                          scriptWait()
                        until not _util.IsAnimPlaying(_id.M4C3_SBot_Slope)
                        _util.SwitchState("", _id.M4C3_SBot_Slope)
                        _util.SetVar("M4C3_robotomySB", 1)
                        _util.EnableInput()
                        _util.AddMonologue(2663)
                        _util.SetVar("M4C3_robotomySB", 0)
                      end
                      L2_2 = scriptPlay
                      L3_3 = L1_1
                      L2_2(L3_3)
                    end
                  end
                end
              end
            end
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
L1_1 = L1_1.COLLIDED
if L0_0 == L1_1 then
  L0_0 = _util
  L0_0 = L0_0.GetSource
  L0_0 = L0_0()
  L1_1 = 0
  L2_2 = 0
  L3_3 = _id
  L3_3 = L3_3.Inventory_PufflePink
  if L0_0 == L3_3 then
    function L3_3()
      _util.PlaySFX(55)
      _util.SwitchState("roped", _id.M4C3_SBot_Slope)
      repeat
        _util.DisableInput()
        scriptWait()
      until not _util.IsAnimPlaying(_id.M4C3_SBot_Slope)
      _util.DelItem(_id.M4C3_SBot_Slope)
      _util.AddItem(_id.M4C3_SBot_Roped)
      _util.EnableInput()
      _util.ActivateNpc(_id.M4C3_SBot_Roped, 0)
      print("***ROBOT GOT HIT WITH PINK***")
    end
    if _util.GetVar("M4C3_hit") == 0 then
      _util.SetVar("M4C3_hit", 1)
      _util.SetVar("M4C3_fightSB", 2)
      scriptPlay(L3_3)
    end
  else
    L3_3 = _id
    L3_3 = L3_3.Inventory_PuffleBlack
    if L0_0 == L3_3 then
      L3_3 = _util
      L3_3 = L3_3.GetVar
      L3_3 = L3_3("M4C3_hit")
      if L3_3 == 0 then
        function L3_3()
          _util.SetVar("M4C3_hit", 1)
          _util.SetVar("M4C3_blackSB", 2)
          _util.SetConversationCount(999)
          _UPVALUE0_ = 180
          repeat
            _util.DisableInput()
            _UPVALUE1_ = _UPVALUE1_ + 1
            _util.DisableInput()
            scriptWait()
          until _UPVALUE1_ >= _UPVALUE0_
          _util.EnableInput()
          _util.AddDialog(2672, _const.CHANGE_DIALOG, 200)
        end
        scriptPlay(L3_3)
      end
    else
      L3_3 = _id
      L3_3 = L3_3.Inventory_PuffleBlue
      if L0_0 == L3_3 then
        L3_3 = _util
        L3_3 = L3_3.GetVar
        L3_3 = L3_3("M4C3_hit")
        if L3_3 == 0 then
          L3_3 = _util
          L3_3 = L3_3.SetVar
          L3_3("M4C3_hit", 1)
          L3_3 = _util
          L3_3 = L3_3.SetVar
          L3_3("M4C3_blueSB", 2)
          L3_3 = _util
          L3_3 = L3_3.AddDialog
          L3_3(2670, _const.CHANGE_DIALOG, 199)
        end
      else
        L3_3 = _id
        L3_3 = L3_3.Inventory_PufflePurple
        if L0_0 == L3_3 then
          L3_3 = _util
          L3_3 = L3_3.GetVar
          L3_3 = L3_3("M4C3_hit")
          if L3_3 == 0 then
            L3_3 = _util
            L3_3 = L3_3.SetVar
            L3_3("M4C3_hit", 1)
            L3_3 = _util
            L3_3 = L3_3.SetVar
            L3_3("M4C3_purpleSB", 2)
            L3_3 = _util
            L3_3 = L3_3.ActivateNpc
            L3_3(_id.M4C3_SBot_Slope, 202)
          end
        else
          L3_3 = _id
          L3_3 = L3_3.Inventory_PuffleGreen
          if L0_0 == L3_3 then
            L3_3 = _util
            L3_3 = L3_3.GetVar
            L3_3 = L3_3("M4C3_hit")
            if L3_3 == 0 then
              function L3_3()
                _util.SetVar("M4C3_hit", 1)
                _util.SetVar("M4C3_greenSB", 2)
                _util.SetConversationCount(999)
                _UPVALUE0_ = 100
                repeat
                  _util.DisableInput()
                  _UPVALUE1_ = _UPVALUE1_ + 1
                  _util.DisableInput()
                  scriptWait()
                until _UPVALUE1_ >= _UPVALUE0_
                _util.EnableInput()
                _util.AddDialog(2666, _const.CHANGE_DIALOG, 204)
              end
              scriptPlay(L3_3)
            end
          else
            L3_3 = _id
            L3_3 = L3_3.Inventory_PuffleYellow
            if L0_0 == L3_3 then
              L3_3 = _util
              L3_3 = L3_3.GetVar
              L3_3 = L3_3("M4C3_hit")
              if L3_3 == 0 then
                L3_3 = _util
                L3_3 = L3_3.SetVar
                L3_3("M4C3_hit", 1)
                L3_3 = _util
                L3_3 = L3_3.SetVar
                L3_3("M4C3_yellowSB", 2)
                L3_3 = _util
                L3_3 = L3_3.AddDialog
                L3_3(2668, _const.CHANGE_DIALOG, 203)
              end
            else
              L3_3 = _id
              L3_3 = L3_3.Inventory_PuffleRed
              if L0_0 == L3_3 then
                L3_3 = _util
                L3_3 = L3_3.GetVar
                L3_3 = L3_3("M4C3_hit")
                if L3_3 == 0 then
                  function L3_3()
                    _util.SetVar("M4C3_hit", 1)
                    _util.SetVar("M4C3_redSB", 2)
                    _util.SetConversationCount(999)
                    _UPVALUE0_ = 70
                    repeat
                      _util.DisableInput()
                      _UPVALUE1_ = _UPVALUE1_ + 1
                      _util.DisableInput()
                      scriptWait()
                    until _UPVALUE1_ >= _UPVALUE0_
                    _util.EnableInput()
                    _util.ActivateNpc(_id.M4C3_SBot_Slope, 201)
                  end
                  scriptPlay(L3_3)
                end
              end
            end
          end
        end
      end
    end
  end
end
