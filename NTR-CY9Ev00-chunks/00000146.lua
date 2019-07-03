if _util.GetActiveMission() == 3 then
  if _util.HasInventoryItem(_id.M6_RopeB) or _util.HasInventoryItem(_id.M6_GrapplingHook) then
    _util.DelItem(_id.M6_RopeA)
  elseif _util.GetVar("EscapedFromCave") == 1 then
  end
  if _util.GetVar("M6_Cave_wasSnowedIn") == 1 then
    _util.SetVar("M6_Cave_wasSnowedIn", 2)
  end
end
_util.SetCursorPos(130, 140)
