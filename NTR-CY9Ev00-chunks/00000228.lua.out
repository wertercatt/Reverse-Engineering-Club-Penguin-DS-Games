if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.COMBINE)
end
if _util.GetReason() == _const.COMBINE and (_util.GetSource() == _id.M1_rope or _util.GetSource() == _id.M1_TC_anchor) then
  _util.RemoveInventoryItem(_id.M1_rope)
  _util.RemoveInventoryItem(_id.M1_TC_anchor)
  _util.AddInventoryItem(_id.C1_GrapplingHook)
  _util.SetCombinationSuccess(1)
  _util.SetVar("C1_RopeAndHookCombined", 1)
  if 1 <= _util.GetVar("C1_TrainingCave4Entered") then
    _util.MarkSubObjComplete(_text.C1_OBJ6, _text.C1_6SUBOBJ1)
  end
end
