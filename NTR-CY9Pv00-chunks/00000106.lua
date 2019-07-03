if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED and _util.GetActiveMission() == 8 and _util.GetVar("C2_Event") ~= _id.C2_MeetAtForrest then
  _util.AddPlayerThought(_text.EXIT_LOCKED_WILDERNESS)
end
