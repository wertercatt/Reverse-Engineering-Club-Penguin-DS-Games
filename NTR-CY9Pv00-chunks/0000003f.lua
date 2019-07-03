if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.AFTER_DIALOG)
  _util.AddInterest(_const.ITEM_DROPPED)
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    _util.ChangeBaseAnim("NPC/SpySeek/LodgeNPCs/lodgePlayY")
    _util.AddDialog(_text.M9_LODGE_NPC1_GREET_2NPC2, _const.CHANGE_DIALOG, 1)
  elseif _util.GetConversationCount() == 1 then
    _util.ChangeBaseAnim("NPC/SpySeek/LodgeNPCs/lodgePlay")
    _util.AddDialog(_text.M9_LODGE_NPC2_GREET_2NPC1, _const.CHANGE_DIALOG, 2)
  elseif _util.GetConversationCount() == 2 then
    _util.ChangeBaseAnim("NPC/SpySeek/LodgeNPCs/lodgePlayY")
    _util.AddLoopingConv(_text.M9_LODGE_NPC1_GREET2)
    _util.AddLoopingOption(_text.M9_LODGE_NPCA_Q1, -1, _const.CHANGE_DIALOG, 3)
    _util.AddLoopingOption(_text.M9_LODGE_NPCA_Q2, -1, _const.CHANGE_DIALOG, 4)
  elseif _util.GetConversationCount() == 3 then
    _util.ChangeBaseAnim("NPC/SpySeek/LodgeNPCs/lodgeNPCs")
    _util.AddDialog(_text.M9_LODGE_NPCA_A1_2B, _const.CHANGE_DIALOG, 5)
  elseif _util.GetConversationCount() == 4 then
    _util.ChangeBaseAnim("NPC/SpySeek/LodgeNPCs/lodgeNPCs")
    _util.AddDialog(_text.M9_LODGE_NPCA_A2_2B, _const.CHANGE_DIALOG, 5)
  elseif _util.GetConversationCount() == 5 then
    _util.ChangeBaseAnim("NPC/SpySeek/LodgeNPCs/lodgeNPCsY")
    _util.AddDialog(_text.M9_LODGE_NPC1A_B, _const.CHANGE_DIALOG, 50)
  elseif _util.GetConversationCount() == 50 then
    _util.ChangeBaseAnim("NPC/SpySeek/LodgeNPCs/lodgeNPCs")
    _util.AddConversation(_text.M9_LODGE_NPC2A_B, _text.M9_LODGE_NPC1B_Q1, -1, _const.CHANGE_DIALOG, 6)
  elseif _util.GetConversationCount() == 6 then
    _util.AddDialog(_text.M9_LODGE_NPC1B_A1, _const.CHANGE_DIALOG, 7)
    _util.ClearObjective()
  elseif _util.GetConversationCount() == 7 then
    _util.SetVar("TalkedtoConnect4Penguins", 1)
    _util.ChangeBaseAnim("NPC/SpySeek/LodgeNPCs/lodgeNPCsY")
    _util.AddDialog(_text.M9_LODGE_NPC2B_A1, _const.END_DIALOG, 8)
  elseif _util.GetConversationCount() == 8 then
    _util.ChangeBaseAnim("NPC/SpySeek/LodgeNPCs/lodgeNPCs")
    if _util.GetVar("M9_CombinePiece") == 0 then
      _util.AddConversation(_text.M9_LODGE_NPC1_GREET3, _text.M9_LODGE_NPC1C_Q1, -1, _const.CHANGE_DIALOG, 9)
    elseif _util.GetVar("M9_CombinePiece") == 8 then
      _util.AddConversation(_text.M9_LODGE_NPC1_GREET3, _text.M9_LODGE_NPC2C_Q1_3, -1, _const.CHANGE_DIALOG, 13)
    else
      _util.AddConversation(_text.M9_LODGE_NPC1_GREET3, _text.M9_LODGE_NPC2C_Q1_2, -1, _const.CHANGE_DIALOG, 9)
    end
  elseif _util.GetConversationCount() == 9 then
    _util.AddDialog(_text.M9_LODGE_NPC1C_A1, _const.END_DIALOG, 8)
  elseif _util.GetConversationCount() == 10 then
    _util.ChangeBaseAnim("NPC/SpySeek/LodgeNPCs/lodgeNPCs")
    _util.AddDialog(_text.M9_LODGE_NPC2_ITEM_DROP, _const.CHANGE_DIALOG, 11)
  elseif _util.GetConversationCount() == 11 then
    _util.ChangeBaseAnim("NPC/SpySeek/LodgeNPCs/lodgeNPCsY")
    _util.AddDialog(_text.M9_LODGE_NPC1_ITEM_DROP2, _const.CHANGE_DIALOG, 12)
  elseif _util.GetConversationCount() == 12 then
    _util.AddDialog(_text.M9_LODGE_NPC2_ITEM_DROP2, _const.END_DIALOG, 11)
  elseif _util.GetConversationCount() == 13 then
    _util.RemoveInventoryItem(_id.M9_ConnectFour7)
    _util.ChangeBaseAnim("NPC/SpySeek/LodgeNPCs/lodgeNPCs")
    _util.AddDialog(_text.M9_LODGE_NPC1_ITEM_HAS, _const.CHANGE_DIALOG, 11)
  end
end
if _util.GetReason() == _const.AFTER_DIALOG then
  _util.SetVar("gotHere", 1)
  _util.ChangeBaseAnim("NPC/SpySeek/LodgeNPCs/lodgePlay")
  _util.SwitchState("", _util.GetSelf())
end
if _util.GetReason() == _const.ITEM_DROPPED and _util.GetSource() == _id.M9_ConnectFour7 then
  _util.RemoveInventoryItem(_id.M9_ConnectFour7)
  _util.ChangeBaseAnim("NPC/SpySeek/LodgeNPCs/lodgeNPCsY")
  _util.AddDialog(_text.M9_LODGE_NPC1_ITEM_DROP, _const.CHANGE_DIALOG, 10)
end
