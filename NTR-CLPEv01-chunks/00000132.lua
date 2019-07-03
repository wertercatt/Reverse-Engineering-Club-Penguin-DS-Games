local L0_0, L1_1, L2_2
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
  if L0_0 == 0 then
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L2_2 = "M3C1_impressedLoop"
    L1_1 = L1_1(L2_2)
    if L1_1 == 0 then
      L1_1 = _util
      L1_1 = L1_1.GetVar
      L2_2 = "M3C1_snowballCount"
      L1_1 = L1_1(L2_2)
      if L1_1 > 0 then
        L1_1 = _util
        L1_1 = L1_1.AddDialog
        L2_2 = 1569
        L1_1(L2_2, _const.END_DIALOG, 0)
      end
    end
  elseif L0_0 == 0 then
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L2_2 = "M3C1_impressedLoop"
    L1_1 = L1_1(L2_2)
    if L1_1 == 0 then
      L1_1 = _util
      L1_1 = L1_1.AddLoopingConv
      L2_2 = 1366
      L1_1(L2_2)
      L1_1 = _util
      L1_1 = L1_1.AddLoopingOption
      L2_2 = 1367
      L1_1(L2_2, 1370, _const.UPDATE_LOOP)
      L1_1 = _util
      L1_1 = L1_1.AddLoopingOption
      L2_2 = 1368
      L1_1(L2_2, 1371, _const.UPDATE_LOOP)
      L1_1 = _util
      L1_1 = L1_1.AddLoopingOption
      L2_2 = 1369
      L1_1(L2_2, -1, _const.CHANGE_DIALOG, 11)
    end
  elseif L0_0 == 11 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L2_2 = 4396
    L1_1(L2_2, _const.END_DIALOG, 0)
  elseif L0_0 == 1 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L2_2 = 1570
    L1_1(L2_2, _const.END_DIALOG, 1)
    L1_1 = _util
    L1_1 = L1_1.SwitchState
    L2_2 = ""
    L1_1(L2_2, _id.M3C1_Loop_Rink)
  elseif L0_0 == 90 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L2_2 = 1376
    L1_1(L2_2)
    L1_1 = _util
    L1_1 = L1_1.AddDialogButton
    L2_2 = 1377
    L1_1(L2_2, _const.CHANGE_DIALOG, 91)
  elseif L0_0 == 91 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L2_2 = 1378
    L1_1(L2_2, _const.CHANGE_DIALOG, 92)
  elseif L0_0 == 92 then
    L1_1 = _util
    L1_1 = L1_1.SetCursorPos
    L2_2 = _util
    L2_2 = L2_2.GetX
    L2_2 = L2_2(_id.M3C1_GoalieDefeated)
    L1_1(L2_2, _util.GetY(_id.M3C1_GoalieDefeated), 1)
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L2_2 = 1379
    L1_1(L2_2)
    L1_1 = _util
    L1_1 = L1_1.AddDialogButton
    L2_2 = 1380
    L1_1(L2_2, _const.CHANGE_DIALOG, 94)
  elseif L0_0 == 94 then
    L1_1 = _util
    L1_1 = L1_1.AddMonologue
    L2_2 = 1572
    L1_1(L2_2, "DialogStrings", _const.END_DIALOG, 1)
    L1_1 = _util
    L1_1 = L1_1.PlaySFX
    L2_2 = 154
    L1_1(L2_2)
    L1_1 = _util
    L1_1 = L1_1.HideMap
    L1_1()
    L1_1 = _util
    L1_1 = L1_1.SetSpawn
    L2_2 = 0
    L1_1(L2_2, _id.M3C1_Loop_Rink)
    L1_1 = _util
    L1_1 = L1_1.SetSpawn
    L2_2 = 0
    L1_1(L2_2, _id.M3C1_PuffleHandler)
    L1_1 = _util
    L1_1 = L1_1.SetSpawn
    L2_2 = 0
    L1_1(L2_2, _id.M3C1_Jetpack)
    L1_1 = _util
    L1_1 = L1_1.SetSpawn
    L2_2 = 0
    L1_1(L2_2, _id.M3C1_JetpackRemote)
    L1_1 = _util
    L1_1 = L1_1.SetSpawn
    L2_2 = 1
    L1_1(L2_2, _id.M3C1_Jetpack2)
    L1_1 = _util
    L1_1 = L1_1.SetSpawn
    L2_2 = 1
    L1_1(L2_2, _id.M3C1_JetpackHandler)
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
  L1_1 = 0
  L2_2 = _id
  L2_2 = L2_2.Inventory_PuffleBlue
  if L0_0 == L2_2 then
    L2_2 = _util
    L2_2 = L2_2.GetVar
    L2_2 = L2_2("M3C1_snowballCount")
    if L2_2 < 2 then
      L2_2 = _util
      L2_2 = L2_2.SetVar
      L2_2("M3C1_beingHit", 0)
      L2_2 = _util
      L2_2 = L2_2.SwitchState
      L2_2("block", _util.GetSelf())
      L2_2 = _util
      L2_2 = L2_2.SetSuccess
      L2_2(_util.GetSelf(), true)
    else
      L2_2 = _util
      L2_2 = L2_2.GetVar
      L2_2 = L2_2("M3C1_snowballCount")
      if L2_2 == 2 then
        L2_2 = _util
        L2_2 = L2_2.SetVar
        L2_2("M3C1_beingHit", 0)
        L2_2 = _util
        L2_2 = L2_2.SetVar
        L2_2("M3C1_impressedLoop", 1)
        L2_2 = _util
        L2_2 = L2_2.SetExitLocked
        L2_2(_id.Doors_IceRink2SnowForts, true)
        L2_2 = _util
        L2_2 = L2_2.SetSuccess
        L2_2(_id.M3C1_Goalie, true)
        function L2_2()
          _util.DisableInput()
          _util.SwitchState("hit", _id.M3C1_Goalie)
          repeat
            scriptWait()
          until not _util.IsAnimPlaying(_id.M3C1_Goalie)
          _util.DelItem(_id.M3C1_Goalie)
          _util.AddItem(_id.M3C1_GoalieDefeated)
          _util.EnableInput()
          _util.ActivateNpc(_id.M3C1_GoalieDefeated, 90)
        end
        scriptPlay(L2_2)
        _util.SetVar("M3C1_snowballCount", 3)
        _util.SetVar("M3C1_beingHit", 1)
      end
    end
  else
    L2_2 = _id
    L2_2 = L2_2.Inventory_PuffleRed
    if L0_0 == L2_2 then
      L2_2 = _util
      L2_2 = L2_2.AddMonologue
      L2_2(1374)
      L2_2 = _util
      L2_2 = L2_2.SetSuccess
      L2_2(_util.GetSelf(), false)
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
  L1_1 = L1_1.Inventory_PuffleBlue
  if L0_0 == L1_1 then
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L2_2 = "M3C1_beingHit"
    L1_1 = L1_1(L2_2)
    if L1_1 == 0 then
      L1_1 = _util
      L1_1 = L1_1.PlaySFX
      L2_2 = 57
      L1_1(L2_2)
      L1_1 = _util
      L1_1 = L1_1.GetVar
      L2_2 = "M3C1_snowballCount"
      L1_1 = L1_1(L2_2)
      if L1_1 == 0 then
        L1_1 = _util
        L1_1 = L1_1.AddDialog
        L2_2 = 1372
        L1_1(L2_2, _const.END_DIALOG, 0)
        L1_1 = _util
        L1_1 = L1_1.SetVar
        L2_2 = "M3C1_snowballCount"
        L1_1(L2_2, 1)
        L1_1 = _util
        L1_1 = L1_1.SetVar
        L2_2 = "M3C1_beingHit"
        L1_1(L2_2, 1)
      else
        L1_1 = _util
        L1_1 = L1_1.GetVar
        L2_2 = "M3C1_snowballCount"
        L1_1 = L1_1(L2_2)
        if L1_1 == 1 then
          L1_1 = _util
          L1_1 = L1_1.AddDialog
          L2_2 = 1373
          L1_1(L2_2, _const.END_DIALOG, 0)
          L1_1 = _util
          L1_1 = L1_1.SetVar
          L2_2 = "M3C1_snowballCount"
          L1_1(L2_2, 2)
          L1_1 = _util
          L1_1 = L1_1.SetVar
          L2_2 = "M3C1_beingHit"
          L1_1(L2_2, 1)
        end
      end
    end
  end
end
