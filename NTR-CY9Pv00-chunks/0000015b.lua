if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED and _util.GetVar("takeBarrel") == 1 then
  _util.AddInventoryItem(42298)
  _util.SetVar("takeBarrel", 2)
end
