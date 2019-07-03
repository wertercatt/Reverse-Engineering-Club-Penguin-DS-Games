if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED and _util.GetVar("gotHammer") == 0 then
  _util.AddInventoryItem(33599)
  _util.SetVar("gotHammer", 1)
  _util.DelItem(_util.GetSelf())
end
