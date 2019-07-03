if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.COMMUNICATOR)
end
if _util.GetReason() == _const.COMMUNICATOR then
  if _util.GetVar("M3C2_JPGGone") == 1 then
    if _util.GetComCount() == 0 then
      _util.AddComText(1815)
      _util.AddComOption(1816, _const.CHANGE_DIALOG, 1)
      _util.AddComOption(1817, _const.CHANGE_DIALOG, 2)
      _util.AddComOption(1818, _const.END_DIALOG, 0)
    elseif _util.GetComCount() == 1 then
      _util.AddComText(1819)
      _util.AddComOption(1821, _const.CHANGE_DIALOG, 3)
    elseif _util.GetComCount() == 2 then
      _util.AddComText(1820, _const.CHANGE_DIALOG, 0)
    elseif _util.GetComCount() == 3 then
      _util.AddComText(1822, _const.CHANGE_DIALOG, 0)
    end
  elseif _util.GetComCount() == 0 then
    _util.AddComText(1811)
    _util.AddComOption(1812, _const.CHANGE_DIALOG, 1)
  elseif _util.GetComCount() == 1 then
    _util.AddComText(1813, _const.CHANGE_DIALOG, 2)
  elseif _util.GetComCount() == 2 then
    _util.AddComOption(1814, _const.END_DIALOG, 0)
  end
end
