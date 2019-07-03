local L0_0, L1_1
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.CREATED
if L0_0 == L1_1 then
end
L0_0 = _util
L0_0 = L0_0.GetConversationCount
L0_0 = L0_0()
L1_1 = _util
L1_1 = L1_1.GetReason
L1_1 = L1_1()
if L1_1 == _const.TOUCHED then
  if L0_0 == 0 then
    L1_1 = _util
    L1_1 = L1_1.SetVar
    L1_1("GStart", 1)
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.C3_CR_GARY_1, _const.CHANGE_DIALOG, -1, 1)
  elseif L0_0 == 1 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.C3_CR_GARY_2, _const.CHANGE_NPC, _id.C3_CR_Rookie, 0)
  elseif L0_0 == 2 then
    L1_1 = _util
    L1_1 = L1_1.DelItem
    L1_1(_id.M1_CRScreen_EPFLogo)
    L1_1 = _util
    L1_1 = L1_1.AddItem
    L1_1(_id.C3_IslandAnims)
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.C3_CR_GARY_3, _const.CHANGE_DIALOG, -1, 3)
  elseif L0_0 == 3 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.C3_CR_GARY_4, _const.CHANGE_NPC, _id.C3_CR_Dot, 1)
  elseif L0_0 == 4 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.C3_CR_GARY_5, _const.CHANGE_DIALOG, -1, 5)
  elseif L0_0 == 5 then
    L1_1 = _util
    L1_1 = L1_1.ChangeBaseAnim
    L1_1("MissionObjects/M3/screenAnim2", _id.C3_IslandAnims)
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.C3_CR_GARY_6, _const.CHANGE_DIALOG, -1, 6)
  elseif L0_0 == 6 then
    L1_1 = _util
    L1_1 = L1_1.ChangeBaseAnim
    L1_1("MissionObjects/M3/screenAnim3", _id.C3_IslandAnims)
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.C3_CR_GARY_7, _const.CHANGE_DIALOG, -1, 7)
  elseif L0_0 == 7 then
    L1_1 = _util
    L1_1 = L1_1.ChangeBaseAnim
    L1_1("MissionObjects/M3/screenAnim4", _id.C3_IslandAnims)
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.C3_CR_GARY_8, _const.CHANGE_DIALOG, -1, 8)
  elseif L0_0 == 8 then
    L1_1 = _util
    L1_1 = L1_1.ChangeBaseAnim
    L1_1("MissionObjects/M3/screenAnim5", _id.C3_IslandAnims)
    L1_1 = _util
    L1_1 = L1_1.ActivateNpc
    L1_1(_id.C3_CR_Gary, 9)
  elseif L0_0 == 103 then
    function L1_1()
      _util.AddItem(_id.C3_CR_IslandSinkAnim)
      _util.DisableInput()
      _util.EnableInput()
      _util.ActivateNpc(_id.C3_CR_Gary, 17)
    end
    scriptPlay(L1_1)
  elseif L0_0 == 9 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.C3_CR_GARY_9, _const.CHANGE_NPC, _id.C3_CR_Rookie, 2)
  elseif L0_0 == 10 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.C3_CR_GARY_10, _const.CHANGE_DIALOG, -1, 11)
  elseif L0_0 == 11 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.C3_CR_GARY_11, _const.CHANGE_DIALOG, -1, 100)
  elseif L0_0 == 100 then
    function L1_1()
      _util.AddInventoryItem(_id.C3_CR_HeadGear)
      repeat
        scriptWait()
      until _util.IsPopUpVisible()
      _util.EnableInput()
      repeat
        scriptWait()
      until not _util.IsPopUpVisible()
      _util.ActivateNpc(_util.GetSelf(), 12)
    end
    scriptPlay(L1_1)
  elseif L0_0 == 12 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.C3_CR_GARY_12)
    L1_1 = _util
    L1_1 = L1_1.AddPlayerOption
    L1_1(_text.C3_CR_GARY_12A, _const.CHANGE_DIALOG, -1, 50)
    L1_1 = _util
    L1_1 = L1_1.AddPlayerOption
    L1_1(_text.C3_CR_GARY_12B, _const.CHANGE_DIALOG, -1, 13)
  elseif L0_0 == 13 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.C3_CR_GARY_13, _const.CHANGE_DIALOG, -1, 50)
  elseif L0_0 == 50 then
    L1_1 = _util
    L1_1 = L1_1.DelItem
    L1_1(_id.C3_IslandAnims)
    L1_1 = _util
    L1_1 = L1_1.DelItem
    L1_1(_id.C3_CR_IslandSinkAnim)
    L1_1 = _util
    L1_1 = L1_1.AddItem
    L1_1(_id.C3_CR_Director)
    L1_1 = _util
    L1_1 = L1_1.ActivateNpc
    L1_1(_id.C3_CR_Director, 0)
  elseif L0_0 == 14 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.C3_CR_GARY_14, _const.CHANGE_NPC, _id.C3_CR_Director, 4)
  elseif L0_0 == 15 then
    function L1_1()
      _util.AddItem(_id.C3_HerbertTrackingDisplay)
      _util.ChangeBaseAnim("MissionObjects/M3/sinkAnimation", _id.C3_HerbertTrackingDisplay)
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_id.C3_HerbertTrackingDisplay)
      _util.ChangeBaseAnim("MissionObjects/M3/sinkAnimation", _id.C3_HerbertTrackingDisplay, "open")
      _util.EnableInput(true)
    end
    scriptPlay(L1_1)
    _util.AddNPCText(_text.C3_CR_GARY_15)
    _util.AddPlayerOption(_text.C3_CR_GARY_15A, _const.CHANGE_NPC, _id.C3_CR_Director, 6)
    _util.AddPlayerOption(_text.C3_CR_GARY_15B, _const.CHANGE_NPC, _id.C3_CR_Director, 6)
  elseif L0_0 == 16 then
    L1_1 = _util
    L1_1 = L1_1.SetConversationCount
    L1_1(7, _id.C3_CR_Director)
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.C3_CR_GARY_16, _const.CHANGE_DIALOG, -1, 104)
  elseif L0_0 == 17 then
    function L1_1()
      _util.ChangeBaseAnim("NPC/M3/Gary/GaryWorried", _id.C3_CR_Gary)
      _util.ToggleGoggleItems(1)
      _util.SetVar("CommandAgents", 1)
      _util.PlaySFX(218)
      _util.ChangeBaseAnim("Location/CommandRoom/scripted/Speaker", _id.C3_RedSpeaker1, "opening")
      _util.ChangeBaseAnim("Location/CommandRoom/scripted/Speaker", _id.C3_RedSpeaker2, "opening")
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_id.C3_RedSpeaker1)
      _util.ChangeBaseAnim("Location/CommandRoom/scripted/Speaker_open", _id.C3_RedSpeaker1)
      _util.ChangeBaseAnim("Location/CommandRoom/scripted/Speaker_open", _id.C3_RedSpeaker2)
      _util.EnableInput(true)
      _util.AddNPCText(_text.C3_CR_GARY_17, _const.CHANGE_NPC, _id.C3_CR_Director, 8)
    end
    scriptPlay(L1_1)
    _util.DisableInput()
  elseif L0_0 == 18 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.C3_CR_GARY_18, _const.CHANGE_DIALOG, -1, 19)
  elseif L0_0 == 19 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.C3_CR_GARY_19, _const.CHANGE_DIALOG, -1, 20)
  elseif L0_0 == 20 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.C3_CR_GARY_20, _const.CHANGE_DIALOG, -1, 21)
  elseif L0_0 == 21 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.C3_CR_GARY_21)
    L1_1 = _util
    L1_1 = L1_1.AddPlayerOption
    L1_1(_text.C3_CR_GARY_21A, _const.CHANGE_DIALOG, -1, 22)
    L1_1 = _util
    L1_1 = L1_1.AddPlayerOption
    L1_1(_text.C3_CR_GARY_21B, _const.CHANGE_DIALOG, -1, 22)
  elseif L0_0 == 22 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.C3_CR_GARY_22, _const.CHANGE_DIALOG, -1, 101)
  elseif L0_0 == 101 then
    function L1_1()
      _util.AddInventoryItem(_id.C3_CR_TrackingDevice)
      repeat
        scriptWait()
      until _util.IsPopUpVisible()
      _util.EnableInput()
      repeat
        scriptWait()
      until not _util.IsPopUpVisible()
      _util.ActivateNpc(_util.GetSelf(), 23)
    end
    scriptPlay(L1_1)
  elseif L0_0 == 23 then
    L1_1 = _util
    L1_1 = L1_1.SetVar
    L1_1("Inventory_Tracker_Mode", 1)
    L1_1 = _util
    L1_1 = L1_1.DisplaySignalTracking
    L1_1(_util.GetVar("Inventory_Tracker_Mode"), _util.GetVar("SignalLocation"))
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.C3_CR_GARY_23, _const.CHANGE_DIALOG, -1, 24)
  elseif L0_0 == 24 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.C3_CR_GARY_24)
    L1_1 = _util
    L1_1 = L1_1.AddPlayerOption
    L1_1(_text.C3_CR_GARY_24A, _const.CHANGE_DIALOG, -1, 25)
    L1_1 = _util
    L1_1 = L1_1.AddPlayerOption
    L1_1(_text.C3_CR_GARY_24B, _const.CHANGE_DIALOG, -1, 25)
  elseif L0_0 == 25 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.C3_CR_GARY_25, _const.CHANGE_DIALOG, -1, 26)
  elseif L0_0 == 26 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.C3_CR_GARY_26, _const.CHANGE_DIALOG, -1, 102)
  elseif L0_0 == 102 then
    function L1_1()
      _util.SetConversationCount(27)
      _util.AddInventoryItem(_id.C3_CR_Grappling)
      repeat
        scriptWait()
      until _util.IsPopUpVisible()
      _util.EnableInput()
      repeat
        scriptWait()
      until not _util.IsPopUpVisible()
      _util.AddInventoryItem(_id.C3_JackHammer)
      repeat
        scriptWait()
      until _util.IsPopUpVisible()
      _util.EnableInput()
      repeat
        scriptWait()
      until not _util.IsPopUpVisible()
      _util.PopCamera()
      _util.AddObjective(_text.C3_OBJ1)
      _util.ActivateNpc(_id.C3_CR_Director, 9)
    end
    scriptPlay(L1_1)
  elseif L0_0 == 105 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.C3_CR_GARY_16, _const.CHANGE_DIALOG, -1, 104)
  elseif L0_0 == 27 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.C3_CR_GARY_16, _const.END_DIALOG, 27)
  elseif L0_0 == 104 then
    function L1_1()
      _util.QueueMiniGame(_const.HERBERT_TRACKING, 0)
      _util.StartCutscene(_const.HERBERT_TUT)
      repeat
        scriptWait()
      until _util.GetGameState() ~= _const.MISSION
      repeat
        scriptWait()
      until _util.GetGameState() == _const.MISSION
      if _util.GetMinigameOutput1() == 1 then
        _util.ActivateNpc(_id.C3_CR_Gary, 17)
      else
        _util.ActivateNpc(_id.C3_CR_Gary, 105)
      end
    end
    scriptPlay(L1_1)
  end
end
L1_1 = _util
L1_1 = L1_1.GetReason
L1_1 = L1_1()
if L1_1 == _const.COMMUNICATOR then
  L1_1 = _util
  L1_1 = L1_1.GetComCount
  L1_1 = L1_1()
  if L1_1 == 0 then
    _util.AddNPCTextComm(_text.C3_TM_GARY_1)
    _util.AddPlayerOptionComm(_text.C3_TM_GARY_1A, _const.CHANGE_DIALOG, -1, 1)
  elseif L1_1 == 1 then
    _util.AddNPCTextComm(_text.C3_TM_GARY_2)
    _util.AddPlayerOptionComm(_text.C3_TM_GARY_2A, _const.CHANGE_DIALOG, -1, 2)
  elseif L1_1 == 2 then
    _util.AddNPCTextComm(_text.C3_TM_GARY_3, _const.CHANGE_DIALOG, -1, 3)
  elseif L1_1 == 3 then
    _util.AddNPCTextComm(_text.C3_TM_GARY_4, _const.CHANGE_DIALOG, -1, 4)
  elseif L1_1 == 4 then
    _util.AddNPCTextComm(_text.C3_TM_GARY_5, _const.END_DIALOG, -1, 3)
  end
end
