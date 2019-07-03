if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.COMMUNICATOR)
  _util.AddInterest(_const.AFTER_DIALOG)
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 and _util.GetVar("GoTalkToJPG") == 0 then
    _util.AddNPCText(_text.M11_GS_ROOKIE_GREET)
  elseif _util.GetConversationCount() == 0 and _util.GetVar("GoTalkToJPG") == 1 then
    _util.SwitchState("")
    _util.AddNPCText(_text.M11_GSO_JPG_1)
    _util.AddPlayerOption(_text.M11_GSO_JPG_A_1A, _const.CHANGE_DIALOG, -1, 1)
    _util.AddPlayerOption(_text.M11_GSO_JPG_A_1B, _const.CHANGE_DIALOG, -1, 2)
  elseif _util.GetConversationCount() == 1 then
    _util.AddNPCText(_text.M11_GSO_JPG_2A)
    _util.AddPlayerOption(_text.M11_GSO_JPG_A_2, _const.CHANGE_DIALOG, -1, 3)
  elseif _util.GetConversationCount() == 2 then
    _util.AddNPCText(_text.M11_GSO_JPG_2B)
    _util.AddPlayerOption(_text.M11_GSO_JPG_A_2, _const.CHANGE_DIALOG, -1, 3)
  elseif _util.GetConversationCount() == 3 then
    if _util.GetVar("FoundCornJPG") == 0 then
      _util.AddNPCText(_text.M11_GSO_JPG_3, _const.END_DIALOG, -1, 4)
      _util.SetVar("GrabJPGCornClues", 1)
      _util.SetVar("HaveALookAround", 1)
    end
  elseif _util.GetConversationCount() == 4 then
    if _util.GetVar("FoundCornJPG") == 0 then
      _util.AddNPCText(_text.M11_GSO_JPG_4)
      _util.AddPlayerOption(_text.M11_GSO_JPG_A_4, _const.CHANGE_DIALOG, -1, 9)
    else
      _util.ActivateNpc(_util.GetSelf(), 10)
    end
  elseif _util.GetConversationCount() == 5 then
    _util.AddNPCText(_text.M11_GSO_JPG_A_5A_2)
    _util.AddPlayerOption(_text.M11_GSO_JPG_A_5B, _const.CHANGE_DIALOG, -1, 6)
  elseif _util.GetConversationCount() == 6 then
    _util.SetVar("TalkedWithJPG", 1)
    _util.AddNPCText(_text.M11_GSO_JPG_6, _const.END_DIALOG, -1, 7)
  elseif _util.GetConversationCount() == 7 then
    _util.AddNPCText(_text.M11_GSO_JPG_7_QUIT1, _const.END_DIALOG, -1, 8)
  elseif _util.GetConversationCount() == 8 then
    _util.SwitchState("")
    _util.AddNPCText(_text.M11_GSO_JPG_8_QUIT2, _const.END_DIALOG, -1, 8)
  elseif _util.GetConversationCount() == 9 then
    _util.SwitchState("")
    _util.AddNPCText(_text.M11_PH_JPG4CLUE2, _const.END_DIALOG, -1, 4)
  elseif _util.GetConversationCount() == 10 then
    _util.SwitchState("")
    _util.AddNPCText(_text.M11_GSO_JPG_A_5A)
    _util.AddPlayerOption(_text.M11_GSO_JPG_A_5B, _const.CHANGE_DIALOG, -1, 6)
  end
end
if _util.GetReason() == _const.AFTER_DIALOG then
  _util.SwitchState("look", _util.GetSelf())
  print("changing animation state")
  if _util.GetVar("TalkedWithJPG") == 1 and _util.GetVar("TalkedWithRookie") == 1 and _util.GetVar("M11_ComHQ") == 0 then
    _util.SetupComNpc(_const.COM_STATIC, _id.M11_HQGaryScreen, 0)
    _util.SetVar("M11_ComHQ", 1)
    _util.DisableSpyPodFunc(_const.FLAG_HEADQUARTERS)
    _util.AddItem(_id.M11_VillageStatic)
    _util.SetSpawn(1, _id.M11_VillageScreen)
    _util.SetSpawn(1, _id.M11_VillageStatic)
    _util.SetSpawn(1, _id.M11_VillageNPCP1Marb)
    _util.SetSpawn(1, _id.M11_VillageNPCP2Marb)
    _util.SetSpawn(1, _id.M11_VillageNPCP3Marb)
    _util.SetSpawn(1, _id.M11_Marbles1)
    _util.SetSpawn(1, _id.M11_Marbles2)
    _util.SetSpawn(1, _id.M11_MarblesGround)
    _util.SetSpawn(1, _id.M11_CornGround)
    _util.SetSpawn(1, _id.M11_VillageDVDPlayer)
    _util.LaunchCommunicator()
  end
end
