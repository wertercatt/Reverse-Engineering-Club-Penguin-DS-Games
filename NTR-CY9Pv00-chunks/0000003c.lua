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
if L3_3 == _const.TOUCHED and L2_2 == 100 then
  function L3_3()
    local L0_4, L1_5, L2_6, L3_7, L4_8, L5_9
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
    L3_7 = 1
    L0_4(L1_5, L2_6, L3_7)
    L0_4 = _util
    L0_4 = L0_4.SwitchState
    L1_5 = "float"
    L2_6 = _id
    L2_6 = L2_6.M8_TownTremors_Paper
    L3_7 = 1
    L0_4(L1_5, L2_6, L3_7)
    L0_4 = 720
    L1_5 = 111
    L2_6 = 180
    L3_7 = 344
    L4_8 = 45
    L5_9 = 100
    _util.MoveObject(_id.M8_TownTremors_PaperL, L0_4, L1_5, L2_6, 1)
    _util.MoveObject(_id.M8_TownTremors_Paper, L3_7, L4_8, L5_9, 1)
    repeat
      scriptWait()
      if L3_7 <= _util.GetX(_id.M8_TownTremors_Paper) and _util.GetVar("paperSpawnSet") == 0 then
        _util.SetVar("paperSpawnSet", 1)
        _util.SwitchState("", _id.M8_TownTremors_Paper, 1)
      end
    until L0_4 <= _util.GetX(_id.M8_TownTremors_PaperL)
    _util.PopCamera()
    _util.SetConversationCount(0)
    _util.SetVar("townPaper", 1)
    _util.SetSpawn(1, _id.M8_snowFort_Paper)
    _util.SetSpawn(1, _id.M8_Town0_Paper)
    _util.EnableInput()
    _util.DelItem(_id.M8_TownTremors_PaperL)
  end
  scriptPlay(L3_3)
end
