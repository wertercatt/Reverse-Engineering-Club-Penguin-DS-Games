if _util.GetReason() == _const.TOUCHED and _util.GetExitLocked(_id.Doors_BoilerDoor2Pool) == false then
  _util.AddPlayerThought(_text.GENERIC_LOCK_MESSAGE)
end
