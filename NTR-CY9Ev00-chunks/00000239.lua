if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetExitLocked(_id.Doors_C1_HubRoom2River) == true then
    _util.AddPlayerThought(_text.M6_EXIT_LOCKED_CAVE)
  else
    _util.AddPlayerThought(_text.M6_EXIT_LOCKED_CAVE)
  end
end
