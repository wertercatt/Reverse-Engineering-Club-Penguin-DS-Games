if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.ITEM_DROPPED)
end
if _util.GetReason() == _const.TOUCHED then
  _util.AddMonologue(_text.M10_ROPE_NEEDED, "DialogStrings", _const.END_DIALOG, 0)
end
if _util.GetReason() == _const.ITEM_DROPPED and _util.GetSource() == _id.M10_Rope then
  _util.AddItem(_id.M10_BoxAndRope)
  _util.AddItem(_id.M10_PullyWithRope)
  _util.AddItem(_id.M10_CageAndRope)
  _util.SetVar("M10_ropeSet", 1)
  _util.RemoveInventoryItem(_id.M10_Rope)
  _util.DelItem(_id.M10_BOxNoRope)
  _util.DelItem(_id.M10_PullyNoRope)
  _util.DelItem(_id.M10_CageNoRope)
end
