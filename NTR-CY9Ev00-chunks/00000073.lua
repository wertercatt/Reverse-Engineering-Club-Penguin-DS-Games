if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.ITEM_DROPPED)
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    _util.AddDialog(_text.M9_LODGE_NPC1_GREET_2NPC2, _const.CHANGE_NPC, _id.Lighthouse_NPC2, 1)
  elseif _util.GetConversationCount() == 1 then
    _util.AddLoopingConv(_text.M9_LODGE_NPC1_GREET2)
    _util.AddLoopingOption(_text.M9_LODGE_NPCA_Q1, -1, _const.CHANGE_NPC, _id.Lighthouse_NPC2, 2)
    _util.AddLoopingOption(_text.M9_LODGE_NPCA_Q2, -1, _const.CHANGE_NPC, _id.Lighthouse_NPC2, 3)
  elseif _util.GetConversationCount() == 2 then
    _util.AddConversation(_text.M9_LODGE_NPC1A_B, _text.M9_LODGE_NPC1B_Q1, -1, _const.CHANGE_DIALOG, 3)
  elseif _util.GetConversationCount() == 3 then
    _util.SetConversationCount(4)
    _util.AddDialog(_text.M9_LODGE_NPC1B_A1, _const.CHANGE_NPC, _id.Lighthouse_NPC2, 4)
  elseif _util.GetConversationCount() == 4 then
    if _util.GetVar("M9_foundPiece") == 0 then
      _util.AddConversation(_text.M9_LODGE_NPC1_GREET3, _text.M9_LODGE_NPC1C_Q1, -1, _const.CHANGE_DIALOG, 5)
    else
      _util.AddConversation(_text.M9_LODGE_NPC1_GREET3, _text.M9_LODGE_NPC2C_Q1_2, -1, _const.CHANGE_DIALOG, 5)
    end
  elseif _util.GetConversationCount() == 5 then
    _util.AddDialog(_text.M9_LODGE_NPC1C_A1, _const.END_DIALOG, 4)
  elseif _util.GetConversationCount() == 6 then
    _util.AddDialog(_text.M9_LODGE_NPC1_ITEM_DROP2, _const.CHANGE_DIALOG, 7)
  elseif conversationCoutn == 7 then
    _util.SetConversationCount(7)
    _util.AddDialog(_text.M9_LODGE_NPC1_ITEM_DROP2, _const.CHANGE_NPC, _id.Lighthouse_NPC2, 9)
  end
end
if _util.GetReason() == _const.ITEM_DROPPED and _util.GetSource() == _id.M9_ConnectFour7 then
  _util.AddDialog(_text.M9_LODGE_NPC1_ITEM_DROP, _const.CHANGE_NPC, _id.Lighthouse_NPC2, 8)
end
