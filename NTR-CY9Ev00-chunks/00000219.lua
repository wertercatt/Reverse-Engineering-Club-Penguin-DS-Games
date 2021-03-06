if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.ITEM_DROPPED)
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    if _util.GetVar("HerbertFound") == 0 or _util.GetVar("M8_snowFort") ~= 2 then
      _util.AddDialog(_text.M8_PLAZA_NEWSPAPERNPC_GREET1, _const.END_DIALOG, 0)
    else
      _util.AddDialog(_text.M8_PLAZA_NEWSPAPERNPC_GREET1, _const.CHANGE_DIALOG, 1)
    end
  elseif _util.GetConversationCount() == 1 then
    _util.AddLoopingConv(_text.M8_PLAZA_NEWSPAPERNPC_GREET2)
    _util.AddLoopingOption(_text.M8_PLAZA_NEWSPAPERNPCA_Q1, -1, _const.CHANGE_DIALOG, 3)
    _util.AddLoopingOption(_text.M8_PLAZA_NEWSPAPERNPCA_Q2, -1, _const.CHANGE_DIALOG, 4)
    _util.AddLoopingOption(_text.M8_PLAZA_NEWSPAPERNPCA_QUIT, -1, _const.CHANGE_DIALOG, 2)
  elseif _util.GetConversationCount() == 2 then
    _util.AddDialog(_text.M8_PLAZA_NEWSPAPERNPCA_QUITRESPONSE, _const.END_DIALOG, 1)
  elseif _util.GetConversationCount() == 3 then
    _util.AddDialog(_text.M8_PLAZA_NEWSPAPERNPCA_A1_2B, _const.CHANGE_DIALOG, 5)
  elseif _util.GetConversationCount() == 4 then
    _util.AddDialog(_text.M8_PLAZA_NEWSPAPERNPCA_A2_2B, _const.CHANGE_DIALOG, 5)
  elseif _util.GetConversationCount() == 5 then
    _util.AddSubObjective(_text.M8_OBJ2A, _text.M8_OBJ_2C)
    _util.SetVar("wantPizza", 1)
    _util.AddDialog(_text.M8_PLAZA_NEWSPAPERNPCA_B1, _const.END_DIALOG, 1)
  elseif _util.GetConversationCount() == 6 then
    _util.AddDialog(_text.M8_PLAZA_NEWSPAPERNPCB_QUITRESPONSE, _const.CHANGE_DIALOG, 8)
  elseif _util.GetConversationCount() == 7 then
    _util.AddDialog(_text.M8_PLAZA_NEWSPAPERNPCB_QUITRESPONSE2, _const.CHANGE_DIALOG, 8)
  elseif _util.GetConversationCount() == 8 then
    _util.MarkSubObjComplete(_text.M8_OBJ2A, _text.M8_OBJ_2C)
    _util.MarkObjComplete(_text.M8_OBJ2A)
    _util.AddInventoryItem(39020)
    _util.DelItem(38955)
    _util.AddItem(_id.M8_paperNPCPizza)
    _util.DelItem(_util.GetSelf())
  end
end
if _util.GetReason() == _const.ITEM_DROPPED and _util.GetSource() == 38697 then
  _util.RemoveInventoryItem(38697)
  _util.AddLoopingConv(_text.M8_PLAZA_NEWSPAPERNPC_GREET3)
  _util.AddLoopingOption(_text.M8_PLAZA_NEWSPAPERNPCB_QUIT1, -1, _const.CHANGE_DIALOG, 6)
  _util.AddLoopingOption(_text.M8_PLAZA_NEWSPAPERNPCB_QUIT2, -1, _const.CHANGE_DIALOG, 6)
  _util.AddLoopingOption(_text.M8_PLAZA_NEWSPAPERNPCB_QUIT3, -1, _const.CHANGE_DIALOG, 7)
end
