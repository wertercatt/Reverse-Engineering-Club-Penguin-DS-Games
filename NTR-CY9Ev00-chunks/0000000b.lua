if _util.GetReason() == _const.TOUCHED and _util.GetExitLocked(_id.Doors_PlazaDoor2TheaterRight) == false then
  _util.AddPlayerThought(_text.EXIT_LOCKED_THEATER)
end
