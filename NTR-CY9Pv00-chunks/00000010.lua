if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.ITEM_DROPPED)
end
if _util.GetReason() == _const.TOUCHED and _util.GetConversationCount() == 0 then
  _util.AddDialog(_text.M8_PLAZA_NEWSPAPERNPC_GREET4, _const.END_DIALOG, 0)
end
if _util.GetReason() == _const.ITEM_DROPPED and _util.GetSource() == 38697 then
  _util.RemoveInventoryItem(38697)
  _util.AddLoopingConv(_text.M8_PLAZA_NEWSPAPERNPC_GREET3)
  _util.AddLoopingOption(_text.M8_PLAZA_NEWSPAPERNPCB_QUIT1, -1, _const.CHANGE_DIALOG, 6)
  _util.AddLoopingOption(_text.M8_PLAZA_NEWSPAPERNPCB_QUIT2, -1, _const.CHANGE_DIALOG, 6)
  _util.AddLoopingOption(_text.M8_PLAZA_NEWSPAPERNPCB_QUIT3, -1, _const.CHANGE_DIALOG, 7)
end
