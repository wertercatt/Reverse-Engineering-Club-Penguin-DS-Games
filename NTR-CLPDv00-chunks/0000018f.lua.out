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
  if L0_0 == 0 then
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L2_2 = "M4C3_deadSB"
    L1_1 = L1_1(L2_2)
    if L1_1 == 0 then
      L1_1 = _util
      L1_1 = L1_1.AddConversation
      L2_2 = 2683
      L3_3 = 2684
      L1_1(L2_2, L3_3, -1, _const.END_DIALOG, 0)
    end
  elseif L0_0 == 100 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L2_2 = 2679
    L3_3 = 2680
    L1_1(L2_2, L3_3, -1, _const.CHANGE_DIALOG, 101)
  elseif L0_0 == 101 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L2_2 = 2681
    L3_3 = 2682
    L1_1(L2_2, L3_3, -1, _const.END_DIALOG, 0)
  elseif L0_0 == 199 then
    function L1_1()
      _util.DisableInput()
      _util.PlaySFX(67)
      _util.SwitchState("failBlue", _util.GetSelf())
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_util.GetSelf())
      _util.SwitchState("", _util.GetSelf())
      _util.EnableInput()
      _util.AddMonologue(2697, "DialogStrings", _const.END_DIALOG, 0)
    end
    L2_2 = scriptPlay
    L3_3 = L1_1
    L2_2(L3_3)
  elseif L0_0 == 200 then
    function L1_1()
      _util.DisableInput()
      _util.PlaySFX(67)
      _util.SwitchState("failBlack", _util.GetSelf())
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_util.GetSelf())
      _util.SwitchState("", _util.GetSelf())
      _util.EnableInput()
      _util.AddMonologue(2699, "DialogStrings", _const.END_DIALOG, 0)
    end
    L2_2 = scriptPlay
    L3_3 = L1_1
    L2_2(L3_3)
  elseif L0_0 == 201 then
    function L1_1()
      _util.DisableInput()
      _util.PlaySFX(67)
      _util.SwitchState("failRed", _util.GetSelf())
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_util.GetSelf())
      _util.SwitchState("", _util.GetSelf())
      _util.EnableInput()
      _util.AddMonologue(2688, "DialogStrings", _const.END_DIALOG, 0)
    end
    L2_2 = scriptPlay
    L3_3 = L1_1
    L2_2(L3_3)
  elseif L0_0 == 202 then
    function L1_1()
      _util.DisableInput()
      _util.PlaySFX(67)
      _util.SwitchState("failPurple", _util.GetSelf())
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_util.GetSelf())
      _util.SwitchState("", _util.GetSelf())
      _util.EnableInput()
      _util.AddMonologue(2695, "DialogStrings", _const.END_DIALOG, 0)
    end
    L2_2 = scriptPlay
    L3_3 = L1_1
    L2_2(L3_3)
  elseif L0_0 == 203 then
    function L1_1()
      _util.DisableInput()
      _util.PlaySFX(67)
      _util.SwitchState("failYellow", _util.GetSelf())
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_util.GetSelf())
      _util.SwitchState("", _util.GetSelf())
      _util.EnableInput()
      _util.AddMonologue(2692, "DialogStrings", _const.END_DIALOG, 0)
    end
    L2_2 = scriptPlay
    L3_3 = L1_1
    L2_2(L3_3)
  elseif L0_0 == 204 then
    function L1_1()
      _util.DisableInput()
      _util.PlaySFX(67)
      _util.SwitchState("failGreen", _util.GetSelf())
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_util.GetSelf())
      _util.SwitchState("", _util.GetSelf())
      _util.EnableInput()
      _util.AddMonologue(2690, "DialogStrings", _const.END_DIALOG, 0)
    end
    L2_2 = scriptPlay
    L3_3 = L1_1
    L2_2(L3_3)
  elseif L0_0 == 206 then
    L1_1 = _util
    L1_1 = L1_1.AddMonologue
    L2_2 = 2686
    L3_3 = "DialogStrings"
    L1_1(L2_2, L3_3, _const.END_DIALOG, 0)
  elseif L0_0 == 207 then
    function L1_1()
      local L0_4
      L0_4 = _util
      L0_4 = L0_4.DisableInput
      L0_4()
      L0_4 = _util
      L0_4 = L0_4.SetNextRoom
      L0_4(48)
      L0_4 = _util
      L0_4 = L0_4.SwitchState
      L0_4("opening", _util.GetSelf())
      repeat
        L0_4 = scriptWait
        L0_4()
        L0_4 = _util
        L0_4 = L0_4.IsAnimPlaying
        L0_4 = L0_4(_util.GetSelf())
      until not L0_4
      L0_4 = _util
      L0_4 = L0_4.SetCursorPos
      L0_4(_util.GetX(_util.GetSelf()), _util.GetY(_util.GetSelf()))
      L0_4 = _util
      L0_4 = L0_4.EnableInput
      L0_4()
      L0_4 = _util
      L0_4 = L0_4.StartMiniGame
      L0_4(_const.ROBOTOMY, 1, 1000)
      repeat
        L0_4 = scriptWait
        L0_4()
        L0_4 = _util
        L0_4 = L0_4.GetGameState
        L0_4 = L0_4()
      until L0_4 ~= _const.MISSION
      repeat
        L0_4 = scriptWait
        L0_4()
        L0_4 = _util
        L0_4 = L0_4.GetGameState
        L0_4 = L0_4()
      until L0_4 == _const.MISSION
      L0_4 = _util
      L0_4 = L0_4.GetMinigameOutput1
      L0_4 = L0_4()
      if L0_4 == 1 then
        function L0_4()
          _util.SetCursorPos(_util.GetX(_util.GetSelf()), _util.GetY(_util.GetSelf()))
          _util.PlaySFX(54)
          _util.SetVar("M4C3_deadSB", 2)
          _util.AddItem(_id.M4C3_SBot_WC_Open)
          _util.DelItem(_id.M4C3_SBot_WC)
          _util.ActivateNpc(_id.M4C3_SBot_WC_Open, 208)
        end
        scriptPlay(L0_4)
      else
        L0_4 = _util
        L0_4 = L0_4.GetMinigameOutput1
        L0_4 = L0_4()
        if L0_4 == 0 then
          L0_4 = _util
          L0_4 = L0_4.SwitchState
          L0_4("", _id.M4C3_SBot_WC)
        end
      end
    end
    L2_2 = _util
    L2_2 = L2_2.SetConversationCount
    L3_3 = 0
    L2_2(L3_3)
    L2_2 = scriptPlay
    L3_3 = L1_1
    L2_2(L3_3)
  elseif L0_0 == 208 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L2_2 = 2706
    L3_3 = _const
    L3_3 = L3_3.CHANGE_DIALOG
    L1_1(L2_2, L3_3, 209)
  elseif L0_0 == 209 then
    L1_1 = _util
    L1_1 = L1_1.AddMonologue
    L2_2 = 2707
    L3_3 = "DialogStrings"
    L1_1(L2_2, L3_3, _const.CHANGE_NPC, _id.M4C3_JBOT_WC_Talk, 100)
    L1_1 = _util
    L1_1 = L1_1.AddItem
    L2_2 = _id
    L2_2 = L2_2.M4C3_JBOT_WC_Talk
    L1_1(L2_2)
    L1_1 = _util
    L1_1 = L1_1.SetConversationCount
    L2_2 = 210
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
  L1_1 = L1_1.Inventory_PufflePurple
  if L0_0 == L1_1 then
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L2_2 = "M4C3_purpleSB"
    L1_1 = L1_1(L2_2)
    if L1_1 < 2 then
      L1_1 = _util
      L1_1 = L1_1.SetSuccess
      L2_2 = _util
      L2_2 = L2_2.GetSelf
      L2_2 = L2_2()
      L3_3 = true
      L1_1(L2_2, L3_3)
      L1_1 = _util
      L1_1 = L1_1.SetVar
      L2_2 = "M4C3_hit"
      L3_3 = 0
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
        L2_2 = _util
        L2_2 = L2_2.GetSelf
        L2_2 = L2_2()
        L3_3 = true
        L1_1(L2_2, L3_3)
        L1_1 = _util
        L1_1 = L1_1.SetVar
        L2_2 = "M4C3_hit"
        L3_3 = 0
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
          L2_2 = _util
          L2_2 = L2_2.GetSelf
          L2_2 = L2_2()
          L3_3 = true
          L1_1(L2_2, L3_3)
          L1_1 = _util
          L1_1 = L1_1.SetVar
          L2_2 = "M4C3_hit"
          L3_3 = 0
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
            L2_2 = _util
            L2_2 = L2_2.GetSelf
            L2_2 = L2_2()
            L3_3 = true
            L1_1(L2_2, L3_3)
            L1_1 = _util
            L1_1 = L1_1.SetVar
            L2_2 = "M4C3_hit"
            L3_3 = 0
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
              L2_2 = _util
              L2_2 = L2_2.GetSelf
              L2_2 = L2_2()
              L3_3 = true
              L1_1(L2_2, L3_3)
              L1_1 = _util
              L1_1 = L1_1.SetVar
              L2_2 = "M4C3_hit"
              L3_3 = 0
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
                L2_2 = _util
                L2_2 = L2_2.GetSelf
                L2_2 = L2_2()
                L3_3 = true
                L1_1(L2_2, L3_3)
                L1_1 = _util
                L1_1 = L1_1.SetVar
                L2_2 = "M4C3_hit"
                L3_3 = 0
                L1_1(L2_2, L3_3)
              end
            else
              L1_1 = _id
              L1_1 = L1_1.Inventory_PufflePink
              if L0_0 == L1_1 then
                L1_1 = _util
                L1_1 = L1_1.AddMonologue
                L2_2 = 2693
                L1_1(L2_2)
              else
                L1_1 = _id
                L1_1 = L1_1.Inventory_MechanoDuster
                if L0_0 == L1_1 then
                  L1_1 = _util
                  L1_1 = L1_1.GetVar
                  L2_2 = "M4C3_dusterSB"
                  L1_1 = L1_1(L2_2)
                  if L1_1 < 2 then
                    function L1_1()
                      _util.DisableInput()
                      _util.PlaySFX(67)
                      _util.SwitchState("failDuster", _util.GetSelf())
                      repeat
                        scriptWait()
                      until not _util.IsAnimPlaying(_util.GetSelf())
                      _util.SwitchState("", _util.GetSelf())
                      _util.SetVar("M4C3_dusterSB", 2)
                      _util.EnableInput()
                      _util.AddDialog(2685, _const.CHANGE_DIALOG, 206)
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
                    L1_1 = L1_1.PlaySFX
                    L2_2 = 123
                    L1_1(L2_2)
                    L1_1 = _util
                    L1_1 = L1_1.AddDialog
                    L2_2 = 2701
                    L3_3 = _const
                    L3_3 = L3_3.CHANGE_DIALOG
                    L1_1(L2_2, L3_3, 207)
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
      L3_3(2696, _const.CHANGE_DIALOG, 199)
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
          _util.DisableInput()
          _util.SetVar("M4C3_hit", 1)
          _util.SetVar("M4C3_blackSB", 2)
          _util.SetConversationCount(999)
          _UPVALUE0_ = 180
          repeat
            _UPVALUE1_ = _UPVALUE1_ + 1
            _util.DisableInput()
            scriptWait()
          until _UPVALUE1_ >= _UPVALUE0_
          _util.EnableInput()
          _util.AddDialog(2698, _const.CHANGE_DIALOG, 200)
        end
        scriptPlay(L3_3)
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
            _util.DisableInput()
            _util.SetVar("M4C3_hit", 1)
            _util.SetVar("M4C3_redSB", 2)
            _util.SetConversationCount(999)
            _UPVALUE0_ = 70
            repeat
              _UPVALUE1_ = _UPVALUE1_ + 1
              _util.DisableInput()
              scriptWait()
            until _UPVALUE1_ >= _UPVALUE0_
            _util.EnableInput()
            _util.AddDialog(2687, _const.CHANGE_DIALOG, 201)
          end
          scriptPlay(L3_3)
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
            L3_3 = L3_3.AddDialog
            L3_3(2694, _const.CHANGE_DIALOG, 202)
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
              L3_3(2691, _const.CHANGE_DIALOG, 203)
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
                    _UPVALUE1_ = _UPVALUE1_ + 1
                    _util.DisableInput()
                    scriptWait()
                  until _UPVALUE1_ >= _UPVALUE0_
                  _util.EnableInput()
                  _util.AddDialog(2689, _const.CHANGE_DIALOG, 204)
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
