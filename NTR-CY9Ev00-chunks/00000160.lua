if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  _util.AddPlayerThought(_text.M5_ANALYZER_POLARSCREEN_TOUCH)
end
