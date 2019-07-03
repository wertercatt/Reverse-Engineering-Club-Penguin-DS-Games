if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    _util.ActivateNpc(_id.C4_CommandRoom_NPC_Director, 0)
  elseif _util.GetConversationCount() == 1 then
    _util.AddNPCText(_text.C4_CR_JPG_1, _const.CHANGE_NPC, _id.C4_CommandRoom_NPC_Director, 8)
  elseif _util.GetConversationCount() == 2 then
    _util.AddNPCText(_text.C4_CR_JPG_2, _const.CHANGE_DIALOG, -1, 3)
  elseif _util.GetConversationCount() == 3 then
    _util.TriggerDGamerUnlockable(_const.DG_UNLOCKABLE_EPF_2_HAT)
    _util.TriggerDGamerHonor(_const.DG_HONOR_CLUB_PENGUION_SAVER)
    _util.EndMission()
  end
end
