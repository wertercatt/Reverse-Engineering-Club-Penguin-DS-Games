local L0_0, L1_1, L2_2, L3_3, L4_4
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
    L1_1 = L1_1.AddDialog
    L2_2 = 3340
    L3_3 = _const
    L3_3 = L3_3.CHANGE_DIALOG
    L4_4 = 1
    L1_1(L2_2, L3_3, L4_4)
    L1_1 = _util
    L1_1 = L1_1.PlaySFX
    L2_2 = 98
    L1_1(L2_2)
  elseif L0_0 == 1 then
    L1_1 = _util
    L1_1 = L1_1.SetCursorPos
    L2_2 = _util
    L2_2 = L2_2.GetX
    L3_3 = _util
    L3_3 = L3_3.GetSelf
    L4_4 = L3_3()
    L2_2 = L2_2(L3_3, L4_4, L3_3())
    L3_3 = _util
    L3_3 = L3_3.GetY
    L4_4 = _util
    L4_4 = L4_4.GetSelf
    L4_4 = L4_4()
    L4_4 = L3_3(L4_4, L4_4())
    L1_1(L2_2, L3_3, L4_4, L3_3(L4_4, L4_4()))
    L1_1 = _util
    L1_1 = L1_1.AddMonologue
    L2_2 = 3341
    L3_3 = "DialogStrings"
    L4_4 = _const
    L4_4 = L4_4.END_DIALOG
    L1_1(L2_2, L3_3, L4_4, 0)
  elseif L0_0 == 10 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L2_2 = 3325
    L3_3 = _const
    L3_3 = L3_3.CHANGE_DIALOG
    L4_4 = 11
    L1_1(L2_2, L3_3, L4_4)
    L1_1 = _util
    L1_1 = L1_1.PlaySFX
    L2_2 = 98
    L1_1(L2_2)
  elseif L0_0 == 11 then
    L1_1 = _util
    L1_1 = L1_1.SetConversationCount
    L2_2 = 0
    L1_1(L2_2)
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L2_2 = 3326
    L3_3 = _const
    L3_3 = L3_3.CHANGE_NPC
    L4_4 = _id
    L4_4 = L4_4.M5C1_Gary_Beach
    L1_1(L2_2, L3_3, L4_4, 10)
  elseif L0_0 == 50 then
    L1_1 = _util
    L1_1 = L1_1.AddMonologue
    L2_2 = 3346
    L3_3 = "DialogStrings"
    L4_4 = _const
    L4_4 = L4_4.END_DIALOG
    L1_1(L2_2, L3_3, L4_4, 0)
  elseif L0_0 == 51 then
    L1_1 = _util
    L1_1 = L1_1.AddMonologue
    L2_2 = 3343
    L3_3 = "DialogStrings"
    L4_4 = _const
    L4_4 = L4_4.END_DIALOG
    L1_1(L2_2, L3_3, L4_4, 0)
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
  L1_1 = _util
  L1_1 = L1_1.SetVar
  L2_2 = "collided"
  L3_3 = 0
  L1_1(L2_2, L3_3)
  L1_1 = _id
  L1_1 = L1_1.Inventory_PuffleRed
  if L0_0 == L1_1 then
    L1_1 = _util
    L1_1 = L1_1.SetSuccess
    L2_2 = _util
    L2_2 = L2_2.GetSelf
    L2_2 = L2_2()
    L3_3 = true
    L1_1(L2_2, L3_3)
  else
    L1_1 = _id
    L1_1 = L1_1.Inventory_PuffleBlack
    if L0_0 == L1_1 then
      L1_1 = _util
      L1_1 = L1_1.SetSuccess
      L2_2 = _util
      L2_2 = L2_2.GetSelf
      L2_2 = L2_2()
      L3_3 = true
      L1_1(L2_2, L3_3)
    else
      L1_1 = _id
      L1_1 = L1_1.Inventory_PufflePink
      if L0_0 == L1_1 then
        L1_1 = _util
        L1_1 = L1_1.SetSuccess
        L2_2 = _util
        L2_2 = L2_2.GetSelf
        L2_2 = L2_2()
        L3_3 = true
        L1_1(L2_2, L3_3)
      else
        L1_1 = _id
        L1_1 = L1_1.Inventory_MechanoDuster
        if L0_0 == L1_1 then
          L1_1 = _util
          L1_1 = L1_1.AddMonologue
          L2_2 = 3344
          L1_1(L2_2)
        else
          L1_1 = _id
          L1_1 = L1_1.Inventory_RobotomyTool
          if L0_0 == L1_1 then
            L1_1 = _util
            L1_1 = L1_1.AddDialog
            L2_2 = 4811
            L3_3 = _const
            L3_3 = L3_3.END_DIALOG
            L4_4 = 0
            L1_1(L2_2, L3_3, L4_4)
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
  L1_1 = _util
  L1_1 = L1_1.GetVar
  L2_2 = "collided"
  L1_1 = L1_1(L2_2)
  if L1_1 == 0 then
    L1_1 = _util
    L1_1 = L1_1.SetVar
    L2_2 = "collided"
    L3_3 = 1
    L1_1(L2_2, L3_3)
    L1_1 = 0
    L2_2 = 0
    function L3_3()
      _util.DisableInput()
      _util.PlaySFX(67)
      if _UPVALUE0_ == _id.Inventory_PuffleRed then
        _UPVALUE1_ = 70
      end
      repeat
        _UPVALUE2_ = _UPVALUE2_ + 1
        scriptWait()
      until _UPVALUE2_ >= _UPVALUE1_
      _util.SwitchState("fail", _util.GetSelf())
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_util.GetSelf())
      _util.EnableInput()
      if _UPVALUE0_ == _id.Inventory_PuffleRed then
        _util.AddDialog(3345, _const.CHANGE_DIALOG, 50)
        _util.PlaySFX(98)
      elseif _UPVALUE0_ == _id.Inventory_PufflePink then
        _util.AddDialog(3342, _const.CHANGE_DIALOG, 51)
        _util.PlaySFX(98)
      end
    end
    function L4_4()
      _util.DisableInput()
      _util.PlaySFX(55)
      _UPVALUE0_ = 50
      repeat
        _UPVALUE1_ = _UPVALUE1_ + 1
        scriptWait()
      until _UPVALUE1_ >= _UPVALUE0_
      _util.SetVar("robostatus", 4)
      _util.SetSpawn(1, _id.M5C1_Flit_Beach)
      _util.SetSpawn(1, _id.M5C1_SuperRobot_Beacon)
      _util.SetSpawn(1, _id.M5C1_Gary_Beacon)
      _util.SetVisible(0, _id.M5C1_Gary_Beacon)
      _util.SetSpawn(0, _id.M5C1_SuperRobot_Beach)
      _util.SetSpawn(0, _id.M5C1_Gary_Beach)
      _util.SetSpawn(0, _id.M5C1_SuperCart_Beach)
      _util.EnableInput()
      _util.StartCutscene(_const.M5C1BEACH)
      repeat
        scriptWait()
      until _util.GetGameState() ~= _const.MISSION
      repeat
        scriptWait()
      until _util.GetGameState() == _const.MISSION
      _util.SetExitLocked(_id.Doors_Beach2Light, false)
      _util.SetCursorPos(_util.GetX(_id.M5C1_Flit_Beach), _util.GetY(_id.M5C1_Flit_Beach))
      _util.RemoveMapAlert(_const.M5C1ROBOTBEACH)
      _util.AddMapAlert(_const.SUPER_ROBOT, 85, 220, _const.M5C1ROBOTBEACON, 62, 120)
    end
    if L0_0 == _id.Inventory_PuffleRed or L0_0 == _id.Inventory_PufflePink then
      scriptPlay(L3_3)
    elseif L0_0 == _id.Inventory_PuffleBlack then
      scriptPlay(L4_4)
    end
  end
end
