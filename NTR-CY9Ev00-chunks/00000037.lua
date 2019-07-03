if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.COMMUNICATOR)
  _util.AddInterest(_const.ITEM_DROPPED)
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    if _util.GetVar("M6_overMountain") == 1 then
      _util.AddLoopingConv(_text.M6_GADGETROOM_GREET2)
      _util.AddLoopingOption(_text.M6_GADGETROOM_GARYD_Q1, -1, _const.CHANGE_DIALOG, 15)
      _util.AddLoopingOption(_text.M6_GADGETROOM_GARYE_Q1, -1, _const.CHANGE_DIALOG, 17)
    else
      _util.AddLoopingConv(_text.M6_GADGETROOM_GREET)
      _util.AddLoopingOption(_text.M6_GADGETROOM_GARYA_Q1, -1, _const.CHANGE_DIALOG, 8)
      _util.AddLoopingOption(_text.M6_GADGETROOM_GARYA_Q2, -1, _const.CHANGE_DIALOG, 9)
      _util.AddLoopingOption(_text.M6_GADGETROOM_GARYA_Q3, -1, _const.CHANGE_DIALOG, 10)
    end
  elseif _util.GetConversationCount() == 8 then
    _util.AddDialog(_text.M6_GADGETROOM_GARYA_A1, _const.END_DIALOG, 0)
  elseif _util.GetConversationCount() == 9 then
    _util.AddDialog(_text.M6_GADGETROOM_GARYA_A2, _const.END_DIALOG, 0)
  elseif _util.GetConversationCount() == 10 then
    _util.AddLoopingConv(_text.M6_GADGETROOM_GARYA_A3_2B)
    _util.AddLoopingOption(_text.M6_GADGETROOM_GARYB_Q1, -1, _const.CHANGE_DIALOG, 11)
    _util.AddLoopingOption(_text.M6_GADGETROOM_GARYB_Q2, -1, _const.CHANGE_DIALOG, 12)
  elseif _util.GetConversationCount() == 11 then
    _util.AddDialog(_text.M6_GADGETROOM_GARYB_A1, _const.END_DIALOG, 0)
  elseif _util.GetConversationCount() == 12 then
    _util.AddLoopingConv(_text.M6_GADGETROOM_GARYB_A2_2C)
    _util.AddLoopingOption(_text.M6_GADGETROOM_GARYC_Q1, -1, _const.CHANGE_DIALOG, 13)
    _util.AddLoopingOption(_text.M6_GADGETROOM_GARYC_Q2, -1, _const.CHANGE_DIALOG, 14)
  elseif _util.GetConversationCount() == 13 then
    _util.AddDialog(_text.M6_GADGETROOM_GARYC_A1, _const.END_DIALOG, 0)
  elseif _util.GetConversationCount() == 14 then
    _util.AddDialog(_text.M6_GADGETROOM_GARYC_A2, _const.END_DIALOG, 0)
  elseif _util.GetConversationCount() == 15 then
    _util.AddDialog(_text.M6_GADGETROOM_GARYD_A1_2B, _const.CHANGE_DIALOG, 16)
  elseif _util.GetConversationCount() == 16 then
    _util.AddDialog(_text.M6_GADGETROOM_GARYD_B1, _const.END_DIALOG, 0)
  elseif _util.GetConversationCount() == 17 then
    _util.AddDialog(_text.M6_GADGETROOM_GARYE_A1_2B, _const.CHANGE_DIALOG, 18)
  elseif _util.GetConversationCount() == 18 then
    _util.AddDialog(_text.M6_GADGETROOM_GARYE_B1, _const.END_DIALOG, 0)
  end
end
if _util.GetReason() ~= _const.ITEM_DROPPED or _util.GetSource() == _id.M5_KluztyInventory then
end
