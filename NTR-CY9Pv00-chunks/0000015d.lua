if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    if _util.GetVar("RevealedDot") == 0 then
      _util.SetVar("RevealedDot", 1)
      _util.AddNPCText(_text.C3_TM_DOT_1, _const.CHANGE_DIALOG, -1, 1)
    end
  elseif _util.GetConversationCount() == 1 then
    _util.AddNPCText(_text.C3_TM_DOT_2, _const.CHANGE_DIALOG, -1, 2)
  elseif _util.GetConversationCount() == 2 then
    _util.AddNPCText(_text.C3_TM_DOT_3)
    _util.AddPlayerOption(_text.C3_TM_DOT_3A, _const.CHANGE_DIALOG, -1, 3)
    _util.AddPlayerOption(_text.C3_TM_DOT_3B, _const.CHANGE_DIALOG, -1, 3)
  elseif _util.GetConversationCount() == 3 then
    _util.AddNPCText(_text.C3_TM_DOT_4, _const.END_DIALOG, -1, 3)
  elseif _util.GetConversationCount() == 4 then
    _util.SetVar("SavedDot", 1)
    if _util.GetVar("SavedJPG") == 1 then
      _util.SetConversationCount(10, _id.C3_TM_Rookie)
      _util.MarkObjComplete(_text.C3_OBJ4)
      _util.AddNPCText(_text.C3_TM_DOT_5)
      _util.AddPlayerOption(_text.C3_TM_DOT_7, _const.CHANGE_DIALOG, -1, 10)
    else
      _util.AddNPCText(_text.C3_TM_DOT_5)
      _util.AddPlayerOption(_text.C3_TM_DOT_6, _const.CHANGE_DIALOG, -1, 7)
    end
  elseif _util.GetConversationCount() == 7 then
    _util.AddNPCText(_text.C3_TM_DOT_6A, _const.CHANGE_DIALOG, -1, 8)
  elseif _util.GetConversationCount() == 8 then
    if _util.GetVar("SavedJPG") == 0 then
      _util.AddNPCText(_text.C3_TM_DOT_8, _const.END_DIALOG, -1, 8)
    else
      _util.AddNPCText(_text.C3_TM_DOT_13, _const.END_DIALOG, -1, 10)
    end
  elseif _util.GetConversationCount() == 10 then
    _util.AddNPCText(_text.C3_TM_DOT_13, _const.END_DIALOG, -1, 10)
  end
end
