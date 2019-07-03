if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.COMMUNICATOR)
end
if _util.GetReason() == _const.COMMUNICATOR then
  if _util.GetVar("M3C2_JPGGone") == 1 then
    if _util.GetComCount() == 0 then
      _util.AddComText(1782)
      _util.AddComOption(1783, _const.CHANGE_DIALOG, 1)
      _util.AddComOption(1784, _const.CHANGE_DIALOG, 2)
      _util.AddComOption(1785, _const.END_DIALOG, 0)
    elseif _util.GetComCount() == 1 then
      _util.AddComText(1786)
      _util.AddComOption(1788, _const.CHANGE_DIALOG, 3)
    elseif _util.GetComCount() == 2 then
      _util.AddComText(1787, _const.CHANGE_DIALOG, 0)
    elseif _util.GetComCount() == 3 then
      _util.AddComText(1789, _const.CHANGE_DIALOG, 0)
    end
  elseif _util.GetComCount() == 0 then
    _util.AddComText(1778)
    _util.AddComOption(1779, _const.CHANGE_DIALOG, 1)
  elseif _util.GetComCount() == 1 then
    _util.AddComText(1780, _const.CHANGE_DIALOG, 2)
  elseif _util.GetComCount() == 2 then
    _util.AddComOption(1781, _const.END_DIALOG, 0)
  end
end
