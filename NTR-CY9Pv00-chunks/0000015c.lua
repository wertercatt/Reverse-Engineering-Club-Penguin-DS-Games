if _util.GetActiveMission() == 7 then
  if _util.GetVar("FindSignal") == 1 then
  end
  if _util.GetVar("WaitingForUnplugAction") == 0 then
    _util.AddItem(_id.M11_HerbertCornMaze)
    _util.ActivateNpc(_id.M11_HerbertCornMaze, 0)
  end
end
