if _util.GetReason() == _const.TOUCHED and _util.GetExitLocked(_id.Doors_BeachDoor2Lighthouse) == false then
  _util.AddPlayerThought(_text.EXIT_LOCKED_LIGHTHOUSE)
end
