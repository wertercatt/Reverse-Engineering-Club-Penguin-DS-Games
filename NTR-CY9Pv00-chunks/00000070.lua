if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.COMMUNICATOR)
end
if _util.GetReason() == _const.COMMUNICATOR then
  if _util.GetComCount() == 0 then
    _util.AddComText(_text.C2_CAVE_EXT_DOT_1)
    _util.AddComOption(_text.C2_CAVE_EXT_A_2, _const.CHANGE_DIALOG, 1)
  elseif _util.GetComCount() == 1 then
    _util.AddObjective(_text.C2_OBJ4)
    _util.AddSubObjective(_text.C2_OBJ4, _text.C2_4SUBOBJ1)
    _util.AddNPCTextComm(_text.C2_CAVE_EXT_DOT_2, _const.END_DIALOG, -1, 1)
  elseif _util.GetComCount() == 2 then
    _util.SetVar("C2_DotComm", 1)
    _util.AddComText(_text.C2_COMM_DOT_1)
    _util.AddComOption(_text.C2_COMM_A_5, _const.CHANGE_DIALOG, 3)
  elseif _util.GetComCount() == 3 then
    _util.MarkObjComplete(_text.C2_OBJ4)
    _util.AddNPCTextComm(_text.C2_COMM_DOT_2, _const.END_DIALOG, -1, 2)
  end
end
