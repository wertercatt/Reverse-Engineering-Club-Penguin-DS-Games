if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  _util.AddPlayerThought(_text.DOOR_GIFT2TOWN_LOCKED, _const.END_DIALOG, -1, 0)
end
