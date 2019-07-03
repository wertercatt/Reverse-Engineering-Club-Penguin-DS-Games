if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.ITEM_DROPPED)
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetVar("M1C3_uberVariable") < 4 then
    _util.AddConversation(644, -1, -1, _const.END_DIALOG, 0)
  elseif _util.GetVar("M1C3_uberVariable") == 4 then
    if _util.GetVar("M1C3_haveSoup") == 0 then
      if _util.GetConversationCount() == 0 then
        _util.AddConversation(647, 648, -1, _const.CHANGE_DIALOG, 1)
      elseif _util.GetConversationCount() == 1 then
        _util.AddConversation(649, 650, -1, _const.END_DIALOG, 0)
      end
    elseif _util.GetVar("M1C3_haveSoup") == 1 then
      _util.AddConversation(644, -1, -1, _const.END_DIALOG, 0)
    end
  end
end
