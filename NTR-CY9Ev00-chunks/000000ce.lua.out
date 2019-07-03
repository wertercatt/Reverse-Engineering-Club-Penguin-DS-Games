if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.COMMUNICATOR)
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    _util.MarkObjComplete(_text.M9_OBJ3)
    _util.ChangeBaseAnim("NPC/SpySeek/Gary/GaryHQMap", _id.M9_GaryMapHQ)
    _util.AddLoopingConv(_text.M9_GADGETROOM_GREET2)
    _util.AddLoopingOption(_text.M9_GADGETROOM_GARYI_Q1, -1, _const.CHANGE_DIALOG, 40)
    _util.AddLoopingOption(_text.M9_GADGETROOM_GARYI_Q2, -1, _const.CHANGE_DIALOG, 41)
  elseif _util.GetConversationCount() == 40 then
    _util.AddDialog(_text.M9_GADGETROOM_GARYI_A_2B, _const.CHANGE_DIALOG, 41)
  elseif _util.GetConversationCount() == 41 then
    _util.AddLoopingConv(_text.M9_GADGETROOM_GARYI_B)
    _util.AddLoopingOption(_text.M9_GADGETROOM_GARYJ_Q1, -1, _const.CHANGE_DIALOG, 42)
    _util.AddLoopingOption(_text.M9_GADGETROOM_GARYJ_Q2, -1, _const.CHANGE_DIALOG, 43)
  elseif _util.GetConversationCount() == 42 then
    _util.AddDialog(_text.M9_GADGETROOM_GARYJ_A1_2B, _const.CHANGE_DIALOG, 44)
  elseif _util.GetConversationCount() == 43 then
    _util.AddDialog(_text.M9_GADGETROOM_GARYJ_A2_2B, _const.CHANGE_DIALOG, 44)
  elseif _util.GetConversationCount() == 44 then
    _util.SetVar("M9_SentToFindHB", 1)
    _util.AddDialog(_text.M9_GADGETROOM_GARYJ_B_2C, _const.CHANGE_DIALOG, 45)
    _util.SetItemEnabled(_id.M9_SpyCamera, 1)
    _util.AddObjective(_text.M9_OBJ_4)
  elseif _util.GetConversationCount() == 45 then
    _util.AddDialog(_text.M9_GADGETROOM_GARYJ_C, _const.END_DIALOG, 45)
    _util.ChangeBaseAnim("NPC/SpySeek/Gary/GaryHQMachine", _id.M9_GaryMapHQ)
    _util.SetVar("GrabCam", 1)
    _util.ClearObjective()
  end
end
if _util.GetReason() == _const.COMMUNICATOR then
  if _util.GetVar("M9_phonePlaced") == 0 then
    if _util.GetComCount() == 0 then
      _util.AddComText(_text.M9_COM_GARY_GREET2)
      _util.AddComOption(_text.M9_COM_GARYA_Q1, _const.CHANGE_DIALOG, 1)
      _util.AddComOption(_text.M9_COM_GARYA_Q2, _const.CHANGE_DIALOG, 1)
    elseif _util.GetComCount() == 1 then
      _util.AddComText(_text.M9_COM_GARYA_A1)
      _util.AddComOption(_text.M9_COM_GARYB_Q1, _const.CHANGE_DIALOG, 2)
    elseif _util.GetComCount() == 2 then
      _util.AddComText(_text.M9_COM_GARYB_A1_2B, _const.CHANGE_DIALOG, 3)
    elseif _util.GetComCount() == 3 then
      _util.AddObjective(_text.M9_OBJ_6)
      _util.AddSubObjective(_text.M9_OBJ_6, _text.M9_OBJ_6A)
      _util.AddComText(_text.M9_COM_GARYB_B1)
      _util.AddComOption(_text.M9_COM_GARYC_QUIT1, _const.CHANGE_DIALOG, 4)
      _util.AddComOption(_text.M9_COM_GARYC_QUIT2, _const.CHANGE_DIALOG, 4)
    elseif _util.GetComCount() == 4 then
      _util.AddComText(_text.M9_COM_GARYC_QUITRESPONSE, _const.END_DIALOG, 0)
    end
  else
    _util.SetVar("ReceivingTransmission", 1)
    _util.AddComText(_text.M9_COM_GARY_GREET3, _const.END_DIALOG, 0)
  end
end
