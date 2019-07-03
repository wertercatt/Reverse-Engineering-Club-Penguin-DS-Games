if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.ITEM_DROPPED)
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 5 then
    _util.AddDialog(4739, _const.END_DIALOG, 0)
  elseif _util.GetVar("FP01_introRory") == 1 then
    if _util.GetVar("FP01_introBarista") == 0 and _util.GetVar("FP01_haveWrench") == 0 then
      if _util.GetConversationCount() == 0 then
        _util.AddConversation(3641, 3642, -1, _const.CHANGE_DIALOG, 1)
      elseif _util.GetConversationCount() == 1 then
        _util.AddConversation(3643, 3644, -1, _const.CHANGE_DIALOG, 2)
      elseif _util.GetConversationCount() == 2 then
        _util.AddConversation(3645, 3646, -1, _const.CHANGE_DIALOG, 3)
      elseif _util.GetConversationCount() == 3 then
        _util.AddDialog(4740, _const.END_DIALOG, 0)
        _util.SetVar("FP01_introBarista", 1)
      end
    elseif _util.GetVar("FP01_introBarista") == 1 and _util.GetVar("FP01_haveWrench") == 0 then
      if _util.GetConversationCount() == 0 then
        _util.AddConversation(3647, 3648, -1, _const.CHANGE_DIALOG, 1)
      elseif _util.GetConversationCount() == 1 then
        _util.AddDialog(4738, _const.END_DIALOG, 0)
      end
    elseif _util.GetVar("FP01_haveWrench") == 1 then
      if _util.GetConversationCount() == 0 then
        _util.AddConversation(3651, 3652, -1, _const.CHANGE_DIALOG, 1)
      elseif _util.GetConversationCount() == 1 then
        _util.AddDialog(4741, _const.END_DIALOG, 0)
      end
    end
  elseif _util.GetConversationCount() == 0 then
    _util.AddConversation(3651, 3652, -1, _const.CHANGE_DIALOG, 1)
  elseif _util.GetConversationCount() == 1 then
    _util.AddDialog(4741, _const.END_DIALOG, 0)
  end
end
if _util.GetReason() == _const.ITEM_DROPPED and _util.GetSource() == _id.FP01_Wrench and _util.GetVar("FP01_baristaWrench") == 0 then
  _util.AddConversation(3647, 3648, -1, _const.CHANGE_DIALOG, 5)
  _util.SetVar("FP01_baristaWrench", 1)
end
