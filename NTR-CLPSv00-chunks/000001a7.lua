if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetVar("flowersInv") < 4 then
    _util.AddInventoryItem(_id.FPM12_FlowerLowe)
    _util.IncVar("flowersInv")
    _util.DelItem(_util.GetSelf())
  else
    _util.AddMonologue(4091)
  end
end
