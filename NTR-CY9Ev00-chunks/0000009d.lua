local L0_0, L1_1, L2_2, L3_3
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.CREATED
if L0_0 == L1_1 then
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
if L3_3 ~= _const.TOUCHED or L2_2 == 0 then
elseif L2_2 == 100 then
  function L3_3()
    local L0_4, L1_5, L2_6
    L0_4 = _util
    L0_4 = L0_4.DisableInput
    L0_4()
    L0_4 = _util
    L0_4 = L0_4.PushCamera
    L0_4()
    L0_4 = _util
    L0_4 = L0_4.SwitchState
    L1_5 = "float"
    L2_6 = _util
    L2_6 = L2_6.GetSelf
    L2_6 = L2_6()
    L0_4(L1_5, L2_6, L2_6())
    L0_4 = 293
    L1_5 = 29
    L2_6 = 100
    _util.MoveObject(_id.M8_snowFort_Paper, L0_4, L1_5, L2_6, 1)
    repeat
      scriptWait()
    until L0_4 <= _util.GetX(_id.M8_snowFort_Paper)
    repeat
      scriptWait()
    until 0 + 1 >= 30
    _util.PopCamera()
    _util.SetCursorPos(_util.GetX(_util.GetSelf()), _util.GetY(_util.GetSelf()))
    _util.SetVar("M8_snowFort", 1)
    _util.SwitchState("", _util.GetSelf())
    _util.EnableInput()
  end
  scriptPlay(L3_3)
  _util.SetConversationCount(200)
elseif L2_2 == 200 then
  function L3_3()
    local L0_7, L1_8, L2_9
    L0_7 = _util
    L0_7 = L0_7.DisableInput
    L0_7()
    L0_7 = _util
    L0_7 = L0_7.PushCamera
    L0_7()
    L0_7 = _util
    L0_7 = L0_7.SwitchState
    L1_8 = "float"
    L2_9 = _util
    L2_9 = L2_9.GetSelf
    L2_9 = L2_9()
    L0_7(L1_8, L2_9, L2_9())
    L0_7 = 635
    L1_8 = 86
    L2_9 = 100
    _util.MoveObject(_id.M8_snowFort_Paper, L0_7, L1_8, L2_9, 1)
    repeat
      scriptWait()
    until L0_7 <= _util.GetX(_id.M8_snowFort_Paper)
    _util.PopCamera()
    _util.SetVar("M8_snowFort", 2)
    _util.SwitchState("", _util.GetSelf())
    _util.EnableInput()
    _util.DelItem(_util.GetSelf())
  end
  scriptPlay(L3_3)
end
