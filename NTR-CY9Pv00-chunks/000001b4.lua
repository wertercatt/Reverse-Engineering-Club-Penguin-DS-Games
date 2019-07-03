if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  _util.AddPlayerThought(_text.ALL_ATTIC_INFLATABLE_TOUCH)
end
