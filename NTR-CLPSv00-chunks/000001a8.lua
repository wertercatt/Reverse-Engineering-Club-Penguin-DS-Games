count = _util.GetActiveItemCount()
if count == 0 then
  _util.AddDialog(9)
  _util.AddDialogButton(0, 10)
  _util.AddDialogButton(1, 11)
  _util.SetActiveItemCount(1)
elseif count == 1 then
  _util.AddDialog(5)
  _util.AddDialogButton(0, 5)
end
