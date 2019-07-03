if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.ITEM_DROPPED)
  _util.AddInterest(_const.COMMUNICATOR)
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 and _util.GetVar("M1C2_introDirector") == 0 then
    _util.AddLoopingConv(354)
    _util.AddLoopingOption(356, 358, _const.CHANGE_DIALOG, 1)
    _util.AddLoopingOption(357, 360, _const.CHANGE_DIALOG, 40)
  elseif _util.GetConversationCount() == 40 then
    _util.SetConversationCount(0)
    _util.AddDialog(360, _const.CHANGE_NPC, _id.Screen_CR, 42)
  elseif _util.GetConversationCount() == 1 then
    _util.AddDialog(358, _const.CHANGE_DIALOG, 2)
  elseif _util.GetConversationCount() == 2 then
    _util.AddConversation(359, 362, -1, _const.CHANGE_DIALOG, 3)
  elseif _util.GetConversationCount() == 3 then
    _util.AddDialog(363, _const.CHANGE_DIALOG, 4)
  elseif _util.GetConversationCount() == 4 then
    _util.SetConversationCount(0)
    _util.AddDialog(364, _const.CHANGE_NPC, _id.Screen_CR, 42)
  elseif _util.GetConversationCount() == 5 and _util.GetVar("M1C2_introDirector") == 0 then
    _util.AddDialog(365, _const.END_DIALOG, 5)
  elseif _util.GetVar("M1C2_introDirector") == 1 and _util.GetConversationCount() < 20 then
    _util.AddDialog(367, _const.END_DIALOG, 5)
  end
end
if _util.GetReason() == _const.COMMUNICATOR then
  if _util.GetComCount() == 0 then
    _util.AddComText(425, _const.CHANGE_DIALOG, 21)
  elseif _util.GetComCount() == 21 then
    _util.AddComText(426, _const.CHANGE_DIALOG, 22)
  elseif _util.GetComCount() == 22 then
    _util.AddComText(427, _const.CHANGE_DIALOG, 23)
  elseif _util.GetComCount() == 23 then
    _util.AddComText(428)
    _util.AddComOption(429, _const.CHANGE_DIALOG, 24)
  elseif _util.GetComCount() == 24 then
    _util.AddComText(430, _const.END_DIALOG, 0)
    _util.SetVar("M1C2_LastCutscene", 1)
  end
end
