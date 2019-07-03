if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.COMBINE)
end
if _util.GetReason() == _const.COMBINE then
  if _util.GetSource() == _id.M1C2_Antenna then
    _util.AddMonologue(402)
    _util.PlaySFX(154)
    _util.SetVar("M1C2_antennaCombined", 1)
    _util.EnableSpyPodFunc(_const.FLAG_COMMUNICATOR)
    _util.RemoveInventoryItem(_id.M1C2_Antenna)
    _util.SetCombinationSuccess(1)
  elseif _util.GetSource() == _id.Inventory_Duster then
    _util.AddMonologue(916)
    _util.PlaySFX(69)
    _util.SetVar("M2C1_dusterCombined", 1)
    _util.EnableSpyPodFunc(_const.FLAG_MECHANODUSTER)
    _util.RemoveInventoryItem(_id.Inventory_Duster)
    _util.SetCombinationSuccess(1)
  elseif _util.GetSource() == _id.Inventory_Flashlight then
    _util.EnableSpyPodFunc(_const.FLAG_FLASHLIGHT)
    _util.PlaySFX(69)
    _util.RemoveInventoryItem(_id.Inventory_Flashlight)
    _util.SetCombinationSuccess(1)
    _util.AddMonologue(1224)
    _util.SetVar("haveFlash", 2)
  elseif _util.GetSource() == _id.M1C2_DecoderGadget then
    _util.AddMonologue(424)
    _util.PlaySFX(69)
    _util.SetVar("M1C2_decoderCombined", 1)
    _util.EnableSpyPodFunc(_const.FLAG_DECODER)
    _util.RemoveInventoryItem(_id.M1C2_DecoderGadget)
    _util.SetCombinationSuccess(1)
  elseif _util.GetSource() == _id.M4C1_RobotomyGadget then
    _util.EnableSpyPodFunc(_const.FLAG_ROBOTOMY)
    _util.RemoveInventoryItem(_id.M4C1_RobotomyGadget)
    _util.SetCombinationSuccess(1)
  elseif _util.GetSource() == _id.M4C1_UnknownGadget then
    _util.SetVar("M4C1_attachedGadget", 1)
    _util.EnableSpyPodFunc(_const.FLAG_ROBOTOMY)
    _util.RemoveInventoryItem(_id.M4C1_UnknownGadget)
    _util.SetCombinationSuccess(1)
  end
end
