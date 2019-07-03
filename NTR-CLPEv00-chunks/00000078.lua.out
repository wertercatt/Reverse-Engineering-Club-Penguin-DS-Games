if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetVar("FPMission_Started") ~= 0 and _util.GetVar("FPMission_Started") ~= 3 and _util.GetVar("FPM03_missionComplete") == 0 then
    _util.AddDialog(3700, _const.END_DIALOG, 0)
  elseif _util.GetConversationCount() == 0 and _util.GetVar("FPMission_Started") == 0 then
    _util.ActivateNpc(_id.FP03_NPC1_Forest, 0)
  elseif _util.GetConversationCount() == 1 then
    _util.AddDialog(3703, _const.CHANGE_NPC, _id.FP03_NPC1_Forest, 1)
  elseif _util.GetConversationCount() == 2 then
    _util.SetConversationCount(0)
    _util.AddDialog(3706, _const.CHANGE_NPC, _id.FP03_NPC1_Forest, 2)
  elseif _util.GetConversationCount() == 3 then
    _util.AddConversation(3715, 3716, -1, _const.CHANGE_DIALOG, 4)
  elseif _util.GetConversationCount() == 4 then
    _util.SetConversationCount(5)
    _util.AddConversation(3717, 3718, -1, _const.CHANGE_NPC, _id.FP03_NPC1_Forest, 7)
  elseif _util.GetConversationCount() == 5 then
    _util.AddLoopingConv(3726)
    _util.AddLoopingOption(3727, 3729, _const.UPDATE_LOOP)
    _util.AddLoopingOption(3728, -1, _const.CHANGE_DIALOG, 55)
  elseif _util.GetConversationCount() == 55 then
    _util.AddDialog(4746, _const.END_DIALOG, 5)
  elseif _util.GetConversationCount() == 6 then
    _util.AddConversation(3732, 3733, -1, _const.END_DIALOG, 6)
  elseif _util.GetConversationCount() == 7 then
    _util.AddDialog(3736, _const.CHANGE_NPC, _id.FP03_TourGuide_Forest, 1)
  elseif _util.GetConversationCount() == 8 then
    _util.SetConversationCount(9)
    _util.AddDialog(3740, _const.CHANGE_NPC, _id.FP03_TourGuide_Forest, 3)
  elseif _util.GetConversationCount() == 9 then
    _util.AddDialog(3747, _const.END_DIALOG, 9)
  end
end
