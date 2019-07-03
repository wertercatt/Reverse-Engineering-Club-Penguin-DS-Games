local L0_0, L1_1, L2_2
L0_0 = _util
L0_0 = L0_0.GetActiveMission
L0_0 = L0_0()
L1_1 = _util
L1_1 = L1_1.GetActiveChapter
L1_1 = L1_1()
L2_2 = spypodCheck
L2_2(L0_0, L1_1)
L2_2 = mapCheck
L2_2(L0_0, L1_1)
L2_2 = communicatorCheck
L2_2(L0_0, L1_1)
L2_2 = _util
L2_2 = L2_2.HideMap
L2_2()
if L0_0 == 1 then
  L2_2 = _util
  L2_2 = L2_2.GetVar
  L2_2 = L2_2("C1_Event")
  if L2_2 == _id.C1_puffleIntro then
    L2_2 = _util
    L2_2 = L2_2.SetCursorPos
    L2_2(_util.GetX(_id.M1_TC_PuffleHandler), _util.GetY(_id.M1_TC_PuffleHandler))
    L2_2 = _util
    L2_2 = L2_2.ActivateNpc
    L2_2(_id.M1_TC_PuffleHandler, 0)
  else
    L2_2 = _util
    L2_2 = L2_2.GetVar
    L2_2 = L2_2("C1_PuffleHitTarget1")
    if L2_2 == 1 then
      L2_2 = _util
      L2_2 = L2_2.GetVar
      L2_2 = L2_2("C1_PuffleHitTarget2")
      if L2_2 == 1 then
        L2_2 = _util
        L2_2 = L2_2.GetVar
        L2_2 = L2_2("C1_PuffleHitTarget3")
        if L2_2 == 1 then
          function L2_2()
            _util.MarkObjComplete(_text.C1_OBJ1)
            _util.DisableInput()
            _util.SetVar("C1_PuffleHitTarget1", 2)
            _util.AddItem(_id.M1_T7_Dot2)
            _util.PushCamera(_id.M1_T7_Dot2)
            _util.AddItem(_id.M1_TC_PuffleHandler)
            _util.SwitchState("walk", _id.M1_T7_Dot2)
            repeat
              scriptWait()
            until not _util.IsAnimPlaying(_id.M1_T7_Dot2)
            _util.PopCamera(_id.M1_T7_Dot2)
            _util.AddItem(_id.M1_T7_JPG2)
            _util.PushCamera(_id.M1_T7_JPG2)
            _util.SwitchState("fly", _id.M1_T7_JPG2)
            repeat
              scriptWait()
            until not _util.IsAnimPlaying(_id.M1_T7_JPG2)
            _util.AddItem(_id.M1_T7_Rookie2)
            _util.SwitchState("walk", _id.M1_T7_Rookie2)
            repeat
              scriptWait()
            until not _util.IsAnimPlaying(_id.M1_T7_Rookie2)
            _util.PopCamera(_id.M1_T7_Rookie2)
            _util.EnableInput(true)
            _util.ActivateNpc(_id.M1_TC_PuffleHandler, 8)
            _util.SetExitLocked(_id.Doors_PuffleTraining, true)
            _util.SetExitLocked(_id.Doors_C1_HubRoom2River, false)
          end
          scriptPlay(L2_2)
        end
      end
    end
  end
end
