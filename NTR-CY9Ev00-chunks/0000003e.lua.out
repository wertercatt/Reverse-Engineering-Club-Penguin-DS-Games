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
L0_0 = L0_0.GetActiveMission
L0_0 = L0_0()
L1_1 = _util
L1_1 = L1_1.GetActiveChapter
L1_1 = L1_1()
L2_2 = _util
L2_2 = L2_2.GetConversationCount
L2_2 = L2_2()
L3_3 = _util
L3_3 = L3_3.GetReason
L3_3 = L3_3()
L4_4 = _const
L4_4 = L4_4.TOUCHED
if L3_3 == L4_4 then
  L3_3 = _util
  L3_3 = L3_3.GetVar
  L4_4 = "C1_PuffleHitTarget1"
  L3_3 = L3_3(L4_4)
  if L3_3 == 0 then
    L3_3 = _util
    L3_3 = L3_3.AddPlayerThought
    L4_4 = _text
    L4_4 = L4_4.C1_TRAINING_TARGETS
    L3_3(L4_4)
  end
end
L3_3 = _util
L3_3 = L3_3.GetReason
L3_3 = L3_3()
L4_4 = _const
L4_4 = L4_4.ITEM_DROPPED
if L3_3 == L4_4 then
  L3_3 = _util
  L3_3 = L3_3.GetSource
  L3_3 = L3_3()
  L4_4 = _id
  L4_4 = L4_4.Inventory_PuffleBlue
  if L3_3 == L4_4 then
    L4_4 = _util
    L4_4 = L4_4.SetSuccess
    L4_4(_util.GetSelf(), true)
  else
    L4_4 = _id
    L4_4 = L4_4.Inventory_PuffleRed
    if L3_3 == L4_4 then
      L4_4 = _util
      L4_4 = L4_4.AddPlayerThought
      L4_4(_text.C1_TRAINING_TARGETS_NO_RED)
    end
  end
end
L3_3 = _util
L3_3 = L3_3.GetReason
L3_3 = L3_3()
L4_4 = _const
L4_4 = L4_4.COLLIDED
if L3_3 == L4_4 then
  L3_3 = _util
  L3_3 = L3_3.GetSource
  L3_3 = L3_3()
  L4_4 = _id
  L4_4 = L4_4.Inventory_PuffleBlue
  if L3_3 == L4_4 then
    function L4_4()
      if _util.GetVar("C1_PuffleHitTarget1") == 1 then
        return
      end
      _util.SetVar("C1_PuffleHitTarget1", 1)
      _util.ChangeBaseAnim("MissionObjects/M1/targetLight", _id.C1_TargetLight2, "on")
      _util.ChangeBaseAnim("MissionObjects/M1/hangTarget", _id.M1_HangingTarget01, "Smash")
      _util.DisableInput()
      if _util.GetVar("C1_Targetlight") == 0 then
        _util.PushCamera(_id.C1_DoorTargetLight1)
        repeat
          scriptWait()
        until _util.GetCameraTopLeftX() <= _util.GetX(_id.C1_DoorTargetLight1) - 64
        _util.ChangeBaseAnim("MissionObjects/M1/doorLight", _id.C1_DoorTargetLight1, "on")
        repeat
          scriptWait()
        until 0 >= 90 - 1
        _util.PopCamera(_id.C1_DoorTargetLight1)
        _util.SetVar("C1_Targetlight", 1)
      elseif _util.GetVar("C1_Targetlight") == 1 then
        _util.ChangeBaseAnim("MissionObjects/M1/doorLight", _id.C1_DoorTargetLight2, "on")
        _util.SetVar("C1_Targetlight", 2)
      elseif _util.GetVar("C1_Targetlight") == 2 then
        _util.ChangeBaseAnim("MissionObjects/M1/doorLight", _id.C1_DoorTargetLight3, "on")
        _util.SetVar("C1_Targetlight", 3)
      end
      _util.SwitchState("Smash", _util.GetSelf())
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_util.GetSelf())
      _util.ChangeBaseAnim("MissionObjects/M1/hangTargetSmashed", _util.GetSelf())
      _util.EnableInput(true)
      if _util.GetVar("C1_PuffleHitTarget1") == 1 and _util.GetVar("C1_PuffleHitTarget2") == 1 and _util.GetVar("C1_PuffleHitTarget3") == 1 then
        _util.MarkObjComplete(_text.C1_OBJ1)
        _util.SetExitLocked(_id.Doors_C1_TrainingRoom, false)
        _util.AddPlayerThought(_text.C4_COMM_GARY_9D)
      end
    end
    scriptPlay(L4_4)
  end
end
