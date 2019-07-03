if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    _util.AddDialog(_text.M10_HQ_JPG_INTRO, _const.END_DIALOG, 0)
  elseif _util.GetConversationCount() == 1 then
    _util.SetConversationCount(100)
    _util.ChangeBaseAnim("NPC/WaddleSquad/Gary/gHQMeeting", _id.M10_GaryDrawing)
    _util.AddDialog(_text.M10_HQ_JPGA_A1_2ROOKIE, _const.CHANGE_NPC, _id.M10_HQRookie, 5)
  elseif _util.GetConversationCount() == 2 then
    _util.AddLoopingConv(_text.M10_HQ_JPGK_A)
    _util.AddLoopingOption(_text.M10_HQ_GARYK_Q1, -1, _const.CHANGE_NPC, _id.M10_GaryDrawing, 19)
    _util.AddLoopingOption(_text.M10_HQ_GARYK_Q2, -1, _const.CHANGE_NPC, _id.M10_GaryDrawing, 20)
  elseif _util.GetConversationCount() == 3 then
    _util.AddDialog(_text.M10_HQ_HERBERTC_A1_2B, _const.CHANGE_NPC, _id.M10_HQ_HerbCenter, 1)
  end
end
