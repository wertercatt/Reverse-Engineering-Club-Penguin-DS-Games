if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.ITEM_DROPPED)
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    _util.AddLoopingConv(797)
    _util.AddLoopingOption(798, 800, _const.CHANGE_DIALOG, 1)
    _util.AddLoopingOption(799, -1, _const.CHANGE_DIALOG, 100)
  elseif _util.GetConversationCount() == 100 then
    _util.AddDialog(4358, _const.END_DIALOG, 0)
  elseif _util.GetConversationCount() == 1 then
    _util.SetVar("M2C1_talkPizza", 1)
    _util.AddLoopingConv(800)
    _util.AddLoopingOption(801, 802, _const.CHANGE_DIALOG, 2)
  elseif _util.GetConversationCount() == 2 then
    _util.AddLoopingConv(802)
    _util.AddLoopingOption(803, 805, _const.UPDATE_LOOP)
    _util.AddLoopingOption(804, -1, _const.CHANGE_DIALOG, 101)
  elseif _util.GetConversationCount() == 101 then
    _util.AddDialog(4359, _const.END_DIALOG, 0)
  end
end
if _util.GetReason() == _const.ITEM_DROPPED and _util.GetSource() == _id.Inventory_Dossier then
  _util.AddConversation(806, -1, -1, _const.END_DIALOG, 0)
end
if _util.GetReason() == _const.COLLIDED then
end
