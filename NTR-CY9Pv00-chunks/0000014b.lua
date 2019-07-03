if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    _util.ActivateNpc(_id.C4_MineShackFlood_NPC_Gary, 0)
  elseif _util.GetConversationCount() == 1 then
    _util.AddNPCText(_text.C4_MS_DOT_6, _const.CHANGE_NPC, _id.C4_MineShackFlood_NPC_Rookie, 2)
  elseif _util.GetConversationCount() == 2 then
    if _util.GetVar("BalloonRepaired") == 0 then
      _util.SetVar("BalloonRepaired", 1)
      _util.SetSpawn(1, _id.C4_SkiVillage_Herb)
      _util.SetConversationCount(44, _id.C4_SkiVillage_Herb)
    end
    _util.AddNPCText(_text.C4_MS_DOT_7, _const.END_DIALOG, -1, 2)
  elseif _util.GetConversationCount() == 3 then
    _util.AddNPCText(_text.C4_MS_DOT_8, _const.CHANGE_NPC, _id.C4_MineShackFlood_NPC_JPG, 2)
  elseif _util.GetConversationCount() == 4 then
    _util.AddNPCText(_text.C4_MS_DOT_9, _const.CHANGE_NPC, _id.C4_MineShackFlood_NPC_Rookie, 6)
  elseif _util.GetConversationCount() == 5 then
    _util.AddNPCText(_text.C4_MS_DOT_10, _const.CHANGE_NPC, _id.C4_MineShackFlood_NPC_Rookie, 7)
  elseif _util.GetConversationCount() == 6 then
    _util.AddNPCText(_text.C4_GEYSER_DO_OVER_DOT, _const.END_DIALOG, -1, 6)
  elseif _util.GetConversationCount() == 7 then
    _util.AddNPCText(_text.C4_MS_DOT_8, _const.END_DIALOG, -1, 7)
  end
end
