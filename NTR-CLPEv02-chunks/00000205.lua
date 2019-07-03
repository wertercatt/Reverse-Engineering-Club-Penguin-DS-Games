local L0_0, L1_1, L2_2, L3_3
L0_0 = _util
L0_0 = L0_0.GetActiveMission
L0_0 = L0_0()
L1_1 = _util
L1_1 = L1_1.GetActiveChapter
L1_1 = L1_1()
L2_2 = _util
L2_2 = L2_2.GetReason
L2_2 = L2_2()
L3_3 = _const
L3_3 = L3_3.TOUCHED
if L2_2 == L3_3 then
  L2_2 = _util
  L2_2 = L2_2.GetConversationCount
  L2_2 = L2_2()
  if L2_2 == 0 then
    L3_3 = _util
    L3_3 = L3_3.GetSelf
    L3_3 = L3_3()
    if L3_3 == _id.Screen_CR then
      L3_3 = _util
      L3_3 = L3_3.AddMonologue
      L3_3(4328)
    end
  elseif L2_2 == 42 then
    function L3_3()
      _util.DisableInput()
      _util.SetCursorPos(_util.GetX(_util.GetSelf()), _util.GetY(_util.GetSelf()))
      _util.SetConversationCount(0)
      _util.SwitchState("", _util.GetSelf())
      _util.SwitchState("turnON", _util.GetSelf())
      _util.PlaySFX(19)
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_util.GetSelf())
      _util.AddItem(_id.ScreenOn_CR)
      _util.EnableInput()
      _util.ActivateNpc(_id.ScreenOn_CR, 423)
      _util.DelItem(_id.Screen_CR)
    end
    scriptPlay(L3_3)
  elseif L2_2 == 423 then
    if L0_0 == 1 and L1_1 == 2 then
      function L3_3()
        _util.DisableInput()
        _util.AddItem(_id.M1C2_Director_CR)
        _util.SetCursorPos(_util.GetX(_id.M1C2_Director_CR), _util.GetY(_id.M1C2_Director_CR))
        _util.SwitchState("turnON", _id.M1C2_Director_CR)
        repeat
          scriptWait()
        until not _util.IsAnimPlaying(_id.M1C2_Director_CR)
        _util.SwitchState("", _id.M1C2_Director_CR)
        _util.EnableInput()
        _util.SetConversationCount(0)
        if _util.GetVar("M1C2_LastCutscene") == 0 then
          _util.ActivateNpc(_id.M1C2_Director_CR, 0)
        elseif _util.GetVar("M1C2_LastCutscene") == 1 then
          _util.ActivateNpc(_id.M1C2_Director_CR, 19)
        end
      end
      scriptPlay(L3_3)
    elseif L0_0 == 1 and L1_1 == 3 then
      function L3_3()
        _util.DisableInput()
        _util.AddItem(_id.M1C3_Director)
        _util.SetCursorPos(_util.GetX(_id.M1C3_Director), _util.GetY(_id.M1C3_Director))
        _util.SwitchState("turnON", _id.M1C3_Director)
        repeat
          scriptWait()
        until not _util.IsAnimPlaying(_id.M1C3_Director)
        _util.SwitchState("", _id.M1C3_Director)
        _util.EnableInput()
        _util.SetConversationCount(0)
        _util.ActivateNpc(_id.M1C3_Director, 0)
      end
      scriptPlay(L3_3)
    elseif L0_0 == 2 and L1_1 == 1 then
      function L3_3()
        _util.DisableInput()
        _util.AddItem(_id.M2C1_Director)
        _util.SetCursorPos(_util.GetX(_id.M2C1_Director), _util.GetY(_id.M2C1_Director))
        _util.SwitchState("turnON", _id.M2C1_Director)
        repeat
          scriptWait()
        until not _util.IsAnimPlaying(_id.M2C1_Director)
        _util.SwitchState("", _id.M2C1_Director)
        _util.EnableInput()
        _util.SetConversationCount(0)
        _util.ActivateNpc(_id.M2C1_Director, 100)
      end
      scriptPlay(L3_3)
    elseif L0_0 == 2 and L1_1 == 3 then
      function L3_3()
        _util.DisableInput()
        _util.AddItem(_id.M2C3_Director)
        _util.SetCursorPos(_util.GetX(_id.M2C3_Director), _util.GetY(_id.M2C3_Director))
        _util.SwitchState("turnON", _id.M2C3_Director)
        repeat
          scriptWait()
        until not _util.IsAnimPlaying(_id.M2C3_Director)
        _util.SwitchState("", _id.M2C3_Director)
        _util.EnableInput()
        _util.SetConversationCount(0)
        _util.ActivateNpc(_id.M2C3_Director, 0)
      end
      scriptPlay(L3_3)
    elseif L0_0 == 3 and L1_1 == 1 then
      function L3_3()
        _util.DisableInput()
        _util.AddItem(_id.M3C1_Director)
        _util.SetCursorPos(_util.GetX(_id.M3C1_Director), _util.GetY(_id.M3C1_Director))
        _util.SwitchState("turnON", _id.M3C1_Director)
        repeat
          scriptWait()
        until not _util.IsAnimPlaying(_id.M3C1_Director)
        _util.SwitchState("", _id.M3C1_Director)
        _util.EnableInput()
        _util.SetConversationCount(0)
        _util.ActivateNpc(_id.M3C1_Director, 0)
      end
      scriptPlay(L3_3)
    elseif L0_0 == 3 and L1_1 == 3 then
      function L3_3()
        _util.DisableInput()
        _util.AddItem(_id.M3C3_Director)
        _util.SetCursorPos(_util.GetX(_id.M3C3_Director), _util.GetY(_id.M3C3_Director))
        _util.SwitchState("turnON", _id.M3C3_Director)
        repeat
          scriptWait()
        until not _util.IsAnimPlaying(_id.M3C3_Director)
        _util.SwitchState("", _id.M3C3_Director)
        _util.EnableInput()
        _util.SetConversationCount(0)
        _util.ActivateNpc(_id.M3C3_Director, 0)
      end
      scriptPlay(L3_3)
    elseif L0_0 == 5 and L1_1 == 1 then
      function L3_3()
        _util.DisableInput()
        _util.AddItem(_id.M5C1_Director)
        _util.SetCursorPos(_util.GetX(_id.M5C1_Director), _util.GetY(_id.M5C1_Director))
        _util.SwitchState("turnON", _id.M5C1_Director)
        repeat
          scriptWait()
        until not _util.IsAnimPlaying(_id.M5C1_Director)
        _util.SwitchState("", _id.M5C1_Director)
        _util.EnableInput()
        _util.SetConversationCount(0)
        _util.ActivateNpc(_id.M5C1_Director, 0)
      end
      scriptPlay(L3_3)
    end
  elseif L2_2 == 23 then
    if L0_0 == 1 and L1_1 == 2 then
      function L3_3()
        _util.DisableInput()
        _util.SwitchState("turnOFF", _id.M1C2_Director_CR)
        repeat
          scriptWait()
        until not _util.IsAnimPlaying(_id.M1C2_Director_CR)
        _util.DelItem(_id.M1C2_Director_CR)
        _util.EnableInput()
        _util.ActivateNpc(_id.ScreenOn_CR, 234)
      end
      scriptPlay(L3_3)
    elseif L0_0 == 2 and L1_1 == 1 then
      function L3_3()
        _util.DisableInput()
        _util.SwitchState("turnOFF", _id.M2C1_Director)
        repeat
          scriptWait()
        until not _util.IsAnimPlaying(_id.M2C1_Director)
        _util.DelItem(_id.M2C1_Director)
        _util.EnableInput()
        _util.ActivateNpc(_id.ScreenOn_CR, 234)
      end
      scriptPlay(L3_3)
    end
  elseif L2_2 == 234 then
    function L3_3()
      _util.DisableInput()
      _util.SetConversationCount(0)
      _util.SwitchState("turnOFF", _util.GetSelf())
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_util.GetSelf())
      _util.DelItem(_id.ScreenOn_CR)
      _util.AddItem(_id.Screen_CR)
      _util.SwitchState("", _id.Screen_CR)
      _util.EnableInput()
    end
    scriptPlay(L3_3)
  end
end
