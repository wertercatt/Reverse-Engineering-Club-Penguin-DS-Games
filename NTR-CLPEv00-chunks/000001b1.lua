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
    L1_1 = L1_1.AddLoopingConv
    L2_2 = 2719
    L1_1(L2_2)
    L1_1 = _util
    L1_1 = L1_1.AddLoopingOption
    L2_2 = 2720
    L3_3 = 2722
    L1_1(L2_2, L3_3, _const.UPDATE_LOOP)
    L1_1 = _util
    L1_1 = L1_1.AddLoopingOption
    L2_2 = 2721
    L3_3 = -1
    L1_1(L2_2, L3_3, _const.END_DIALOG, 0)
  elseif L0_0 == 100 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L2_2 = 2700
    L3_3 = 2701
    L1_1(L2_2, L3_3, -1, _const.CHANGE_DIALOG, 101)
  elseif L0_0 == 101 then
    L1_1 = _util
    L1_1 = L1_1.SetConversationCount
    L2_2 = 0
    L1_1(L2_2)
    L1_1 = _util
    L1_1 = L1_1.ActivateNpc
    L2_2 = _id
    L2_2 = L2_2.M4C3_Dot_SH
    L3_3 = 300
    L1_1(L2_2, L3_3)
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
      _util.AddMonologue(2727, "DialogStrings", _const.END_DIALOG, 0)
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
      _util.AddMonologue(2735, "DialogStrings", _const.END_DIALOG, 0)
    end
    L2_2 = scriptPlay
    L3_3 = L1_1
    L2_2(L3_3)
  elseif L0_0 == 201 then
    function L1_1()
      _util.DisableInput()
      _util.PushCamera(_util.GetSelf())
      _util.SwitchState("succeedRed", _util.GetSelf())
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_util.GetSelf())
      _util.SetVar("M4C3_fightSB", 1)
      _util.SetVar("M4C3_blueSB", 0)
      _util.SetVar("M4C3_blackSB", 0)
      _util.SetVar("M4C3_purpleSB", 0)
      _util.SetVar("M4C3_greenSB", 0)
      _util.SetVar("M4C3_yellowSB", 0)
      _util.SetVar("M4C3_pinkSB", 0)
      _util.GetVar("M4C3_dusterSB", 0)
      _util.GetVar("M4C3_robotomySB", 0)
      _util.DelItem(_util.GetSelf())
      _util.EnableInput()
      _util.ActivateNpc(_id.M4C3_Dot_SH, 100)
      _util.SetConversationCount(0)
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
      _util.AddMonologue(2737, "DialogStrings", _const.END_DIALOG, 0)
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
      _util.AddMonologue(2731, "DialogStrings", _const.END_DIALOG, 0)
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
      _util.AddMonologue(2729, "DialogStrings", _const.END_DIALOG, 0)
    end
    L2_2 = scriptPlay
    L3_3 = L1_1
    L2_2(L3_3)
  elseif L0_0 == 205 then
    function L1_1()
      _util.DisableInput()
      _util.PlaySFX(67)
      _util.SwitchState("failPink", _util.GetSelf())
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_util.GetSelf())
      _util.SwitchState("", _util.GetSelf())
      _util.EnableInput()
      _util.AddMonologue(2733, "DialogStrings", _const.END_DIALOG, 0)
    end
    L2_2 = scriptPlay
    L3_3 = L1_1
    L2_2(L3_3)
  elseif L0_0 == 206 then
    function L1_1()
      _util.DisableInput()
      _util.PlaySFX(67)
      _util.SwitchState("failDuster", _util.GetSelf())
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_util.GetSelf())
      _util.SwitchState("", _util.GetSelf())
      _util.SetVar("M4C3_dusterWB", 1)
      _util.EnableInput()
      _util.AddMonologue(2724, "DialogStrings", _const.END_DIALOG, 0)
    end
    L2_2 = scriptPlay
    L3_3 = L1_1
    L2_2(L3_3)
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
  L1_1 = L1_1.Inventory_PuffleRed
  if L0_0 == L1_1 then
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L2_2 = "M4C3_fightSB"
    L1_1 = L1_1(L2_2)
    if L1_1 == 0 then
      L1_1 = _util
      L1_1 = L1_1.PushCamera
      L1_1()
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
      if L1_1 == 0 then
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
        if L1_1 == 0 then
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
        L1_1 = L1_1.Inventory_PufflePurple
        if L0_0 == L1_1 then
          L1_1 = _util
          L1_1 = L1_1.GetVar
          L2_2 = "M4C3_purpleSB"
          L1_1 = L1_1(L2_2)
          if L1_1 == 0 then
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
            if L1_1 == 0 then
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
              if L1_1 == 0 then
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
                L1_1 = L1_1.GetVar
                L2_2 = "M4C3_pinkSB"
                L1_1 = L1_1(L2_2)
                if L1_1 == 0 then
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
                L1_1 = L1_1.Inventory_MechanoDuster
                if L0_0 == L1_1 then
                  L1_1 = _util
                  L1_1 = L1_1.GetVar
                  L2_2 = "M4C3_dusterSB"
                  L1_1 = L1_1(L2_2)
                  if L1_1 == 0 then
                    L1_1 = _util
                    L1_1 = L1_1.AddDialog
                    L2_2 = 2723
                    L3_3 = _const
                    L3_3 = L3_3.CHANGE_DIALOG
                    L1_1(L2_2, L3_3, 206)
                  else
                    L1_1 = _util
                    L1_1 = L1_1.GetVar
                    L2_2 = "M4C3_dusterSB"
                    L1_1 = L1_1(L2_2)
                    if L1_1 == 1 then
                      L1_1 = _util
                      L1_1 = L1_1.AddMonologue
                      L2_2 = 2561
                      L3_3 = "DialogStrings"
                      L1_1(L2_2, L3_3, _const.END_DIALOG, 0)
                    end
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
                        _util.SwitchState("failRobotomy", _util.GetSelf())
                        repeat
                          scriptWait()
                        until not _util.IsAnimPlaying(_util.GetSelf())
                        _util.SwitchState("", _util.GetSelf())
                        _util.SetVar("M4C3_robotomySB", 1)
                        _util.EnableInput()
                        _util.AddMonologue(2725)
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
  L3_3 = L3_3.Inventory_PuffleRed
  if L0_0 == L3_3 then
    L3_3 = _util
    L3_3 = L3_3.GetVar
    L3_3 = L3_3("M4C3_hit")
    if L3_3 == 0 then
      function L3_3()
        _util.DisableInput()
        _util.SetVar("M4C3_hit", 1)
        _util.SetVar("M4C3_fightSB", 1)
        _util.PlaySFX(55)
        _util.SetConversationCount(999)
        _UPVALUE0_ = 70
        repeat
          _UPVALUE1_ = _UPVALUE1_ + 1
          _util.DisableInput()
          scriptWait()
        until _UPVALUE1_ >= _UPVALUE0_
        _util.EnableInput()
        _util.AddDialog(2738, _const.CHANGE_DIALOG, 201)
      end
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
          _util.DisableInput()
          _util.SetVar("M4C3_hit", 1)
          _util.SetVar("M4C3_blackSB", 1)
          _util.SetConversationCount(999)
          _UPVALUE0_ = 180
          repeat
            _UPVALUE1_ = _UPVALUE1_ + 1
            _util.DisableInput()
            scriptWait()
          until _UPVALUE1_ >= _UPVALUE0_
          _util.EnableInput()
          _util.AddDialog(2734, _const.CHANGE_DIALOG, 200)
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
          L3_3("M4C3_blueSB", 1)
          L3_3 = _util
          L3_3 = L3_3.AddDialog
          L3_3(2726, _const.CHANGE_DIALOG, 199)
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
            L3_3("M4C3_purpleSB", 1)
            L3_3 = _util
            L3_3 = L3_3.ActivateNpc
            L3_3(_id.M4C3_SBot_SH, 202)
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
                _util.DisableInput()
                _util.SetVar("M4C3_hit", 1)
                _util.SetVar("M4C3_greenSB", 1)
                _util.SetConversationCount(999)
                _UPVALUE0_ = 100
                repeat
                  _UPVALUE1_ = _UPVALUE1_ + 1
                  _util.DisableInput()
                  scriptWait()
                until _UPVALUE1_ >= _UPVALUE0_
                _util.EnableInput()
                _util.AddDialog(2728, _const.CHANGE_DIALOG, 204)
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
                L3_3("M4C3_yellowSB", 1)
                L3_3 = _util
                L3_3 = L3_3.AddDialog
                L3_3(2730, _const.CHANGE_DIALOG, 203)
              end
            else
              L3_3 = _id
              L3_3 = L3_3.Inventory_PufflePink
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
                  L3_3("M4C3_pinkSB", 1)
                  L3_3 = _util
                  L3_3 = L3_3.AddDialog
                  L3_3(2732, _const.CHANGE_DIALOG, 205)
                end
              end
            end
          end
        end
      end
    end
  end
end
