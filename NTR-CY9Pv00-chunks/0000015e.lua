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
if L0_0 == 3 then
  L2_2 = _util
  L2_2 = L2_2.GetVar
  L2_2 = L2_2("M6_WildernessCaveComplete")
  if L2_2 == 0 then
    L2_2 = _util
    L2_2 = L2_2.SetCursorPos
    L2_2(517, 156)
    L2_2 = _util
    L2_2 = L2_2.SetVar
    L2_2("M6_WildernessCaveComplete", 1)
    L2_2 = _util
    L2_2 = L2_2.MarkObjComplete
    L2_2(_text.M6_OBJ2)
    L2_2 = _util
    L2_2 = L2_2.AddObjective
    L2_2(_text.M6_OBJ3)
    L2_2 = _util
    L2_2 = L2_2.ActivateNpc
    L2_2(_id.M6_WildernessCave_Klutzy, 0)
  end
  L2_2 = _util
  L2_2 = L2_2.GetVar
  L2_2 = L2_2("M6_Obj_trappedByHerb")
  if L2_2 == 1 then
    function L2_2()
      _util.SetVar("M6_Obj_trappedByHerb", 2)
      _util.MarkObjComplete(_text.M6_OBJ3)
      _util.AddItem(_id.M6_Door2Cave)
    end
    scriptPlay(L2_2)
  end
end
if L0_0 == 8 then
  L2_2 = _util
  L2_2 = L2_2.AddItem
  L2_2(_id.C2_Wilderness_JPG)
  L2_2 = _util
  L2_2 = L2_2.SetExitLocked
  L2_2(_id.Doors_Wilderness2River_L, false)
  L2_2 = _util
  L2_2 = L2_2.GetVar
  L2_2 = L2_2("c2_talkToJpg")
  if L2_2 == 1 then
    L2_2 = _util
    L2_2 = L2_2.AddItem
    L2_2(_id.C2_Wilderness_Dot)
    L2_2 = _util
    L2_2 = L2_2.ActivateNpc
    L2_2(_id.C2_Wilderness_JPG, 0)
    L2_2 = _util
    L2_2 = L2_2.SetVar
    L2_2("c2_talkToJpg", 1)
  end
end
