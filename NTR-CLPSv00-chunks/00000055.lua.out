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
  function L1_1()
    repeat
      if _util.GetVar("M4C2_moveBot") == 1 then
        _util.MoveObject(_id.M4C2_WBot_Roof, 90, 144)
      end
      repeat
        scriptWait()
      until 90 >= _util.GetX(_id.M4C2_WBot_Roof) or _util.GetVar("M4C2_moveBot") == 0
      if _util.GetVar("M4C2_moveBot") == 1 then
        _util.MoveObject(_id.M4C2_WBot_Roof, 250, 144)
      end
      repeat
        scriptWait()
      until _util.GetX(_id.M4C2_WBot_Roof) >= 250 or _util.GetVar("M4C2_moveBot") == 0
      _util.IncVar("M4C2_robotCount")
    until _util.GetVar("M4C2_moveBot") == 0 or _util.GetVar("M4C2_robotCount") >= 4
    _util.ClearEffects()
    if _util.GetVar("M4C2_moveBot") == 1 then
      _util.SetVar("M4C2_moveBot", 0)
      _util.ActivateNpc(_id.M4C2_WBot_Roof, 0)
    end
  end
  L2_2 = _util
  L2_2 = L2_2.GetVar
  L3_3 = "M4C2_introRoof"
  L2_2 = L2_2(L3_3)
  if L2_2 == 0 then
    if L0_0 == 0 then
      L2_2 = _util
      L2_2 = L2_2.AddConversation
      L3_3 = 2477
      L2_2(L3_3, 2478, -1, _const.CHANGE_DIALOG, 1)
    elseif L0_0 == 1 then
      L2_2 = _util
      L2_2 = L2_2.AddConversation
      L3_3 = 2479
      L2_2(L3_3, 2480, -1, _const.CHANGE_DIALOG, 102)
      L2_2 = _util
      L2_2 = L2_2.SetVar
      L3_3 = "M4C2_introRoof"
      L2_2(L3_3, 1)
    end
  elseif L0_0 == 102 then
    L2_2 = _util
    L2_2 = L2_2.SetConversationCount
    L3_3 = _util
    L3_3 = L3_3.GetSelf
    L3_3 = L3_3()
    L2_2(L3_3, 0)
    L2_2 = _util
    L2_2 = L2_2.GetVar
    L3_3 = "M4C2_moveBot"
    L2_2 = L2_2(L3_3)
    if L2_2 == 0 then
      L2_2 = _util
      L2_2 = L2_2.SetVar
      L3_3 = "M4C2_moveBot"
      L2_2(L3_3, 1)
      L2_2 = _util
      L2_2 = L2_2.SetVar
      L3_3 = "M4C2_robotCount"
      L2_2(L3_3, 0)
      L2_2 = scriptPlay
      L3_3 = L1_1
      L2_2(L3_3)
    end
  elseif L0_0 == 0 then
    L2_2 = _util
    L2_2 = L2_2.GetVar
    L3_3 = "M4C2_fightWB"
    L2_2 = L2_2(L3_3)
    if L2_2 < 2 then
      L2_2 = _util
      L2_2 = L2_2.AddConversation
      L3_3 = 2485
      L2_2(L3_3, 2486, -1, _const.CHANGE_DIALOG, 102)
    else
      L2_2 = _util
      L2_2 = L2_2.GetVar
      L3_3 = "M4C2_fightWB"
      L2_2 = L2_2(L3_3)
      if L2_2 == 2 then
        L2_2 = _util
        L2_2 = L2_2.GetVar
        L3_3 = "M4C2_hitCream"
        L2_2 = L2_2(L3_3)
        if L2_2 == 1 then
          L2_2 = _util
          L2_2 = L2_2.AddConversation
          L3_3 = 2509
          L2_2(L3_3, 2511, -1, _const.END_DIALOG, 0)
        else
          L2_2 = _util
          L2_2 = L2_2.AddConversation
          L3_3 = 2509
          L2_2(L3_3, 2510, -1, _const.END_DIALOG, 0)
        end
      else
        L2_2 = _util
        L2_2 = L2_2.GetVar
        L3_3 = "M4C2_fightWB"
        L2_2 = L2_2(L3_3)
        if L2_2 == 3 then
          L2_2 = _util
          L2_2 = L2_2.GetVar
          L3_3 = "M4C2_deadWB"
          L2_2 = L2_2(L3_3)
          if L2_2 == 0 then
            L2_2 = _util
            L2_2 = L2_2.AddConversation
            L3_3 = 2534
            L2_2(L3_3, 2535, -1, _const.END_DIALOG, 0)
          end
        else
          L2_2 = _util
          L2_2 = L2_2.GetVar
          L3_3 = "M4C2_deadWB"
          L2_2 = L2_2(L3_3)
          if L2_2 == 1 then
            L2_2 = _util
            L2_2 = L2_2.AddMonologue
            L3_3 = 2561
            L2_2(L3_3)
          else
            L2_2 = _util
            L2_2 = L2_2.GetVar
            L3_3 = "M4C2_deadWB"
            L2_2 = L2_2(L3_3)
            if L2_2 == 2 then
              function L2_2()
                _util.SetExitLocked(_id.Doors_GiftShop2Town, false)
                _util.SetExitLocked(_id.Doors_GiftRoof2Office, false)
                _util.SetVar("M4C2_haveWB", 1)
                _util.ShowMap()
                _util.DelItem(_id.M4C2_WBot_RoofDead)
                _util.AddInventoryItem(_id.Inventory_WBot)
                repeat
                  scriptWait()
                until _util.IsPopUpVisible() == false
              end
              L3_3 = scriptPlay
              L3_3(L2_2)
            end
          end
        end
      end
    end
  elseif L0_0 == 50 then
    L2_2 = _util
    L2_2 = L2_2.AddDialog
    L3_3 = 2505
    L2_2(L3_3, _const.CHANGE_DIALOG, 51)
  elseif L0_0 == 51 then
    L2_2 = _util
    L2_2 = L2_2.AddDialog
    L3_3 = 2506
    L2_2(L3_3, _const.CHANGE_DIALOG, 52)
  elseif L0_0 == 52 then
    L2_2 = _util
    L2_2 = L2_2.GetVar
    L3_3 = "M4C2_hitCream"
    L2_2 = L2_2(L3_3)
    if L2_2 == 1 then
      L2_2 = _util
      L2_2 = L2_2.AddMonologue
      L3_3 = 2508
      L2_2(L3_3, "DialogStrings", _const.END_DIALOG, 0)
    else
      L2_2 = _util
      L2_2 = L2_2.AddMonologue
      L3_3 = 2507
      L2_2(L3_3, "DialogStrings", _const.END_DIALOG, 0)
    end
  elseif L0_0 == 53 then
    L2_2 = _util
    L2_2 = L2_2.AddMonologue
    L3_3 = 2526
    L2_2(L3_3, "DialogStrings", _const.END_DIALOG, 0)
    L2_2 = _util
    L2_2 = L2_2.SetVar
    L3_3 = "M4C2_blueWB"
    L2_2(L3_3, 2)
  elseif L0_0 == 530 then
    L2_2 = _util
    L2_2 = L2_2.AddMonologue
    L3_3 = 2528
    L2_2(L3_3, "DialogStrings", _const.END_DIALOG, 0)
    L2_2 = _util
    L2_2 = L2_2.SetVar
    L3_3 = "M4C2_blueWB"
    L2_2(L3_3, 2)
  elseif L0_0 == 54 then
    L2_2 = _util
    L2_2 = L2_2.AddMonologue
    L3_3 = 2549
    L2_2(L3_3, "DialogStrings", _const.END_DIALOG, 0)
    L2_2 = _util
    L2_2 = L2_2.SetVar
    L3_3 = "M4C2_blueWB"
    L2_2(L3_3, 2)
  elseif L0_0 == 540 then
    L2_2 = _util
    L2_2 = L2_2.AddMonologue
    L3_3 = 2550
    L2_2(L3_3, "DialogStrings", _const.END_DIALOG, 0)
    L2_2 = _util
    L2_2 = L2_2.SetVar
    L3_3 = "M4C2_blueWB"
    L2_2(L3_3, 2)
  elseif L0_0 == 60 then
    L2_2 = _util
    L2_2 = L2_2.AddDialog
    L3_3 = 2530
    L2_2(L3_3, _const.CHANGE_DIALOG, 61)
  elseif L0_0 == 61 then
    function L2_2()
      _util.DisableInput()
      _util.PlaySFX(52)
      _util.SwitchState("succeedBlack", _id.M4C2_WBot_RoofSnow)
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_id.M4C2_WBot_RoofSnow)
      _util.DelItem(_id.M4C2_WBot_RoofSnow)
      _util.AddItem(_id.M4C2_WBot_RoofWeld)
      _util.SetVar("M4C2_fightWB", 3)
      _util.SetVar("M4C2_blueWB", 0)
      _util.SetVar("M4C2_blackWB", 0)
      _util.SetVar("M4C2_redWB", 0)
      _util.SetVar("M4C2_purpleWB", 0)
      _util.SetVar("M4C2_yellowWB", 0)
      _util.SetVar("M4C2_greenWB", 0)
      _util.SetVar("M4C2_pinkWB", 0)
      _util.EnableInput()
      _util.ActivateNpc(_id.M4C2_WBot_RoofWeld, 62)
    end
    L3_3 = scriptPlay
    L3_3(L2_2)
  elseif L0_0 == 62 then
    L2_2 = _util
    L2_2 = L2_2.AddMonologue
    L3_3 = 2531
    L2_2(L3_3, "DialogStrings", _const.CHANGE_DIALOG, 63)
  elseif L0_0 == 63 then
    L2_2 = _util
    L2_2 = L2_2.AddDialog
    L3_3 = 2532
    L2_2(L3_3, _const.CHANGE_DIALOG, 64)
  elseif L0_0 == 64 then
    L2_2 = _util
    L2_2 = L2_2.AddMonologue
    L3_3 = 2533
    L2_2(L3_3, "DialogStrings", _const.END_DIALOG, 0)
  elseif L0_0 == 200 then
    function L2_2()
      _util.DisableInput()
      _util.PlaySFX(67)
      _util.SwitchState("failBlack", _util.GetSelf())
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_util.GetSelf())
      _util.SwitchState("", _util.GetSelf())
      _util.SetVar("M4C2_blackWB", 2)
      _util.EnableInput()
      if _util.GetVar("M4C2_fightWB") == 1 then
        _util.AddMonologue(2499, "DialogStrings", _const.CHANGE_DIALOG, 102)
      elseif _util.GetVar("M4C2_fightWB") == 3 then
        _util.AddMonologue(2552, "DialogStrings", _const.END_DIALOG, 0)
      end
    end
    L3_3 = scriptPlay
    L3_3(L2_2)
  elseif L0_0 == 70 then
    function L2_2()
      _util.DisableInput()
      _util.PlaySFX(84)
      _util.SwitchState("succeedPurple", _id.M4C2_WBot_RoofDead)
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_id.M4C2_WBot_RoofDead)
      _util.SwitchState("bubble", _id.M4C2_WBot_RoofDead)
      _util.SetVar("M4C2_deadWB", 2)
      _util.EnableInput()
      _util.AddMonologue(2563, "DialogStrings", _const.END_DIALOG, 0)
      _util.SetObjective(659)
      _util.RemoveMapAlert(_const.M4C2ROBOTGIFT)
      _util.AddMapAlert(_const.STORY_MISSION, 210, 130, _const.M4C2MISSIONEND, 70, 70)
    end
    L3_3 = scriptPlay
    L3_3(L2_2)
  elseif L0_0 == 202 then
    function L2_2()
      _util.DisableInput()
      _util.PlaySFX(67)
      _util.SwitchState("failPurple", _util.GetSelf())
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_util.GetSelf())
      _util.SwitchState("", _util.GetSelf())
      _util.EnableInput()
      if _util.GetVar("M4C2_fightWB") == 1 then
        _util.AddMonologue(2501, "DialogStrings", _const.CHANGE_DIALOG, 102)
      elseif _util.GetVar("M4C2_fightWB") == 2 then
        _util.AddMonologue(2524, "DialogStrings", _const.END_DIALOG, 0)
      elseif _util.GetVar("M4C2_fightWB") == 3 then
        _util.AddMonologue(2547, "DialogStrings", _const.END_DIALOG, 0)
      end
    end
    L3_3 = scriptPlay
    L3_3(L2_2)
  elseif L0_0 == 201 then
    function L2_2()
      _util.DisableInput()
      _util.PlaySFX(67)
      _util.SwitchState("failRed", _util.GetSelf())
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_util.GetSelf())
      _util.SwitchState("", _util.GetSelf())
      _util.EnableInput()
      if _util.GetVar("M4C2_fightWB") == 1 then
        _util.AddMonologue(2491, "DialogStrings", _const.CHANGE_DIALOG, 102)
      elseif _util.GetVar("M4C2_fightWB") == 2 then
        _util.AddMonologue(2491, "DialogStrings", _const.END_DIALOG, 0)
      elseif _util.GetVar("M4C2_fightWB") == 3 then
        _util.AddMonologue(2539, "DialogStrings", _const.END_DIALOG, 0)
      end
    end
    L3_3 = scriptPlay
    L3_3(L2_2)
  elseif L0_0 == 203 then
    function L2_2()
      _util.DisableInput()
      _util.PlaySFX(67)
      _util.SwitchState("failYellow", _util.GetSelf())
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_util.GetSelf())
      _util.SwitchState("", _util.GetSelf())
      _util.EnableInput()
      if _util.GetVar("M4C2_fightWB") == 1 then
        _util.AddMonologue(2495, "DialogStrings", _const.CHANGE_DIALOG, 102)
      elseif _util.GetVar("M4C2_fightWB") == 2 then
        _util.AddMonologue(2520, "DialogStrings", _const.END_DIALOG, 0)
      elseif _util.GetVar("M4C2_fightWB") == 3 then
        _util.AddMonologue(2543, "DialogStrings", _const.END_DIALOG, 0)
      end
    end
    L3_3 = scriptPlay
    L3_3(L2_2)
  elseif L0_0 == 204 then
    function L2_2()
      _util.DisableInput()
      _util.PlaySFX(67)
      _util.SwitchState("failGreen", _util.GetSelf())
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_util.GetSelf())
      _util.SwitchState("", _util.GetSelf())
      _util.EnableInput()
      if _util.GetVar("M4C2_fightWB") == 1 then
        _util.AddMonologue(2493, "DialogStrings", _const.CHANGE_DIALOG, 102)
      elseif _util.GetVar("M4C2_fightWB") == 2 then
        _util.AddMonologue(2518, "DialogStrings", _const.END_DIALOG, 0)
      elseif _util.GetVar("M4C2_fightWB") == 3 then
        _util.AddMonologue(2541, "DialogStrings", _const.END_DIALOG, 0)
      end
    end
    L3_3 = scriptPlay
    L3_3(L2_2)
  elseif L0_0 == 205 then
    function L2_2()
      _util.DisableInput()
      _util.PlaySFX(67)
      _util.SwitchState("failPink", _util.GetSelf())
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_util.GetSelf())
      _util.SwitchState("", _util.GetSelf())
      _util.EnableInput()
      if _util.GetVar("M4C2_fightWB") == 1 then
        _util.AddMonologue(2497, "DialogStrings", _const.CHANGE_DIALOG, 102)
      elseif _util.GetVar("M4C2_fightWB") == 2 then
        _util.AddMonologue(2522, "DialogStrings", _const.END_DIALOG, 0)
      elseif _util.GetVar("M4C2_fightWB") == 3 then
        _util.AddMonologue(2545, "DialogStrings", _const.END_DIALOG, 0)
      end
    end
    L3_3 = scriptPlay
    L3_3(L2_2)
  elseif L0_0 == 206 then
    L2_2 = _util
    L2_2 = L2_2.GetVar
    L3_3 = "M4C2_dusterWB"
    L2_2 = L2_2(L3_3)
    if L2_2 < 2 then
      function L2_2()
        _util.DisableInput()
        _util.PlaySFX(67)
        _util.SwitchState("failDuster", _util.GetSelf())
        repeat
          scriptWait()
        until not _util.IsAnimPlaying(_util.GetSelf())
        _util.SwitchState("", _util.GetSelf())
        _util.SetVar("M4C2_dusterWB", 2)
        _util.EnableInput()
        if 2 > _util.GetVar("M4C2_fightWB") then
          _util.AddMonologue(2488, "DialogStrings", _const.CHANGE_DIALOG, 102)
        else
          _util.AddMonologue(2488, "DialogStrings", _const.END_DIALOG, 0)
        end
      end
      L3_3 = scriptPlay
      L3_3(L2_2)
    else
      L2_2 = _util
      L2_2 = L2_2.GetVar
      L3_3 = "M4C2_dusterWB"
      L2_2 = L2_2(L3_3)
      if L2_2 == 2 then
        L2_2 = _util
        L2_2 = L2_2.GetVar
        L3_3 = "M4C2_fightWB"
        L2_2 = L2_2(L3_3)
        if L2_2 < 2 then
          L2_2 = _util
          L2_2 = L2_2.AddMonologue
          L3_3 = 2513
          L2_2(L3_3, "DialogStrings", _const.CHANGE_DIALOG, 102)
        else
          L2_2 = _util
          L2_2 = L2_2.AddMonologue
          L3_3 = 2513
          L2_2(L3_3, "DialogStrings", _const.END_DIALOG, 0)
        end
      end
    end
  elseif L0_0 == 207 then
    function L2_2()
      _util.DisableInput()
      _util.SwitchState("opening", _id.M4C2_WBot_RoofWeld)
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_id.M4C2_WBot_RoofWeld)
      _util.DelItem(_id.M4C2_WBot_RoofWeld)
      _util.AddItem(_id.M4C2_WBot_RoofDead)
      _util.EnableInput()
      _util.StartMiniGame(_const.ROBOTOMY, 0, 1000)
      repeat
        scriptWait()
      until _util.GetGameState() ~= _const.MISSION
      repeat
        scriptWait()
      until _util.GetGameState() == _const.MISSION
      if _util.GetMinigameOutput1() == 1 then
        _util.PlaySFX(54)
        _util.SetVar("M4C2_deadWB", 1)
        _util.ActivateNpc(_id.M4C2_WBot_RoofDead, 208)
      elseif _util.GetMinigameOutput1() == 0 then
        _util.PlaySFX(67)
        _util.SwitchState("", _id.M4C3_SBot_WC)
        _util.SetConversationCount(0)
      end
    end
    L3_3 = scriptPlay
    L3_3(L2_2)
  elseif L0_0 == 208 then
    L2_2 = _util
    L2_2 = L2_2.AddDialog
    L3_3 = 2558
    L2_2(L3_3, _const.CHANGE_DIALOG, 209)
  elseif L0_0 == 209 then
    L2_2 = _util
    L2_2 = L2_2.AddMonologue
    L3_3 = 2559
    L2_2(L3_3, "DialogStrings", _const.CHANGE_DIALOG, 210)
  elseif L0_0 == 210 then
    L2_2 = _util
    L2_2 = L2_2.AddMonologue
    L3_3 = 2560
    L2_2(L3_3, "DialogStrings", _const.END_DIALOG, 0)
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
    if L1_1 ~= 1 then
      L1_1 = _util
      L1_1 = L1_1.GetVar
      L2_2 = "M4C2_blueWB"
      L1_1 = L1_1(L2_2)
      if L1_1 < 2 then
        L1_1 = _util
        L1_1 = L1_1.GetVar
        L2_2 = "M4C2_deadWB"
        L1_1 = L1_1(L2_2)
      end
    elseif L1_1 < 1 then
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
      L1_1 = L1_1.GetTouchValid
      L1_1 = L1_1()
      if L1_1 then
        L1_1 = _util
        L1_1 = L1_1.SetVar
        L2_2 = "M4C2_moveBot"
        L3_3 = 0
        L1_1(L2_2, L3_3)
      end
    end
  else
    L1_1 = _id
    L1_1 = L1_1.Inventory_PuffleBlack
    if L0_0 == L1_1 then
      L1_1 = _util
      L1_1 = L1_1.GetVar
      L2_2 = "M4C2_fightWB"
      L1_1 = L1_1(L2_2)
      if L1_1 ~= 2 then
        L1_1 = _util
        L1_1 = L1_1.GetVar
        L2_2 = "M4C2_blackWB"
        L1_1 = L1_1(L2_2)
        if L1_1 < 2 then
          L1_1 = _util
          L1_1 = L1_1.GetVar
          L2_2 = "M4C2_deadWB"
          L1_1 = L1_1(L2_2)
        end
      elseif L1_1 < 1 then
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
        L1_1 = L1_1.GetTouchValid
        L1_1 = L1_1()
        if L1_1 then
          L1_1 = _util
          L1_1 = L1_1.SetVar
          L2_2 = "M4C2_moveBot"
          L3_3 = 0
          L1_1(L2_2, L3_3)
        end
      end
    else
      L1_1 = _id
      L1_1 = L1_1.Inventory_PuffleRed
      if L0_0 == L1_1 then
        L1_1 = _util
        L1_1 = L1_1.GetVar
        L2_2 = "M4C2_redWB"
        L1_1 = L1_1(L2_2)
        if L1_1 < 2 then
          L1_1 = _util
          L1_1 = L1_1.GetVar
          L2_2 = "M4C2_deadWB"
          L1_1 = L1_1(L2_2)
          if L1_1 < 1 then
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
            L1_1 = L1_1.GetTouchValid
            L1_1 = L1_1()
            if L1_1 then
              L1_1 = _util
              L1_1 = L1_1.SetVar
              L2_2 = "M4C2_moveBot"
              L3_3 = 0
              L1_1(L2_2, L3_3)
            end
          end
        end
      else
        L1_1 = _id
        L1_1 = L1_1.Inventory_PufflePurple
        if L0_0 == L1_1 then
          L1_1 = _util
          L1_1 = L1_1.GetVar
          L2_2 = "M4C2_deadWB"
          L1_1 = L1_1(L2_2)
          if L1_1 ~= 1 then
            L1_1 = _util
            L1_1 = L1_1.GetVar
            L2_2 = "M4C2_purpleWB"
            L1_1 = L1_1(L2_2)
            if L1_1 < 2 then
              L1_1 = _util
              L1_1 = L1_1.GetVar
              L2_2 = "M4C2_deadWB"
              L1_1 = L1_1(L2_2)
            end
          elseif L1_1 < 2 then
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
            L1_1 = L1_1.GetTouchValid
            L1_1 = L1_1()
            if L1_1 then
              L1_1 = _util
              L1_1 = L1_1.SetVar
              L2_2 = "M4C2_moveBot"
              L3_3 = 0
              L1_1(L2_2, L3_3)
            end
          end
        else
          L1_1 = _id
          L1_1 = L1_1.Inventory_PuffleGreen
          if L0_0 == L1_1 then
            L1_1 = _util
            L1_1 = L1_1.GetVar
            L2_2 = "M4C2_greenWB"
            L1_1 = L1_1(L2_2)
            if L1_1 < 2 then
              L1_1 = _util
              L1_1 = L1_1.GetVar
              L2_2 = "M4C2_deadWB"
              L1_1 = L1_1(L2_2)
              if L1_1 < 1 then
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
                L1_1 = L1_1.GetTouchValid
                L1_1 = L1_1()
                if L1_1 then
                  L1_1 = _util
                  L1_1 = L1_1.SetVar
                  L2_2 = "M4C2_moveBot"
                  L3_3 = 0
                  L1_1(L2_2, L3_3)
                end
              end
            end
          else
            L1_1 = _id
            L1_1 = L1_1.Inventory_PuffleYellow
            if L0_0 == L1_1 then
              L1_1 = _util
              L1_1 = L1_1.GetVar
              L2_2 = "M4C2_yellowWB"
              L1_1 = L1_1(L2_2)
              if L1_1 < 2 then
                L1_1 = _util
                L1_1 = L1_1.GetVar
                L2_2 = "M4C2_deadWB"
                L1_1 = L1_1(L2_2)
                if L1_1 < 1 then
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
                  L1_1 = L1_1.GetTouchValid
                  L1_1 = L1_1()
                  if L1_1 then
                    L1_1 = _util
                    L1_1 = L1_1.SetVar
                    L2_2 = "M4C2_moveBot"
                    L3_3 = 0
                    L1_1(L2_2, L3_3)
                  end
                end
              end
            else
              L1_1 = _id
              L1_1 = L1_1.Inventory_PufflePink
              if L0_0 == L1_1 then
                L1_1 = _util
                L1_1 = L1_1.GetVar
                L2_2 = "M4C2_pinkWB"
                L1_1 = L1_1(L2_2)
                if L1_1 < 2 then
                  L1_1 = _util
                  L1_1 = L1_1.GetVar
                  L2_2 = "M4C2_deadWB"
                  L1_1 = L1_1(L2_2)
                  if L1_1 < 1 then
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
                    L1_1 = L1_1.GetTouchValid
                    L1_1 = L1_1()
                    if L1_1 then
                      L1_1 = _util
                      L1_1 = L1_1.SetVar
                      L2_2 = "M4C2_moveBot"
                      L3_3 = 0
                      L1_1(L2_2, L3_3)
                    end
                  end
                end
              else
                L1_1 = _id
                L1_1 = L1_1.Inventory_MechanoDuster
                if L0_0 == L1_1 then
                  L1_1 = _util
                  L1_1 = L1_1.GetVar
                  L2_2 = "M4C2_dusterWB"
                  L1_1 = L1_1(L2_2)
                  if L1_1 < 2 then
                    L1_1 = _util
                    L1_1 = L1_1.GetVar
                    L2_2 = "M4C2_fightWB"
                    L1_1 = L1_1(L2_2)
                    if L1_1 < 2 then
                      L1_1 = _util
                      L1_1 = L1_1.SetVar
                      L2_2 = "M4C2_moveBot"
                      L3_3 = 0
                      L1_1(L2_2, L3_3)
                      L1_1 = _util
                      L1_1 = L1_1.AddDialog
                      L2_2 = 2487
                      L3_3 = _const
                      L3_3 = L3_3.CHANGE_DIALOG
                      L1_1(L2_2, L3_3, 206)
                    else
                      L1_1 = _util
                      L1_1 = L1_1.GetVar
                      L2_2 = "M4C2_fightWB"
                      L1_1 = L1_1(L2_2)
                      if L1_1 == 2 then
                        L1_1 = _util
                        L1_1 = L1_1.AddDialog
                        L2_2 = 2512
                        L3_3 = _const
                        L3_3 = L3_3.CHANGE_DIALOG
                        L1_1(L2_2, L3_3, 206)
                      end
                    end
                  end
                else
                  L1_1 = _id
                  L1_1 = L1_1.Inventory_RobotomyTool
                  if L0_0 == L1_1 then
                    function L1_1()
                      _util.DisableInput()
                      _util.PlaySFX(67)
                      _util.SwitchState("failRobotomy", _util.GetSelf())
                      repeat
                        scriptWait()
                      until not _util.IsAnimPlaying(_util.GetSelf())
                      _util.SwitchState("", _util.GetSelf())
                      _util.SetVar("M4C2_robotomyWB", 2)
                      _util.EnableInput()
                      if _util.GetVar("M4C2_fightWB") == 1 then
                        _util.AddMonologue(2489, "DialogStrings", _const.CHANGE_DIALOG, 102)
                      elseif _util.GetVar("M4C2_fightWB") == 2 then
                        _util.AddMonologue(2514, "DialogStrings", _const.END_DIALOG, 0)
                      end
                    end
                    L2_2 = _util
                    L2_2 = L2_2.GetVar
                    L3_3 = "M4C2_fightWB"
                    L2_2 = L2_2(L3_3)
                    if L2_2 == 3 then
                      L2_2 = _util
                      L2_2 = L2_2.GetVar
                      L3_3 = "M4C2_deadWB"
                      L2_2 = L2_2(L3_3)
                      if L2_2 == 0 then
                        L2_2 = _util
                        L2_2 = L2_2.PlaySFX
                        L3_3 = 123
                        L2_2(L3_3)
                        L2_2 = _util
                        L2_2 = L2_2.AddDialog
                        L3_3 = 2553
                        L2_2(L3_3, _const.CHANGE_DIALOG, 207)
                      end
                    else
                      L2_2 = _util
                      L2_2 = L2_2.GetVar
                      L3_3 = "M4C2_fightWB"
                      L2_2 = L2_2(L3_3)
                      if L2_2 ~= 3 then
                        L2_2 = _util
                        L2_2 = L2_2.GetVar
                        L3_3 = "M4C2_robotomyWB"
                        L2_2 = L2_2(L3_3)
                        if L2_2 < 2 then
                          L2_2 = _util
                          L2_2 = L2_2.SetVar
                          L3_3 = "M4C2_moveBot"
                          L2_2(L3_3, 0)
                          L2_2 = scriptPlay
                          L3_3 = L1_1
                          L2_2(L3_3)
                        end
                      end
                    end
                  else
                    L1_1 = _id
                    L1_1 = L1_1.Inventory_CreamPie
                    if L0_0 == L1_1 then
                      L1_1 = _util
                      L1_1 = L1_1.RemoveInventoryItem
                      L2_2 = _id
                      L2_2 = L2_2.Inventory_CreamPie
                      L1_1(L2_2)
                      L1_1 = _util
                      L1_1 = L1_1.GetVar
                      L2_2 = "M4C2_fightWB"
                      L1_1 = L1_1(L2_2)
                      if L1_1 == 1 then
                        function L1_1()
                          _util.DisableInput()
                          _util.PlaySFX(55)
                          _util.MoveObject(_util.GetSelf(), 176, 144)
                          _util.SwitchState("succeedBlue", _id.M4C2_WBot_Roof)
                          repeat
                            scriptWait()
                          until not _util.IsAnimPlaying(_id.M4C2_WBot_Roof) and _util.GetX(_id.M4C2_WBot_Roof) == 176
                          _util.AddItem(_id.M4C2_Computer)
                          _util.DelItem(_id.M4C2_WBot_Roof)
                          _util.AddItem(_id.M4C2_WBot_RoofSnow)
                          _util.SetVar("M4C2_fightWB", 2)
                          _util.SetVar("M4C2_blueWB", 0)
                          _util.SetVar("M4C2_blackWB", 0)
                          _util.SetVar("M4C2_redWB", 0)
                          _util.SetVar("M4C2_purpleWB", 0)
                          _util.SetVar("M4C2_yellowWB", 0)
                          _util.SetVar("M4C2_greenWB", 0)
                          _util.SetVar("M4C2_pinkWB", 0)
                          _util.SetVar("M4C2_moveBot", 0)
                          _util.SetVar("M4C2_hitCream", 1)
                          _util.EnableInput()
                          _util.ActivateNpc(_id.M4C2_WBot_RoofSnow, 50)
                        end
                        L2_2 = scriptPlay
                        L3_3 = L1_1
                        L2_2(L3_3)
                      else
                        L1_1 = _util
                        L1_1 = L1_1.GetVar
                        L2_2 = "M4C2_fightWB"
                        L1_1 = L1_1(L2_2)
                        if L1_1 == 2 then
                          L1_1 = _util
                          L1_1 = L1_1.AddDialog
                          L2_2 = 2527
                          L3_3 = _const
                          L3_3 = L3_3.CHANGE_DIALOG
                          L1_1(L2_2, L3_3, 530)
                        else
                          L1_1 = _util
                          L1_1 = L1_1.GetVar
                          L2_2 = "M4C2_fightWB"
                          L1_1 = L1_1(L2_2)
                          if L1_1 == 3 then
                            L1_1 = _util
                            L1_1 = L1_1.AddDialog
                            L2_2 = 2548
                            L3_3 = _const
                            L3_3 = L3_3.CHANGE_DIALOG
                            L1_1(L2_2, L3_3, 540)
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
      L3_3 = _util
      L3_3 = L3_3.GetVar
      L3_3 = L3_3("M4C2_fightWB")
      if L3_3 == 1 then
        function L3_3()
          _util.DisableInput()
          _util.PlaySFX(55)
          _util.MoveObject(_util.GetSelf(), 176, 144)
          _util.SwitchState("succeedBlue", _util.GetSelf())
          repeat
            scriptWait()
          until not _util.IsAnimPlaying(_util.GetSelf()) and _util.GetX(_util.GetSelf()) == 176
          _util.AddItem(_id.M4C2_Computer)
          _util.DelItem(_id.M4C2_WBot_Roof)
          _util.AddItem(_id.M4C2_WBot_RoofSnow)
          _util.SetVar("M4C2_fightWB", 2)
          _util.SetVar("M4C2_blueWB", 0)
          _util.SetVar("M4C2_blackWB", 0)
          _util.SetVar("M4C2_redWB", 0)
          _util.SetVar("M4C2_purpleWB", 0)
          _util.SetVar("M4C2_yellowWB", 0)
          _util.SetVar("M4C2_greenWB", 0)
          _util.SetVar("M4C2_pinkWB", 0)
          _util.EnableInput()
          _util.ActivateNpc(_id.M4C2_WBot_RoofSnow, 50)
        end
        scriptPlay(L3_3)
      else
        L3_3 = _util
        L3_3 = L3_3.GetVar
        L3_3 = L3_3("M4C2_fightWB")
        if L3_3 == 2 then
          L3_3 = _util
          L3_3 = L3_3.AddDialog
          L3_3(2525, _const.CHANGE_DIALOG, 53)
        else
          L3_3 = _util
          L3_3 = L3_3.GetVar
          L3_3 = L3_3("M4C2_fightWB")
          if L3_3 == 3 then
            L3_3 = _util
            L3_3 = L3_3.AddDialog
            L3_3(2548, _const.CHANGE_DIALOG, 54)
          end
        end
      end
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
          _UPVALUE0_ = 180
          repeat
            _util.DisableInput()
            _UPVALUE1_ = _UPVALUE1_ + 1
            scriptWait()
          until _UPVALUE1_ >= _UPVALUE0_
          _util.EnableInput()
          if _util.GetVar("M4C2_fightWB") == 1 then
            _util.AddDialog(2498, _const.CHANGE_DIALOG, 200)
          elseif _util.GetVar("M4C2_fightWB") == 2 then
            _util.AddDialog(2529, _const.CHANGE_DIALOG, 60)
          elseif _util.GetVar("M4C2_fightWB") == 3 then
            _util.AddDialog(2551, _const.CHANGE_DIALOG, 200)
          end
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
          L3_3 = _util
          L3_3 = L3_3.SetVar
          L3_3("M4C2_redWB", 2)
          function L3_3()
            _util.DisableInput()
            _UPVALUE0_ = 70
            repeat
              _UPVALUE1_ = _UPVALUE1_ + 1
              scriptWait()
            until _UPVALUE1_ >= _UPVALUE0_
            _util.EnableInput()
            if _util.GetVar("M4C2_fightWB") == 1 then
              _util.AddDialog(2490, _const.CHANGE_DIALOG, 201)
            elseif _util.GetVar("M4C2_fightWB") == 2 then
              _util.AddDialog(2515, _const.CHANGE_DIALOG, 201)
            elseif _util.GetVar("M4C2_fightWB") == 3 then
              _util.AddDialog(2515, _const.CHANGE_DIALOG, 201)
            end
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
            L3_3 = L3_3.GetVar
            L3_3 = L3_3("M4C2_deadWB")
            if L3_3 == 0 then
              L3_3 = _util
              L3_3 = L3_3.SetVar
              L3_3("M4C2_purpleWB", 2)
              L3_3 = _util
              L3_3 = L3_3.GetVar
              L3_3 = L3_3("M4C2_fightWB")
              if L3_3 == 1 then
                L3_3 = _util
                L3_3 = L3_3.ActivateNpc
                L3_3(_id.M4C2_WBot_Roof, 202)
              else
                L3_3 = _util
                L3_3 = L3_3.GetVar
                L3_3 = L3_3("M4C2_fightWB")
                if L3_3 == 2 then
                  L3_3 = _util
                  L3_3 = L3_3.ActivateNpc
                  L3_3(_id.M4C2_WBot_RoofSnow, 202)
                else
                  L3_3 = _util
                  L3_3 = L3_3.GetVar
                  L3_3 = L3_3("M4C2_fightWB")
                  if L3_3 == 3 then
                    L3_3 = _util
                    L3_3 = L3_3.AddDialog
                    L3_3(2546, _const.CHANGE_DIALOG, 202)
                  end
                end
              end
            else
              L3_3 = _util
              L3_3 = L3_3.GetVar
              L3_3 = L3_3("M4C2_deadWB")
              if L3_3 == 1 then
                L3_3 = _util
                L3_3 = L3_3.ActivateNpc
                L3_3(_id.M4C2_WBot_RoofDead, 70)
              end
            end
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
              L3_3 = _util
              L3_3 = L3_3.SetVar
              L3_3("M4C2_greenWB", 2)
              function L3_3()
                _util.DisableInput()
                _UPVALUE0_ = 100
                repeat
                  _UPVALUE1_ = _UPVALUE1_ + 1
                  scriptWait()
                until _UPVALUE1_ >= _UPVALUE0_
                _util.EnableInput()
                if _util.GetVar("M4C2_fightWB") == 1 then
                  _util.AddDialog(2492, _const.CHANGE_DIALOG, 204)
                elseif _util.GetVar("M4C2_fightWB") == 2 then
                  _util.AddDialog(2517, _const.CHANGE_DIALOG, 204)
                elseif _util.GetVar("M4C2_fightWB") == 3 then
                  _util.AddDialog(2540, _const.CHANGE_DIALOG, 204)
                end
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
                L3_3("M4C2_yellowWB", 2)
                L3_3 = _util
                L3_3 = L3_3.GetVar
                L3_3 = L3_3("M4C2_fightWB")
                if L3_3 == 1 then
                  L3_3 = _util
                  L3_3 = L3_3.AddDialog
                  L3_3(2494, _const.CHANGE_DIALOG, 203)
                else
                  L3_3 = _util
                  L3_3 = L3_3.GetVar
                  L3_3 = L3_3("M4C2_fightWB")
                  if L3_3 == 2 then
                    L3_3 = _util
                    L3_3 = L3_3.AddDialog
                    L3_3(2519, _const.CHANGE_DIALOG, 203)
                  else
                    L3_3 = _util
                    L3_3 = L3_3.GetVar
                    L3_3 = L3_3("M4C2_fightWB")
                    if L3_3 == 3 then
                      L3_3 = _util
                      L3_3 = L3_3.AddDialog
                      L3_3(2542, _const.CHANGE_DIALOG, 203)
                    end
                  end
                end
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
                  L3_3("M4C2_pinkWB", 2)
                  L3_3 = _util
                  L3_3 = L3_3.GetVar
                  L3_3 = L3_3("M4C2_fightWB")
                  if L3_3 == 1 then
                    L3_3 = _util
                    L3_3 = L3_3.AddDialog
                    L3_3(2496, _const.CHANGE_DIALOG, 205)
                  else
                    L3_3 = _util
                    L3_3 = L3_3.GetVar
                    L3_3 = L3_3("M4C2_fightWB")
                    if L3_3 == 2 then
                      L3_3 = _util
                      L3_3 = L3_3.AddDialog
                      L3_3(2521, _const.CHANGE_DIALOG, 205)
                    else
                      L3_3 = _util
                      L3_3 = L3_3.GetVar
                      L3_3 = L3_3("M4C2_fightWB")
                      if L3_3 == 3 then
                        L3_3 = _util
                        L3_3 = L3_3.AddDialog
                        L3_3(2544, _const.CHANGE_DIALOG, 205)
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
end
