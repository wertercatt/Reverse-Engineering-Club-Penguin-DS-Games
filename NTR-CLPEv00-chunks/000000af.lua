if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.TOUCHED)
  _util.AddInterest(_const.ITEM_DROPPED)
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetVar("M1C3_snowDecoded") == 0 then
    if _util.GetConversationCount() == 0 then
      _util.AddMonologue(659, "DialogStrings", _const.CHANGE_DIALOG, 1)
    elseif _util.GetConversationCount() == 1 then
      _util.AddMonologue(660, "DialogStrings", _const.END_DIALOG, 0)
    end
  elseif _util.GetVar("M1C3_snowDecoded") == 1 then
    if _util.GetConversationCount() == 0 then
      _util.AddMonologue(662, "DialogStrings", _const.CHANGE_DIALOG, 1)
    elseif _util.GetConversationCount() == 1 then
      _util.AddMonologue(663, "DialogStrings", _const.END_DIALOG, 0)
    end
  end
end
if _util.GetReason() == _const.ITEM_DROPPED and _util.GetSource() == _id.Inventory_DecoderSpypod then
  _util.StartMiniGame(_const.DECODER, 661)
  _util.SetVar("M1C3_snowDecoded", 1)
end
