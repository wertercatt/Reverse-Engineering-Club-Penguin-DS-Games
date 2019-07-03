if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.TOUCHED)
  _util.AddInterest(_const.ITEM_DROPPED)
  _util.AddInterest(_const.COLLIDED)
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 and _util.GetVar("M1C2_spyPodCombined") == 0 then
    _util.AddMonologue(418)
  elseif _util.GetConversationCount() == 0 and _util.GetVar("M1C2_spyPodCombined") == 1 and _util.GetVar("M1C2_foundAntenna") == 0 then
    _util.AddMonologue(419)
  end
end
if _util.GetReason() == _const.ITEM_DROPPED then
  if _util.GetSource() == _id.Inventory_DecoderSpypod then
    _util.AddMonologue(420)
  elseif _util.GetSource() == _id.Inventory_PuffleBlue then
    _util.AddMonologue(422)
  elseif _util.GetSource() == _id.Inventory_PuffleRed and _util.GetVar("M1C2_spyPodCombined") == 0 then
    _util.AddMonologue(421)
  elseif _util.GetSource() == _id.Inventory_PuffleRed and _util.GetVar("M1C2_spyPodCombined") == 1 and _util.GetVar("M1C2_foundDecoder") == 0 then
    _util.SetSuccess(_util.GetSelf(), true)
  end
end
if _util.GetReason() == _const.COLLIDED and _util.GetSource() == _id.Inventory_PuffleRed and _util.GetVar("M1C2_foundDecoder") == 0 then
  _util.SetVar("M1C2_foundDecoder", 1)
  _util.PlaySFX(14)
  _util.AddItem(_id.M1C2_DecoderGadget)
  _util.SwitchState("smash", _util.GetSelf())
  _util.AddMonologue(423)
end
