if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.ITEM_DROPPED)
  _util.SetupParticleEffects(_util.GetX() - 80, _util.GetY() - 30, _const.PARTICLE_RUBBLE)
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    _util.AddDialog(3040, _const.CHANGE_DIALOG, 10)
    _util.PlaySFX(98)
  elseif _util.GetConversationCount() == 10 then
    _util.AddMonologue(3041, "DialogStrings", _const.END_DIALOG, 0)
  elseif _util.GetConversationCount() == 1 then
    _util.SetConversationCount(0)
    _util.AddConversation(3033, 3034, -1, _const.CHANGE_NPC, _id.M5C1_Dot_Town, 2)
    _util.PlaySFX(98)
  end
end
if _util.GetReason() == _const.ITEM_DROPPED then
  if _util.GetSource() == _id.Inventory_MechanoDuster then
    _util.AddMonologue(3042, "DialogStrings", _const.END_DIALOG, 0)
  elseif _util.GetSource() == _id.Inventory_RobotomyTool then
    _util.AddMonologue(3043, "DialogStrings", _const.CHANGE_NPC, _id.M5C1_Gary_Town, 10)
  end
end
