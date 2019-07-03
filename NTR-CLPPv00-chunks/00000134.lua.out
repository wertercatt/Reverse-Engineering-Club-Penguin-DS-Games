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
  L1_1 = _util
  L1_1 = L1_1.GetVar
  L2_2 = "M4C2_giftshopIntro"
  L1_1 = L1_1(L2_2)
  if L1_1 == 0 then
    if L0_0 == 99 then
      L1_1 = _util
      L1_1 = L1_1.AddMonologue
      L2_2 = 2434
      L3_3 = "DialogStrings"
      L1_1(L2_2, L3_3, _const.CHANGE_DIALOG, 101)
    elseif L0_0 == 101 then
      L1_1 = _util
      L1_1 = L1_1.AddDialog
      L2_2 = 2435
      L3_3 = _const
      L3_3 = L3_3.CHANGE_DIALOG
      L1_1(L2_2, L3_3, 102)
    elseif L0_0 == 102 then
      L1_1 = _util
      L1_1 = L1_1.AddMonologue
      L2_2 = 2436
      L3_3 = "DialogStrings"
      L1_1(L2_2, L3_3, _const.CHANGE_DIALOG, 103)
    elseif L0_0 == 103 then
      L1_1 = _util
      L1_1 = L1_1.AddDialog
      L2_2 = 2437
      L3_3 = _const
      L3_3 = L3_3.CHANGE_DIALOG
      L1_1(L2_2, L3_3, 104)
    elseif L0_0 == 104 then
      L1_1 = _util
      L1_1 = L1_1.AddMonologue
      L2_2 = 2438
      L3_3 = "DialogStrings"
      L1_1(L2_2, L3_3, _const.CHANGE_DIALOG, 105)
    elseif L0_0 == 105 then
      L1_1 = _util
      L1_1 = L1_1.AddConversation
      L2_2 = 2439
      L3_3 = 2440
      L1_1(L2_2, L3_3, -1, _const.CHANGE_DIALOG, 106)
    elseif L0_0 == 106 then
      L1_1 = _util
      L1_1 = L1_1.AddConversation
      L2_2 = 2441
      L3_3 = 2442
      L1_1(L2_2, L3_3, -1, _const.END_DIALOG, 0)
      L1_1 = _util
      L1_1 = L1_1.SetVar
      L2_2 = "M4C2_giftshopIntro"
      L3_3 = 1
      L1_1(L2_2, L3_3)
    end
  elseif L0_0 == 0 then
    L1_1 = _util
    L1_1 = L1_1.AddLoopingConv
    L2_2 = 2447
    L1_1(L2_2)
    L1_1 = _util
    L1_1 = L1_1.AddLoopingOption
    L2_2 = 2448
    L3_3 = 2450
    L1_1(L2_2, L3_3, _const.UPDATE_LOOP)
    L1_1 = _util
    L1_1 = L1_1.AddLoopingOption
    L2_2 = 2449
    L3_3 = -1
    L1_1(L2_2, L3_3, _const.END_DIALOG, 0)
  elseif L0_0 == 50 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L2_2 = 2468
    L3_3 = _const
    L3_3 = L3_3.CHANGE_DIALOG
    L1_1(L2_2, L3_3, 51)
  elseif L0_0 == 51 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L2_2 = 2469
    L3_3 = _const
    L3_3 = L3_3.CHANGE_DIALOG
    L1_1(L2_2, L3_3, 52)
  elseif L0_0 == 52 then
    L1_1 = _util
    L1_1 = L1_1.AddMonologue
    L2_2 = 2470
    L3_3 = "DialogStrings"
    L1_1(L2_2, L3_3, _const.CHANGE_DIALOG, 53)
  elseif L0_0 == 53 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L2_2 = 2471
    L3_3 = _const
    L3_3 = L3_3.CHANGE_DIALOG
    L1_1(L2_2, L3_3, 54)
  elseif L0_0 == 54 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L2_2 = 2472
    L3_3 = _const
    L3_3 = L3_3.CHANGE_DIALOG
    L1_1(L2_2, L3_3, 55)
  elseif L0_0 == 55 then
    function L1_1()
      local L0_4
      L0_4 = _util
      L0_4 = L0_4.DisableInput
      L0_4()
      L0_4 = 100
      destX = _util.GetX(_util.GetSelf()) - _util.GetX(_id.M4C2_WBot_Gift) + 1420
      destY = 143
      _util.PushCamera()
      _util.SwitchState("move", _util.GetSelf())
      _util.MoveObject(_util.GetSelf(), destX, destY, L0_4, 1000)
      repeat
        scriptWait()
      until _util.GetX(_util.GetSelf()) == destX
      _util.PopCamera()
      _util.DelItem(_util.GetSelf())
      _util.SetSpawn(1, _id.M4C2_WBot_Roof)
      _util.DelItem(_id.Doors_GiftShop2Office)
      _util.AddItem(_id.Doors_GiftShop2OfficeBroken)
      _util.PlaySFX(14)
      _util.EnableInput()
      _util.AddMonologue(2473, "DialogStrings", _const.END_DIALOG, 0)
    end
    L2_2 = scriptPlay
    L3_3 = L1_1
    L2_2(L3_3)
  elseif L0_0 == 200 then
    function L1_1()
      _util.DisableInput()
      _util.SwitchState("failBlack", _id.M4C2_VaultSteal)
      _util.SwitchState("failBlack", _util.GetSelf())
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_util.GetSelf())
      _util.SwitchState("", _id.M4C2_VaultSteal)
      _util.SwitchState("", _util.GetSelf())
      _util.EnableInput()
      _util.AddMonologue(2463, "DialogStrings", _const.END_DIALOG, 0)
    end
    L2_2 = scriptPlay
    L3_3 = L1_1
    L2_2(L3_3)
  elseif L0_0 == 201 then
    function L1_1()
      _util.DisableInput()
      _util.SwitchState("failRed", _id.M4C2_VaultSteal)
      _util.SwitchState("failRed", _util.GetSelf())
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_util.GetSelf())
      _util.SwitchState("", _id.M4C2_VaultSteal)
      _util.SwitchState("", _util.GetSelf())
      _util.EnableInput()
      _util.AddMonologue(2455, "DialogStrings", _const.END_DIALOG, 0)
    end
    L2_2 = scriptPlay
    L3_3 = L1_1
    L2_2(L3_3)
  elseif L0_0 == 202 then
    function L1_1()
      _util.DisableInput()
      _util.SwitchState("failPurple", _id.M4C2_VaultSteal)
      _util.SwitchState("failPurple", _util.GetSelf())
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_util.GetSelf())
      _util.SwitchState("", _id.M4C2_VaultSteal)
      _util.SwitchState("", _util.GetSelf())
      _util.EnableInput()
      _util.AddMonologue(2465, "DialogStrings", _const.END_DIALOG, 0)
    end
    L2_2 = scriptPlay
    L3_3 = L1_1
    L2_2(L3_3)
  elseif L0_0 == 203 then
    function L1_1()
      _util.DisableInput()
      _util.SwitchState("failGreen", _id.M4C2_VaultSteal)
      _util.SwitchState("failGreen", _util.GetSelf())
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_util.GetSelf())
      _util.SwitchState("", _id.M4C2_VaultSteal)
      _util.SwitchState("", _util.GetSelf())
      _util.EnableInput()
      _util.AddMonologue(2457, "DialogStrings", _const.END_DIALOG, 0)
    end
    L2_2 = scriptPlay
    L3_3 = L1_1
    L2_2(L3_3)
  elseif L0_0 == 204 then
    function L1_1()
      _util.DisableInput()
      _util.SwitchState("failYellow", _id.M4C2_VaultSteal)
      _util.SwitchState("failYellow", _util.GetSelf())
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_util.GetSelf())
      _util.SwitchState("", _id.M4C2_VaultSteal)
      _util.SwitchState("", _util.GetSelf())
      _util.EnableInput()
      _util.AddMonologue(2459, "DialogStrings", _const.END_DIALOG, 0)
    end
    L2_2 = scriptPlay
    L3_3 = L1_1
    L2_2(L3_3)
  elseif L0_0 == 205 then
    function L1_1()
      _util.DisableInput()
      _util.SwitchState("failPink", _id.M4C2_VaultSteal)
      _util.SwitchState("failPink", _util.GetSelf())
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_util.GetSelf())
      _util.SwitchState("", _id.M4C2_VaultSteal)
      _util.SwitchState("", _util.GetSelf())
      _util.EnableInput()
      _util.AddMonologue(2461, "DialogStrings", _const.END_DIALOG, 0)
    end
    L2_2 = scriptPlay
    L3_3 = L1_1
    L2_2(L3_3)
  elseif L0_0 == 206 then
    function L1_1()
      _util.DisableInput()
      _util.SwitchState("failDuster", _id.M4C2_VaultSteal)
      _util.SwitchState("failDuster")
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_util.GetSelf())
      _util.SwitchState("", _id.M4C2_VaultSteal)
      _util.SwitchState("", _util.GetSelf())
      _util.EnableInput()
      _util.AddMonologue(2452, "DialogStrings", _const.END_DIALOG, 0)
      _util.SetVar("M4C2_dusterWB", 1)
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
  L1_1 = L1_1.Inventory_PuffleBlue
  if L0_0 == L1_1 then
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L2_2 = "M4C2_fightWB"
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
      L2_2 = "M4C2_hit"
      L3_3 = 0
      L1_1(L2_2, L3_3)
      L1_1 = _util
      L1_1 = L1_1.SetConversationCount
      L2_2 = 1000
      L3_3 = _id
      L3_3 = L3_3.M4C2_WBot_Gift
      L1_1(L2_2, L3_3)
    end
  else
    L1_1 = _id
    L1_1 = L1_1.Inventory_PuffleBlack
    if L0_0 == L1_1 then
      L1_1 = _util
      L1_1 = L1_1.GetVar
      L2_2 = "M4C2_blackWB"
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
        L2_2 = "M4C2_hit"
        L3_3 = 0
        L1_1(L2_2, L3_3)
        L1_1 = _util
        L1_1 = L1_1.SetConversationCount
        L2_2 = 1000
        L3_3 = _id
        L3_3 = L3_3.M4C2_WBot_Gift
        L1_1(L2_2, L3_3)
      end
    else
      L1_1 = _id
      L1_1 = L1_1.Inventory_PuffleRed
      if L0_0 == L1_1 then
        L1_1 = _util
        L1_1 = L1_1.GetVar
        L2_2 = "M4C2_redWB"
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
          L2_2 = "M4C2_hit"
          L3_3 = 0
          L1_1(L2_2, L3_3)
          L1_1 = _util
          L1_1 = L1_1.SetConversationCount
          L2_2 = 1000
          L3_3 = _id
          L3_3 = L3_3.M4C2_WBot_Gift
          L1_1(L2_2, L3_3)
        end
      else
        L1_1 = _id
        L1_1 = L1_1.Inventory_PufflePurple
        if L0_0 == L1_1 then
          L1_1 = _util
          L1_1 = L1_1.GetVar
          L2_2 = "M4C2_purpleWB"
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
            L2_2 = "M4C2_hit"
            L3_3 = 0
            L1_1(L2_2, L3_3)
            L1_1 = _util
            L1_1 = L1_1.SetConversationCount
            L2_2 = 1000
            L3_3 = _id
            L3_3 = L3_3.M4C2_WBot_Gift
            L1_1(L2_2, L3_3)
          end
        else
          L1_1 = _id
          L1_1 = L1_1.Inventory_PuffleGreen
          if L0_0 == L1_1 then
            L1_1 = _util
            L1_1 = L1_1.GetVar
            L2_2 = "M4C2_greenWB"
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
              L2_2 = "M4C2_hit"
              L3_3 = 0
              L1_1(L2_2, L3_3)
              L1_1 = _util
              L1_1 = L1_1.SetConversationCount
              L2_2 = 1000
              L3_3 = _id
              L3_3 = L3_3.M4C2_WBot_Gift
              L1_1(L2_2, L3_3)
            end
          else
            L1_1 = _id
            L1_1 = L1_1.Inventory_PuffleYellow
            if L0_0 == L1_1 then
              L1_1 = _util
              L1_1 = L1_1.GetVar
              L2_2 = "M4C2_yellowWB"
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
                L2_2 = "M4C2_hit"
                L3_3 = 0
                L1_1(L2_2, L3_3)
                L1_1 = _util
                L1_1 = L1_1.SetConversationCount
                L2_2 = 1000
                L3_3 = _id
                L3_3 = L3_3.M4C2_WBot_Gift
                L1_1(L2_2, L3_3)
              end
            else
              L1_1 = _id
              L1_1 = L1_1.Inventory_PufflePink
              if L0_0 == L1_1 then
                L1_1 = _util
                L1_1 = L1_1.GetVar
                L2_2 = "M4C2_pinkWB"
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
                  L2_2 = "M4C2_hit"
                  L3_3 = 0
                  L1_1(L2_2, L3_3)
                  L1_1 = _util
                  L1_1 = L1_1.SetConversationCount
                  L2_2 = 1000
                  L3_3 = _id
                  L3_3 = L3_3.M4C2_WBot_Gift
                  L1_1(L2_2, L3_3)
                end
              else
                L1_1 = _id
                L1_1 = L1_1.Inventory_MechanoDuster
                if L0_0 == L1_1 then
                  L1_1 = _util
                  L1_1 = L1_1.GetVar
                  L2_2 = "M4C2_dusterWB"
                  L1_1 = L1_1(L2_2)
                  if L1_1 == 0 then
                    L1_1 = _util
                    L1_1 = L1_1.AddDialog
                    L2_2 = 2451
                    L3_3 = _const
                    L3_3 = L3_3.CHANGE_DIALOG
                    L1_1(L2_2, L3_3, 206)
                  end
                else
                  L1_1 = _id
                  L1_1 = L1_1.Inventory_RobotomyTool
                  if L0_0 == L1_1 then
                    L1_1 = _util
                    L1_1 = L1_1.GetVar
                    L2_2 = "M4C2_robotomyWB"
                    L1_1 = L1_1(L2_2)
                    if L1_1 == 0 then
                      function L1_1()
                        _util.DisableInput()
                        _util.SwitchState("failBlack", _id.M4C2_VaultSteal)
                        _util.SwitchState("failRobotomy", _util.GetSelf())
                        repeat
                          scriptWait()
                        until not _util.IsAnimPlaying(_util.GetSelf())
                        _util.SwitchState("", _id.M4C2_VaultSteal)
                        _util.SwitchState("", _util.GetSelf())
                        _util.EnableInput()
                        _util.AddMonologue(2453)
                      end
                      L2_2 = _util
                      L2_2 = L2_2.SetVar
                      L3_3 = "M4C2_robotomyWB"
                      L2_2(L3_3, 1)
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
  L3_3 = L3_3.Inventory_PuffleBlue
  if L0_0 == L3_3 then
    L3_3 = _util
    L3_3 = L3_3.GetVar
    L3_3 = L3_3("M4C2_hit")
    if L3_3 == 0 then
      L3_3 = _util
      L3_3 = L3_3.SetVar
      L3_3("M4C2_hit", 1)
      function L3_3()
        _util.DisableInput()
        _util.DelItem(_id.M4C2_VaultSteal)
        _util.AddItem(_id.M4C2_Vault)
        _util.PlaySFX(55)
        _util.SwitchState("succeedBlue", _util.GetSelf())
        repeat
          scriptWait()
        until not _util.IsAnimPlaying(_util.GetSelf())
        _util.AddItem(_id.M4C2_WBot_Snow)
        _util.SetVar("M4C2_fightWB", 1)
        _util.EnableInput()
        _util.ActivateNpc(_id.M4C2_WBot_Snow, 50)
        _util.SetCursorPos(_util.GetX(_id.M4C2_WBot_Gift), _util.GetY(_id.M4C2_WBot_Gift), 1)
        _util.DelItem(_id.M4C2_WBot_Gift)
      end
      scriptPlay(L3_3)
    end
  else
    L3_3 = _id
    L3_3 = L3_3.Inventory_PuffleBlack
    if L0_0 == L3_3 then
      L3_3 = _util
      L3_3 = L3_3.GetVar
      L3_3 = L3_3("M4C2_hit")
      if L3_3 == 0 then
        L3_3 = _util
        L3_3 = L3_3.SetVar
        L3_3("M4C2_hit", 1)
        function L3_3()
          _util.DisableInput()
          _util.PlaySFX(67)
          _UPVALUE0_ = 180
          repeat
            _UPVALUE1_ = _UPVALUE1_ + 1
            scriptWait()
          until _UPVALUE1_ == _UPVALUE0_
          _util.SetVar("M4C2_blackWB", 1)
          _util.EnableInput()
          _util.AddDialog(2462, _const.CHANGE_DIALOG, 200)
        end
        scriptPlay(L3_3)
      end
    else
      L3_3 = _id
      L3_3 = L3_3.Inventory_PuffleRed
      if L0_0 == L3_3 then
        L3_3 = _util
        L3_3 = L3_3.GetVar
        L3_3 = L3_3("M4C2_hit")
        if L3_3 == 0 then
          L3_3 = _util
          L3_3 = L3_3.SetVar
          L3_3("M4C2_hit", 1)
          function L3_3()
            _util.DisableInput()
            _util.PlaySFX(67)
            _UPVALUE0_ = 70
            repeat
              _UPVALUE1_ = _UPVALUE1_ + 1
              scriptWait()
            until _UPVALUE1_ == _UPVALUE0_
            _util.SetVar("M4C2_redWB", 1)
            _util.EnableInput()
            _util.AddDialog(2454, _const.CHANGE_DIALOG, 201)
          end
          scriptPlay(L3_3)
        end
      else
        L3_3 = _id
        L3_3 = L3_3.Inventory_PufflePurple
        if L0_0 == L3_3 then
          L3_3 = _util
          L3_3 = L3_3.GetVar
          L3_3 = L3_3("M4C2_hit")
          if L3_3 == 0 then
            L3_3 = _util
            L3_3 = L3_3.SetVar
            L3_3("M4C2_hit", 1)
            L3_3 = _util
            L3_3 = L3_3.SetVar
            L3_3("M4C2_purpleWB", 1)
            L3_3 = _util
            L3_3 = L3_3.PlaySFX
            L3_3(67)
            L3_3 = _util
            L3_3 = L3_3.ActivateNpc
            L3_3(_id.M4C2_WBot_Gift, 202)
          end
        else
          L3_3 = _id
          L3_3 = L3_3.Inventory_PuffleGreen
          if L0_0 == L3_3 then
            L3_3 = _util
            L3_3 = L3_3.GetVar
            L3_3 = L3_3("M4C2_hit")
            if L3_3 == 0 then
              L3_3 = _util
              L3_3 = L3_3.SetVar
              L3_3("M4C2_hit", 1)
              function L3_3()
                _util.DisableInput()
                _util.PlaySFX(67)
                _UPVALUE0_ = 100
                repeat
                  _UPVALUE1_ = _UPVALUE1_ + 1
                  scriptWait()
                until _UPVALUE1_ == _UPVALUE0_
                _util.SetVar("M4C2_greenWB", 1)
                _util.EnableInput()
                _util.AddDialog(2456, _const.CHANGE_DIALOG, 203)
              end
              scriptPlay(L3_3)
            end
          else
            L3_3 = _id
            L3_3 = L3_3.Inventory_PuffleYellow
            if L0_0 == L3_3 then
              L3_3 = _util
              L3_3 = L3_3.GetVar
              L3_3 = L3_3("M4C2_hit")
              if L3_3 == 0 then
                L3_3 = _util
                L3_3 = L3_3.SetVar
                L3_3("M4C2_hit", 1)
                L3_3 = _util
                L3_3 = L3_3.SetVar
                L3_3("M4C2_yellowWB", 1)
                L3_3 = _util
                L3_3 = L3_3.PlaySFX
                L3_3(67)
                L3_3 = _util
                L3_3 = L3_3.AddDialog
                L3_3(2458, _const.CHANGE_DIALOG, 204)
              end
            else
              L3_3 = _id
              L3_3 = L3_3.Inventory_PufflePink
              if L0_0 == L3_3 then
                L3_3 = _util
                L3_3 = L3_3.GetVar
                L3_3 = L3_3("M4C2_hit")
                if L3_3 == 0 then
                  L3_3 = _util
                  L3_3 = L3_3.SetVar
                  L3_3("M4C2_hit", 1)
                  L3_3 = _util
                  L3_3 = L3_3.SetVar
                  L3_3("M4C2_pinkWB", 1)
                  L3_3 = _util
                  L3_3 = L3_3.PlaySFX
                  L3_3(67)
                  L3_3 = _util
                  L3_3 = L3_3.AddDialog
                  L3_3(2460, _const.CHANGE_DIALOG, 205)
                end
              end
            end
          end
        end
      end
    end
  end
end
