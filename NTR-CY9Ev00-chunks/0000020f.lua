local L0_0, L1_1
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.CREATED
if L0_0 == L1_1 then
end
L0_0 = _util
L0_0 = L0_0.GetConversationCount
L0_0 = L0_0()
L1_1 = _util
L1_1 = L1_1.GetReason
L1_1 = L1_1()
if L1_1 == _const.TOUCHED and L0_0 == 0 then
  function L1_1()
    _util.DisableInput()
    _util.SwitchState("run", _id.M6_WildernessCliff_Klutzy)
    repeat
      scriptWait()
    until not _util.IsAnimPlaying(_id.M6_WildernessCliff_Klutzy)
    _util.SetSpawn(0, _id.M5_HQ_Klutzy)
    _util.SetSpawn(0, _id.M5_Sport_Klutzy)
    _util.SetSpawn(0, _id.M5_SkiHill_Klutzy)
    _util.EnableInput(true)
    _util.AddMonologue(_text.M6_LOSTMAP, "GameStrings")
    _util.MarkObjComplete(_text.M6_OBJ1)
    _util.AddObjective(_text.M6_OBJ2)
    _util.DelItem(_id.M6_WildernessCliff_Klutzy)
  end
  scriptPlay(L1_1)
end
