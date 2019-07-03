local L0_0, L1_1
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.CREATED
if L0_0 == L1_1 then
  L0_0 = _util
  L0_0 = L0_0.AddInterest
  L1_1 = _const
  L1_1 = L1_1.ITEM_DROPPED
  L0_0(L1_1)
  L0_0 = _util
  L0_0 = L0_0.AddInterest
  L1_1 = _const
  L1_1 = L1_1.COMMUNICATOR
  L0_0(L1_1)
  L0_0 = _util
  L0_0 = L0_0.AddInterest
  L1_1 = _const
  L1_1 = L1_1.AFTER_DIALOG
  L0_0(L1_1)
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
    L1_1 = L1_1.AddNPCText
    L1_1(_text.C2_CR_GARY_GREET_REM, _const.END_DIALOG, -1, 0)
  elseif L0_0 == 1 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.C2_CR_G_1, _const.CHANGE_NPC, _id.C2_CR_Director, 2)
  elseif L0_0 == 2 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.C2_CR_G_2, _const.CHANGE_NPC, _id.C2_CR_Director, 5)
  elseif L0_0 == 3 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.C2_CR_G_3, _const.CHANGE_NPC, _id.C2_CR_Director, 5)
  elseif L0_0 == 4 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.C2_CR_G_4, _const.CHANGE_NPC, _id.C2_CR_Director, 5)
  elseif L0_0 == 5 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.C2_CR_G_5)
    L1_1 = _util
    L1_1 = L1_1.AddPlayerOption
    L1_1(_text.C2_CR_A_3A, _const.CHANGE_DIALOG, -1, 50)
    L1_1 = _util
    L1_1 = L1_1.AddPlayerOption
    L1_1(_text.C2_CR_A_3B, _const.CHANGE_DIALOG, -1, 51)
  elseif L0_0 == 6 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.C2_CR_G_6, _const.CHANGE_NPC, _id.C2_CR_Director, 8)
  elseif L0_0 == 7 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.C2_CR_G_7, _const.CHANGE_NPC, _id.C2_CR_Dot, 5)
  elseif L0_0 == 8 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.C2_CR_G_8, _const.CHANGE_NPC, _id.C2_CR_Dot, 12)
  elseif L0_0 == 9 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.C2_CR_G_9, _const.CHANGE_DIALOG, -1, 10)
  elseif L0_0 == 10 then
    function L1_1()
      _util.DisableInput()
      _util.ChangeBaseAnim("NPC/M2/Gary/GaryCamera", _id.C2_CR_Gary)
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_util.GetSelf())
      _util.ChangeBaseAnim("NPC/M2/Gary/GaryCamera", _id.C2_CR_Gary)
      _util.EnableInput()
      _util.AddNPCText(_text.C2_CR_G_10)
      _util.AddPlayerOption(_text.C2_CR_A_8A, _const.CHANGE_DIALOG, -1, 11)
      _util.AddPlayerOption(_text.C2_CR_A_8B, _const.CHANGE_DIALOG, -1, 11)
    end
    scriptPlay(L1_1)
  elseif L0_0 == 11 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.C2_CR_G_11, _const.CHANGE_DIALOG, -1, 12)
  elseif L0_0 == 12 then
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("C2_AskQues")
    if L1_1 == 0 then
      L1_1 = _util
      L1_1 = L1_1.AddNPCText
      L1_1(_text.C2_CR_G_12, _const.CHANGE_DIALOG, -1, 13)
    else
      L1_1 = _util
      L1_1 = L1_1.AddNPCText
      L1_1(_text.C2_CR_G_12, _const.CHANGE_DIALOG, -1, 15)
    end
  elseif L0_0 == 13 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.C2_CR_G_13, _const.END_DIALOG, -1, 53)
  elseif L0_0 == 14 then
    L1_1 = _util
    L1_1 = L1_1.SetVar
    L1_1("Don'tTakePicOfMe", 1)
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.C2_CR_G_14, _const.CHANGE_DIALOG, -1, 15)
  elseif L0_0 == 15 then
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("C2_AskQues")
    if L1_1 == 0 then
      L1_1 = _util
      L1_1 = L1_1.AddNPCText
      L1_1(_text.C2_CR_G_15, _const.CHANGE_NPC, _id.C2_CR_Director, 10)
    else
      L1_1 = _util
      L1_1 = L1_1.AddNPCText
      L1_1(_text.C2_CR_G_15, _const.CHANGE_NPC, _id.C2_CR_Director, 13)
    end
  elseif L0_0 == 16 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.C2_CR_G_16, _const.CHANGE_NPC, _id.C2_CR_Director, 15)
  elseif L0_0 == 17 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.C2_CR_G_17, _const.CHANGE_NPC, _id.C2_CR_Dot, 14)
  elseif L0_0 == 50 then
    L1_1 = _util
    L1_1 = L1_1.ActivateNpc
    L1_1(_id.C2_CR_Director, 8)
  elseif L0_0 == 51 then
    L1_1 = _util
    L1_1 = L1_1.ActivateNpc
    L1_1(_id.C2_CR_Director, 7)
  elseif L0_0 == 52 then
    L1_1 = _util
    L1_1 = L1_1.IsSuitcaseItemEquipped
    L1_1 = L1_1(_id.SuitCase_CrabCostume)
    if L1_1 then
      L1_1 = _util
      L1_1 = L1_1.AddNPCText
      L1_1(_text.C2_CR_IDLE_CRAB_GB, _const.END_DIALOG, -1, 52)
    else
      L1_1 = _util
      L1_1 = L1_1.AddNPCText
      L1_1(_text.C2_CR_IDLE_CRAB_G, _const.END_DIALOG, -1, 52)
    end
  elseif L0_0 == 60 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.C2_CR_IDLE_CAM_G, _const.END_DIALOG, -1, 60)
  elseif L0_0 == 70 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.C2_CR_IDLE_END_G, _const.END_DIALOG, -1, 70)
  end
end
L1_1 = _util
L1_1 = L1_1.GetReason
L1_1 = L1_1()
if L1_1 == _const.ITEM_DROPPED then
  L1_1 = _util
  L1_1 = L1_1.GetVar
  L1_1 = L1_1("Don'tTakePicOfMe")
  if L1_1 == 1 then
    L1_1 = _util
    L1_1 = L1_1.ActivateNpc
    L1_1(_id.C2_CR_Gary, 70)
  end
else
  L1_1 = _util
  L1_1 = L1_1.GetReason
  L1_1 = L1_1()
  if L1_1 == _const.ITEM_DROPPED then
    L1_1 = _util
    L1_1 = L1_1.GetSource
    L1_1 = L1_1()
    if L1_1 == _id.C2_Camera then
      L1_1 = _util
      L1_1 = L1_1.GetVar
      L1_1 = L1_1("C2_Event")
      if L1_1 < _id.C2_Briefed then
        function L1_1()
          _util.DelItem(_id.C2_CameraZoomGary)
          _util.StartCutscene(_const.C2GARYPICTURE)
          repeat
            scriptWait()
          until _util.GetGameState() ~= _const.MISSION
          repeat
            scriptWait()
          until _util.GetGameState() == _const.MISSION
          _util.ActivateNpc(_id.C2_CR_Gary, 14)
        end
        scriptPlay(L1_1)
      end
    end
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
    _util.SetVar("c2_talkedToGaryCom", 1)
    _util.AddComText(_text.C2_COMM_G_1)
    _util.AddComOption(_text.C2_COMM_A_3, _const.CHANGE_DIALOG, 1)
  elseif L1_1 == 1 then
    _util.AddObjective(_text.C2_OBJ3)
    _util.AddSubObjective(_text.C2_OBJ3, _text.C2_3SUBOBJ1)
    _util.AddNPCTextComm(_text.C2_COMM_G_2, _const.CHANGE_DIALOG, 2)
  elseif L1_1 == 2 then
    _util.SetVar("C2_endComm", 1)
    _util.SetExitLocked(_id.Doors_SkiHill2Wild, false)
    _util.AddNPCTextComm(_text.C2_COMM_G_3, _const.END_DIALOG, 1)
    _util.ClearCom()
    _util.SetupComNpc(_const.COM_JPG, _id.C2_Wilderness_JPG, 0)
  end
end
L1_1 = _util
L1_1 = L1_1.GetReason
L1_1 = L1_1()
if L1_1 == _const.AFTER_DIALOG and L0_0 == 53 then
  L1_1 = _util
  L1_1 = L1_1.GetVar
  L1_1 = L1_1("C2_AskQues")
  if L1_1 == 0 then
    L1_1 = _util
    L1_1 = L1_1.AddInventoryItem
    L1_1(_id.C2_Camera)
    L1_1 = _util
    L1_1 = L1_1.AddItem
    L1_1(_id.C2_CameraZoomGary)
    L1_1 = _util
    L1_1 = L1_1.ChangeBaseAnim
    L1_1("NPC/M2/Gary/Gary", _id.C2_CR_Gary)
    L1_1 = _util
    L1_1 = L1_1.SetConversationCount
    L1_1(60, _id.C2_CR_Director)
    L1_1 = _util
    L1_1 = L1_1.SetConversationCount
    L1_1(60, _id.C2_CR_Rookie)
    L1_1 = _util
    L1_1 = L1_1.SetConversationCount
    L1_1(60, _id.C2_CR_JPG)
    L1_1 = _util
    L1_1 = L1_1.SetConversationCount
    L1_1(60, _id.C2_CR_Dot)
    L1_1 = _util
    L1_1 = L1_1.SetConversationCount
    L1_1(60, _id.C2_CR_Gary)
  end
end
