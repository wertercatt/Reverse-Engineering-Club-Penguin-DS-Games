local L0_0, L1_1, L2_2
L0_0 = _util
L0_0 = L0_0.GetActiveMission
L0_0 = L0_0()
L1_1 = _util
L1_1 = L1_1.GetActiveChapter
L1_1 = L1_1()
L2_2 = setupItems
L2_2(L0_0, L1_1)
L2_2 = spypodCheck
L2_2(L0_0, L1_1)
L2_2 = mapCheck
L2_2(L0_0, L1_1)
L2_2 = communicatorCheck
L2_2(L0_0, L1_1)
L2_2 = _util
L2_2 = L2_2.GetVar
L2_2 = L2_2("C1_crossedRiver")
if L2_2 == 0 then
  function L2_2()
    _util.RemoveInventoryItem(_id.C1_InventoryItem_JackHammer)
    _util.DisableInput()
    _util.ChangeBaseAnim("NPC/M1/Rookie/RookieSwimming", _id.M1_T3_Rookie)
    _util.MarkObjComplete(_text.C1_OBJ4)
    _util.AddObjective(_text.C1_OBJ5)
    _util.SetPuffle(_id.Inventory_NoPuffle)
    _util.SetVar("C1_crossedRiver", 1)
    _util.ActivateNpc(_id.M1_T3_Rookie, 0)
  end
  scriptPlay(L2_2)
else
  L2_2 = _util
  L2_2 = L2_2.GetVar
  L2_2 = L2_2("c1_enteredCliffArea")
  if L2_2 == 1 then
    L2_2 = _util
    L2_2 = L2_2.DelItem
    L2_2(_id.M1_T3_Rookie)
    L2_2 = _util
    L2_2 = L2_2.DelItem
    L2_2(_id.M1_T3_Dot)
    L2_2 = _util
    L2_2 = L2_2.DelItem
    L2_2(_id.M1_T3_JPG)
  else
    L2_2 = _util
    L2_2 = L2_2.ChangeBaseAnim
    L2_2("NPC/M1/Rookie/RookieCrossRiver", _id.M1_T3_Rookie)
  end
end
