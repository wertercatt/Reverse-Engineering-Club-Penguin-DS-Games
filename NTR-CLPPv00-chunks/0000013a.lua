if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  _util.AddDialog(3022, _const.END_DIALOG, 0)
end
