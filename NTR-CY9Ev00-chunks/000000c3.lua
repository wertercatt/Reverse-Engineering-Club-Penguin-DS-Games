if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.AFTER_DIALOG)
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    _util.AddNPCText(_text.M11_MANCALA_PENGUIN_GREET)
    if _util.GetVar("FindMancalaPieces") == 1 and _util.HasInventoryItem(_id.M11_Marbles2) then
      _util.AddPlayerOption(_text.M11_PPA_A_7, _const.CHANGE_DIALOG, -1, 2)
    elseif _util.GetVar("FindMancalaPieces") == 1 then
      _util.AddPlayerOption(_text.M11_PPA_TBP_6, _const.CHANGE_DIALOG, -1, 1)
    else
      _util.AddPlayerOption(_text.M11_MANCALA_PENGUIN_QUIT, _const.END_DIALOG, -1, 0)
    end
  elseif _util.GetConversationCount() == 1 then
    _util.AddNPCText(_text.M11_MANCALA_PENGUIN_6)
    _util.AddPlayerOption(_text.M11_PPA_A_7, _const.CHANGE_DIALOG, -1, 2)
  elseif _util.GetConversationCount() == 2 then
    _util.SetVar("FoundMancalaBoard", 1)
    if _util.HasInventoryItem(_id.M11_Marbles2) then
      _util.AddNPCText(_text.M11_MANCALA_PENGUIN_7)
      _util.AddPlayerOption(_text.M11_PPA_A_8_ALT, _const.END_DIALOG, -1, 3)
    else
      _util.AddNPCText(_text.M11_MANCALA_PENGUIN_7)
      _util.AddPlayerOption(_text.M11_PPA_A_8, _const.END_DIALOG, -1, 3)
    end
  elseif _util.GetConversationCount() == 3 then
    if _util.HasInventoryItem(_id.M11_Marbles2) then
      _util.AddNPCText(_text.M11_MANCALA_PENGUIN_7_2_ALT, _const.END_DIALOG, -1, 3)
    else
      _util.AddNPCText(_text.M11_MANCALA_PENGUIN_7_2, _const.END_DIALOG, -1, 3)
    end
  end
end
if _util.GetReason() == _const.AFTER_DIALOG and _util.GetVar("FoundMancalaBoard") == 1 then
  _util.SetVar("FoundMancalaBoard", 2)
  _util.AddInventoryItem(_id.M11_MancalaBoard)
  _util.DelItem(_id.M11_MancalaBoard)
end
