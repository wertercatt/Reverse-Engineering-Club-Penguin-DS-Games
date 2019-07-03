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
  L4_4 = "Pic1Taken"
  L3_3 = L3_3(L4_4)
  if L3_3 == 1 then
    L3_3 = _util
    L3_3 = L3_3.GetVar
    L4_4 = "Pic2Taken"
    L3_3 = L3_3(L4_4)
    if L3_3 == 1 then
      L3_3 = _util
      L3_3 = L3_3.GetVar
      L4_4 = "Pic3Taken"
      L3_3 = L3_3(L4_4)
      if L3_3 == 1 then
        L3_3 = _util
        L3_3 = L3_3.AddPlayerThought
        L4_4 = _text
        L4_4 = L4_4.HERBBASE_CAMERA_ALL
        L3_3(L4_4)
      end
    end
  else
    L3_3 = _util
    L3_3 = L3_3.GetSelf
    L3_3 = L3_3()
    L4_4 = _id
    L4_4 = L4_4.C2_CameraObject1
    if L3_3 == L4_4 then
      L3_3 = _util
      L3_3 = L3_3.GetVar
      L4_4 = "Pic1Taken"
      L3_3 = L3_3(L4_4)
      if L3_3 == 0 then
        L3_3 = _util
        L3_3 = L3_3.AddPlayerThought
        L4_4 = _text
        L4_4 = L4_4.HERBBASE_CAMERA_OBJECT
        L3_3(L4_4)
      else
        L3_3 = _util
        L3_3 = L3_3.AddPlayerThought
        L4_4 = _text
        L4_4 = L4_4.HERBBASE_CAMERA_ONE
        L3_3(L4_4)
      end
    else
      L3_3 = _util
      L3_3 = L3_3.GetSelf
      L3_3 = L3_3()
      L4_4 = _id
      L4_4 = L4_4.C2_CameraObject2A
      if L3_3 ~= L4_4 then
        L3_3 = _util
        L3_3 = L3_3.GetSelf
        L3_3 = L3_3()
        L4_4 = _id
        L4_4 = L4_4.C2_CameraObject2B
      else
        if L3_3 == L4_4 then
          L3_3 = _util
          L3_3 = L3_3.GetVar
          L4_4 = "Pic2Taken"
          L3_3 = L3_3(L4_4)
          if L3_3 == 0 then
            L3_3 = _util
            L3_3 = L3_3.AddPlayerThought
            L4_4 = _text
            L4_4 = L4_4.HERBBASE_CAMERA_OBJECT
            L3_3(L4_4)
          else
            L3_3 = _util
            L3_3 = L3_3.AddPlayerThought
            L4_4 = _text
            L4_4 = L4_4.HERBBASE_CAMERA_ONE
            L3_3(L4_4)
          end
      end
      else
        L3_3 = _util
        L3_3 = L3_3.GetSelf
        L3_3 = L3_3()
        L4_4 = _id
        L4_4 = L4_4.C2_CameraObject3A
        if L3_3 ~= L4_4 then
          L3_3 = _util
          L3_3 = L3_3.GetSelf
          L3_3 = L3_3()
          L4_4 = _id
          L4_4 = L4_4.C2_CameraObject3B
        elseif L3_3 == L4_4 then
          L3_3 = _util
          L3_3 = L3_3.GetVar
          L4_4 = "Pic3Taken"
          L3_3 = L3_3(L4_4)
          if L3_3 == 0 then
            L3_3 = _util
            L3_3 = L3_3.AddPlayerThought
            L4_4 = _text
            L4_4 = L4_4.HERBBASE_CAMERA_OBJECT
            L3_3(L4_4)
          else
            L3_3 = _util
            L3_3 = L3_3.AddPlayerThought
            L4_4 = _text
            L4_4 = L4_4.HERBBASE_CAMERA_ONE
            L3_3(L4_4)
          end
        end
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
  function L4_4()
    if _UPVALUE0_ == _id.C2_Camera and _util.GetSelf() == _id.C2_CameraObject1 then
      if _util.GetVar("Pic1Taken") == 0 then
        _util.DelItem(_id.C2_CameraZoom1)
        if _util.GetVar("Pic2Taken") == 0 and _util.GetVar("Pic3Taken") == 0 then
          _util.StartCutscene(_const.C2CAMERAPALM)
        elseif _util.GetVar("Pic2Taken") == 0 or _util.GetVar("Pic3Taken") == 0 then
          _util.StartCutscene(_const.C2CAMERAPALM2)
        else
          _util.StartCutscene(_const.C2CAMERAPALM3)
        end
        repeat
          scriptWait()
        until _util.GetGameState() ~= _const.MISSION
        repeat
          scriptWait()
        until _util.GetGameState() == _const.MISSION
        _util.IncVar("HaveTakenAllPics")
        _util.SetCursorPos(682, 102)
        if _util.GetVar("Pic2Taken") == 1 and _util.GetVar("Pic3Taken") == 1 then
          _util.MarkSubObjComplete(_text.C2_OBJ6, _text.C2_6SUBOBJ1)
          _util.AddPlayerThought(_text.HERBBASE_CAMERA_ALL)
        else
          _util.AddPlayerThought(_text.HERBBASE_CAMERA_DROP)
        end
        _util.SetVar("Pic1Taken", 1)
      end
    elseif _UPVALUE0_ == _id.C2_Camera and (_util.GetSelf() == _id.C2_CameraObject2A or _util.GetSelf() == _id.C2_CameraObject2B) then
      if _util.GetVar("Pic2Taken") == 0 then
        _util.DelItem(_id.C2_CameraZoom2)
        if _util.GetVar("Pic1Taken") == 0 and _util.GetVar("Pic3Taken") == 0 then
          _util.StartCutscene(_const.C2CAMERAWORKBENCH)
        elseif _util.GetVar("Pic1Taken") == 0 or _util.GetVar("Pic3Taken") == 0 then
          _util.StartCutscene(_const.C2CAMERAWORKBENCH2)
        else
          _util.StartCutscene(_const.C2CAMERAWORKBENCH3)
        end
        repeat
          scriptWait()
        until _util.GetGameState() ~= _const.MISSION
        repeat
          scriptWait()
        until _util.GetGameState() == _const.MISSION
        _util.IncVar("HaveTakenAllPics")
        _util.SetCursorPos(97, 118)
        if _util.GetVar("Pic1Taken") == 1 and _util.GetVar("Pic3Taken") == 1 then
          _util.MarkSubObjComplete(_text.C2_OBJ6, _text.C2_6SUBOBJ1)
          _util.AddPlayerThought(_text.HERBBASE_CAMERA_ALL)
        else
          _util.AddPlayerThought(_text.HERBBASE_CAMERA_DROP)
        end
        _util.SetVar("Pic2Taken", 1)
      end
    elseif _UPVALUE0_ == _id.C2_Camera and (_util.GetSelf() == _id.C2_CameraObject3A or _util.GetSelf() == _id.C2_CameraObject3B) and _util.GetVar("Pic3Taken") == 0 then
      _util.DelItem(_id.C2_CameraZoom3)
      if _util.GetVar("Pic1Taken") == 0 and _util.GetVar("Pic2Taken") == 0 then
        _util.StartCutscene(_const.C2CAMERASUPPLY)
      elseif _util.GetVar("Pic1Taken") == 0 or _util.GetVar("Pic2Taken") == 0 then
        _util.StartCutscene(_const.C2CAMERASUPPLY2)
      else
        _util.StartCutscene(_const.C2CAMERASUPPLY3)
      end
      repeat
        scriptWait()
      until _util.GetGameState() ~= _const.MISSION
      repeat
        scriptWait()
      until _util.GetGameState() == _const.MISSION
      _util.IncVar("HaveTakenAllPics")
      _util.SetCursorPos(104, 109)
      if _util.GetVar("Pic1Taken") == 1 and _util.GetVar("Pic2Taken") == 1 then
        _util.MarkSubObjComplete(_text.C2_OBJ6, _text.C2_6SUBOBJ1)
        _util.AddPlayerThought(_text.HERBBASE_CAMERA_ALL)
      else
        _util.AddPlayerThought(_text.HERBBASE_CAMERA_DROP)
      end
      _util.SetVar("Pic3Taken", 1)
    end
  end
  scriptPlay(L4_4)
end
