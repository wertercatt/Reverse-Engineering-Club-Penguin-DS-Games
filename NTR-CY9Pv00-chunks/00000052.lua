if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.AFTER_DIALOG)
  _util.AddInterest(_const.COMMUNICATOR)
end
if _util.GetReason() == _const.TOUCHED and _util.GetExitLocked(_id.Doors_LodgeDoor2Attic) == false then
  _util.AddPlayerThought(_text.EXIT_LOCKED_ATTIC)
end
