if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.ITEM_DROPPED)
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetVar("M1C3_introRookie") == 0 then
    if _util.GetConversationCount() == 0 then
      _util.AddConversation(677, 678, -1, _const.CHANGE_DIALOG, 1)
    elseif _util.GetConversationCount() == 1 then
      _util.AddConversation(679, 680, -1, _const.CHANGE_DIALOG, 2)
    elseif _util.GetConversationCount() == 2 then
      _util.AddDialog(681, _const.CHANGE_DIALOG, 3)
    elseif _util.GetConversationCount() == 3 then
      _util.AddConversation(682, 683, -1, _const.END_DIALOG, 0)
      _util.SetVar("M1C3_introRookie", 1)
      _util.SetVar("M1C3_uberVariable", 11)
    end
  elseif _util.GetVar("M1C3_introRookie") == 1 then
    if _util.GetVar("M1C3_calledDot") == 0 then
      _util.AddConversation(684, 685, -1, _const.END_DIALOG, 0)
    elseif _util.GetVar("M1C3_calledDot") == 1 then
      if _util.GetConversationCount() == 0 then
        _util.AddConversation(686, 687, -1, _const.CHANGE_DIALOG, 1)
        _util.AddItem(_id.M1C3_JetPackGuy_WR)
      elseif _util.GetConversationCount() == 1 then
        _util.PlaySFX(139)
        _util.AddConversation(688, 689, -1, _const.CHANGE_NPC, _id.M1C3_JetPackGuy_WR, 0)
        _util.DelItem(_util.GetSelf())
        _util.AddItem(_id.M1C3_RookieRiver2)
      end
    end
  end
end
if _util.GetReason() == _const.ITEM_DROPPED then
  if _util.GetSource() == _id.Inventory_PuffleRed then
    _util.AddMonologue(673)
  elseif _util.GetSource() == _id.Inventory_PuffleBlue then
    _util.AddMonologue(674)
  end
end
