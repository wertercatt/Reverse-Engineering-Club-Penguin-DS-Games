if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    _util.AddMonologue(3322, "DialogStrings", _const.CHANGE_DIALOG, 1)
  elseif _util.GetConversationCount() == 1 then
    _util.AddMonologue(3323, "DialogStrings", _const.CHANGE_DIALOG, 2)
  elseif _util.GetConversationCount() == 2 then
    _util.AddMonologue(3324, "DialogStrings", _const.CHANGE_DIALOG, 3)
  elseif _util.GetConversationCount() == 3 then
    _util.EnablePuffle(_const.FLAG_BLACK)
    _util.DelItem(_util.GetSelf())
  end
end
