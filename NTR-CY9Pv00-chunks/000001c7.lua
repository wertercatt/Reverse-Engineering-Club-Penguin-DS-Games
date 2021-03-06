if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.ITEM_DROPPED)
  _util.AddInterest(_const.COLLIDED)
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetVar("OctoFloat") == 1 then
    if _util.GetVar("OctoTaken") == 0 then
      _util.AddInventoryItem(_id.C4_InventoryItem_OctoFloat)
      _util.SetVar("OctoTaken", 1)
      _util.MarkSubObjComplete(_text.C4_OBJ2, _text.C4_2SUBOBJ1)
    end
    if _util.GetVar("WhaleFloat") == 1 and _util.GetVar("LifePreserv") == 1 then
      _util.SetVar("FoundAllInflatibles", 1)
    end
    _util.ChangeBaseAnim("MissionObjects/M4/floatFestival_empty", _id.C4_Attic_FestivalFloat)
  else
    _util.AddPlayerThought(_text.C4_ATTIC_BALLOON_TIED)
  end
end
if _util.GetReason() == _const.ITEM_DROPPED and _util.GetVar("OctoTaken") == 0 then
  if _util.GetSource() == _id.Inventory_ScissorsTool then
    _util.SetVar("OctoFloat", 1)
    _util.ChangeBaseAnim("MissionObjects/M4/floatFestival")
  elseif _util.GetSource() == _id.Inventory_PuffleKlutzy and _util.GetVar("OctoFloat") == 0 then
    _util.SetSuccess(_util.GetSelf(), true)
    _util.SetVar("OctoFloat", 1)
  elseif _util.GetVar("OctoFloat") == 0 then
    _util.AddPlayerThought(_text.C4_ATTIC_BALLOON_TIED)
  end
end
if _util.GetReason() == _const.COLLIDED and _util.GetSource() == _id.Inventory_PuffleKlutzy then
  _util.SetVar("OctoFloat", 1)
  _util.ChangeBaseAnim("MissionObjects/M4/floatFestival")
end
