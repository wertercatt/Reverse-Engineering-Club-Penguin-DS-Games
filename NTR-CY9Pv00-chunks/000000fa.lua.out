if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.ITEM_DROPPED)
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    _util.ActivateNpc(_id.Lighthouse_NPC2, 0)
  elseif _util.GetConversationCount() == 1 then
    _util.AddDialog(_text.M9_LODGE_NPC2_GREET_2NPC1, _const.CHANGE_NPC, _id.Lighthouse_NPC2, 1)
  elseif _util.GetConversationCount() == 2 then
    _util.AddDialog(_text.M9_LODGE_NPCA_A1_2B, _const.CHANGE_NPC, _id.Lighthouse_NPC2, 2)
  elseif _util.GetConversationCount() == 3 then
    _util.AddDialog(_text.M9_LODGE_NPCA_A2_2B, _const.CHANGE_NPC, _id.Lighthouse_NPC2, 2)
  elseif _util.GetConversationCount() == 4 then
    _util.AddDialog(_text.M9_LODGE_NPC2B_A1, _const.END_DIALOG, 5)
  elseif _util.GetConversationCount() == 5 then
    if _util.GetVar("M9_foundPiece") == 0 then
      _util.AddConversation(_text.M9_LODGE_NPC1_GREET3, _text.M9_LODGE_NPC1C_Q1, -1, _const.CHANGE_DIALOG, 6)
    else
      _util.AddConversation(_text.M9_LODGE_NPC1_GREET3, _text.M9_LODGE_NPC2C_Q1_2, -1, _const.CHANGE_DIALOG, 6)
    end
  elseif _util.GetConversationCount() == 6 then
    _util.AddDialog(_text.M9_LODGE_NPC1C_A1, _const.END_DIALOG, 5)
  elseif _util.GetConversationCount() == 7 then
    _util.ActivateNpc(_id.Lighthouse_NPC2, 7)
  elseif _util.GetConversationCount() == 8 then
    _util.AddDialog(_text.M9_LODGE_NPC1_ITEM_DROP2, _const.CHANGE_NPC, _id.Lighthouse_NPC2, 7)
  elseif _util.GetConversationCount() == 9 then
    _util.AddDialog(_text.M9_LODGE_NPC2_ITEM_DROP2, _const.END_DIALOG, 7)
  end
end
if _util.GetReason() == _const.ITEM_DROPPED and _util.GetSource() == _id.M9_ConnectFour7 then
  _util.AddDialog(_text.M9_LODGE_NPC1_ITEM_DROP, _const.CHANGE_NPC, _id.Lighthouse_NPC2, 6)
end
