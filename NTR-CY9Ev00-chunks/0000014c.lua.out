if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.ITEM_DROPPED)
end
if _util.GetReason() == _const.TOUCHED and _util.GetVar("M11_Maze3_LadderDown") == 0 then
  _util.AddMonologue(_text.M7_MAZE_FIRE, "DialogStrings", _const.END_DIALOG, 0)
end
if _util.GetReason() == _const.ITEM_DROPPED and _util.GetVar("M11_Maze3_LadderDown") == 0 then
  if _util.GetSource() == _id.M11_AllKernelClues then
    _util.AddPlayerThought(_text.M11_MAZE_LADDERCORN_WRONG)
  elseif _util.GetSource() == _id.M11_KernelClue1 or _id.M11_KernelClue2 then
    _util.AddPlayerThought(_text.M11_MAZE_LADDERCORN_WRONG)
  end
end
