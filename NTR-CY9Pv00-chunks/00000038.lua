local L0_0, L1_1
L0_0 = _util
L0_0 = L0_0.GetActiveMission
L0_0 = L0_0()
L1_1 = _util
L1_1 = L1_1.GetActiveChapter
L1_1 = L1_1()
spypodCheck(L0_0, L1_1)
mapCheck(L0_0, L1_1)
if _util.GetVar("M8_Obj_navigateMaze") == 0 then
  _util.AddObjective(_text.M8_OBJ5)
  _util.SetVar("M8_Obj_navigateMaze", 1)
end
_util.SetVar("mazeDoors", 0)
if _util.GetVar("wrongTurn") == 1 then
  _util.SetCursorPos(215, 115)
  _util.SetVar("wrongTurn", 0)
end
