if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  _util.AddInventoryItem(_id.C4_InventoryItem_RubberDucky)
  _util.SetVar("RubberDuckyFloat", 1)
  if _util.GetVar("FreeFestivalFloat") == 1 and _util.GetVar("WhaleFloat") == 1 and _util.GetVar("OctoFloat") == 1 and _util.GetVar("LifePreserv") == 1 then
    _util.SetVar("FoundAllInflatibles", 1)
  end
  _util.DelItem(_util.GetSelf())
end
