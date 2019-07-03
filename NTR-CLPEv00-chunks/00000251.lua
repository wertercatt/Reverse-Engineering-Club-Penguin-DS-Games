if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    if _util.GetVar("robostatus") == 0 then
      _util.AddDialog(3215, _const.END_DIALOG, 0)
    elseif _util.GetVar("robostatus") == 1 then
      _util.AddDialog(3218, _const.END_DIALOG, 0)
    end
  elseif _util.GetConversationCount() == 1 then
    _util.AddDialog(3192, _const.CHANGE_NPC, _id.M5C1_SuperRobot_Town, 1)
    _util.SetSpawn(0, _id.M5C1_Rookie_HQ)
    _util.SetSpawn(0, _id.M5C1_JPG_HQ)
    _util.SetSpawn(0, _id.M5C1_PH_HQ)
    _util.SetSpawn(1, _id.M5C1_HQRubberDuckMask)
    _util.SetExitLocked(_id.Doors_HQ2CommandAlternate, true)
    print("***COMMAND ROOM DOOR IS LOCKED***")
  elseif _util.GetConversationCount() == 2 then
    _util.AddConversation(3195, 3196, -1, _const.CHANGE_DIALOG, 21)
  elseif _util.GetConversationCount() == 21 then
    _util.AddDialog(3197, _const.END_DIALOG, 0)
  elseif _util.GetConversationCount() == 3 then
    _util.AddConversation(3221, 3222, -1, _const.CHANGE_DIALOG, 4)
  elseif _util.GetConversationCount() == 4 then
    _util.AddConversation(3223, 3224, -1, _const.CHANGE_DIALOG, 5)
  elseif _util.GetConversationCount() == 5 then
    _util.AddDialog(3225, _const.END_DIALOG, 0)
  end
end
