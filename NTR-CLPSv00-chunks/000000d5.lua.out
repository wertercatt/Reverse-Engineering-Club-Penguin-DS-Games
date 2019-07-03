if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.TOUCHED)
  _util.AddInterest(_const.ITEM_DROPPED)
  _util.AddInterest(_const.COLLIDED)
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 and _util.GetVar("M1C3_snowballCount") == 0 then
    _util.AddMonologue(660)
  elseif _util.GetConversationCount() == 1 then
    _util.AddMonologue(658, "DialogStrings", _const.CHANGE_DIALOG, 2)
  elseif _util.GetConversationCount() == 2 then
    _util.AddMonologue(659, "DialogStrings", _const.END_DIALOG, 0)
  end
end
if _util.GetReason() == _const.ITEM_DROPPED then
  if _util.GetSource() == _id.Inventory_PuffleBlue then
    _util.SetSuccess(_util.GetSelf(), true)
    _util.SetVar("M1C3_beingHit", 0)
  elseif _util.GetSource() == _id.Inventory_PuffleRed then
    _util.AddMonologue(663)
  end
end
if _util.GetReason() == _const.COLLIDED and _util.GetSource() == _id.Inventory_PuffleBlue and _util.GetVar("M1C3_beingHit") == 0 and _util.GetVar("M1C3_snowballCount") == 0 then
  _util.PlaySFX(57)
  _util.AddMonologue(662)
  _util.SwitchState("extinguished", _id.M1C3_Fire)
  _util.SwitchState("extinguished", _id.M1C3_Shelter)
  _util.AddItem(_id.M1C3_SurvivalGuideTorn)
  _util.SetExitLocked(_id.Doors_WildPuffle2Berry, false)
  _util.SetExitLocked(_id.Doors_WildPuffle2Cave, false)
  _util.SetExitLocked(_id.Doors_WildPuffle2Clearing, false)
  _util.SetVar("M1C3_fireOut", 1)
  _util.SetVar("M1C3_snowballCount", 1)
  _util.SetVar("M1C3_beingHit", 1)
end
