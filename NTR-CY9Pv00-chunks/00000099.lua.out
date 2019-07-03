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
    L0_4 = 311
    L1_5 = 163
    L2_6 = 100
    _util.MoveObject(38955, L0_4, L1_5, L2_6, 1)
    repeat
      scriptWait()
    until _util.GetX(38955) == L0_4
    repeat
      scriptWait()
    until 0 + 1 >= 30
    _util.PopCamera()
    _util.SetVar("plazaPaper", 1)
    _util.SwitchState("", _util.GetSelf())
    _util.DelItem(_util.GetSelf())
    _util.ChangeBaseAnim("NPC/MysteriousTremors/PaperNPC/PaperNPCMap", _id.M8_Town0_PaperGuy)
    _util.EnableInput()
  end
  _util.SetConversationCount(0)
  scriptPlay(L3_3)
end
