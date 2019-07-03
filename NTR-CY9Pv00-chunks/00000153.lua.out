local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
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
  L3_3 = L3_3.GetSelf
  L3_3 = L3_3()
  L4_4 = _id
  L4_4 = L4_4.M1_Target01
  if L3_3 == L4_4 then
    L3_3 = _util
    L3_3 = L3_3.GetVar
    L4_4 = "C1_PuffleHitTarget2"
    L3_3 = L3_3(L4_4)
    if L3_3 == 0 then
      L3_3 = _util
      L3_3 = L3_3.AddPlayerThought
      L4_4 = _text
      L4_4 = L4_4.C1_TRAINING_TARGETS
      L3_3(L4_4)
    end
  else
    L3_3 = _util
    L3_3 = L3_3.GetSelf
    L3_3 = L3_3()
    L4_4 = _id
    L4_4 = L4_4.M1_Target02
    if L3_3 == L4_4 then
      L3_3 = _util
      L3_3 = L3_3.GetVar
      L4_4 = "C1_PuffleHitTarget3"
      L3_3 = L3_3(L4_4)
      if L3_3 == 0 then
        L3_3 = _util
        L3_3 = L3_3.AddPlayerThought
        L4_4 = _text
        L4_4 = L4_4.C1_TRAINING_TARGETS
        L3_3(L4_4)
      end
    end
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
    L5_5 = _util
    L5_5 = L5_5.GetSelf
    L5_5 = L5_5()
    L4_4(L5_5, true)
  else
    L4_4 = _id
    L4_4 = L4_4.Inventory_PuffleRed
    if L3_3 == L4_4 then
      L4_4 = _util
      L4_4 = L4_4.AddPlayerThought
      L5_5 = _text
      L5_5 = L5_5.C1_TRAINING_TARGETS_NO_RED
      L4_4(L5_5)
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
  L4_4 = _util
  L4_4 = L4_4.GetSelf
  L4_4 = L4_4()
  L5_5 = _id
  L5_5 = L5_5.Inventory_PuffleBlue
  if L3_3 == L5_5 then
    function L5_5()
      if _UPVALUE0_ == _id.M1_Target01 then
        if _util.GetVar("C1_PuffleHitTarget2") == 1 then
          return
        end
        _util.DisableInput()
        _util.SwitchState("Smash", _id.M1_Target01)
        repeat
          scriptWait()
        until not _util.IsAnimPlaying(_id.M1_Target01)
        _util.ChangeBaseAnim("MissionObjects/M1/TargetSmashed", _id.M1_Target01)
        _util.SetVar("C1_PuffleHitTarget2", 1)
        _util.ChangeBaseAnim("MissionObjects/M1/targetLight", _id.C1_TargetLight1, "on")
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
        _util.EnableInput(true)
      elseif _UPVALUE0_ == _id.M1_Target02 then
        if _util.GetVar("C1_PuffleHitTarget3") == 1 then
          return
        end
        _util.DisableInput()
        _util.SwitchState("Smash", _id.M1_Target02)
        repeat
          scriptWait()
        until not _util.IsAnimPlaying(_id.M1_Target02)
        _util.ChangeBaseAnim("MissionObjects/M1/TargetSmashed", _id.M1_Target02)
        _util.SetVar("C1_PuffleHitTarget3", 1)
        _util.ChangeBaseAnim("MissionObjects/M1/targetLight", _id.C1_TargetLight3, "on")
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
        _util.EnableInput(true)
      end
      if _util.GetVar("C1_PuffleHitTarget1") == 1 and _util.GetVar("C1_PuffleHitTarget2") == 1 and _util.GetVar("C1_PuffleHitTarget3") == 1 then
        _util.MarkSubObjComplete(_text.C1_OBJ1, _text.C1_1SUBOBJ2)
        _util.AddSubObjective(_text.C1_OBJ1, _text.C1_1SUBOBJ3)
        _util.SetExitLocked(_id.Doors_C1_TrainingRoom, false)
        _util.AddPlayerThought(_text.C4_COMM_GARY_9D)
      end
    end
    scriptPlay(L5_5)
  end
end
