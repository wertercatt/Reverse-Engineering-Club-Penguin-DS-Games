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
    L1_1 = L1_1.AddDialog
    L1_1(_text.C1_TCPC_PH_1, _const.CHANGE_DIALOG, 1)
  elseif L0_0 == 1 then
    L1_1 = _util
    L1_1 = L1_1.SetVar
    L1_1("C1_Event", _id.C1_pufflesUnlocked)
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(_text.C1_TCPC_PH_2)
    L1_1 = _util
    L1_1 = L1_1.AddPlayerOption
    L1_1(_text.C1_TCPC_A_1A, _const.CHANGE_DIALOG, -1, 2)
    L1_1 = _util
    L1_1 = L1_1.AddPlayerOption
    L1_1(_text.C1_TCPC_A_1B, _const.CHANGE_DIALOG, -1, 2)
  elseif L0_0 == 2 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(_text.C1_TCPC_PH_3, _const.CHANGE_DIALOG, 3)
  elseif L0_0 == 3 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.C1_TCPC_PH_4, _const.CHANGE_NPC, _id.M1_TC_JPG, 5)
  elseif L0_0 == 4 then
    L1_1 = _util
    L1_1 = L1_1.SetConversationCount
    L1_1(0, _id.M1_TC_Rookie)
    L1_1 = _util
    L1_1 = L1_1.SetConversationCount
    L1_1(0, _id.M1_TC_JPG)
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.C1_TCPC_PH_5, _const.CHANGE_DIALOG, -1, 40)
    L1_1 = _util
    L1_1 = L1_1.AddObjective
    L1_1(_text.C1_OBJ1)
    L1_1 = _util
    L1_1 = L1_1.AddSubObjective
    L1_1(_text.C1_OBJ1, _text.C1_1SUBOBJ1)
  elseif L0_0 == 40 then
    function L1_1()
      _util.DisableInput()
      _util.PopCamera()
      _util.SetConversationCount(5, _id.M1_TC_PuffleHandler)
      _util.DisplayPopUp(_text.C1_PUFFLEWHISTLE_POPUP, "UI/Zoom/PuffleWhistle")
      _util.EnableSpyPodFunc(_const.FLAG_PUFFLEWHISTLE)
      _util.SetCursorPos(298, 88)
      repeat
        scriptWait()
        _util.SetCursorPos(298, 88)
      until _util.IsPopUpVisible()
      _util.EnableInput(true)
      repeat
        scriptWait()
        _util.SetCursorPos(298, 88)
      until not _util.IsPopUpVisible()
      _util.SetCursorPos(298, 88)
    end
    scriptPlay(L1_1)
  elseif L0_0 == 5 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.C1_TCPC_PH_6, _const.CHANGE_DIALOG, -1, 13)
  elseif L0_0 == 6 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.C1_TCPC_PH_2A_1, _const.CHANGE_DIALOG, -1, 7)
  elseif L0_0 == 7 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.C1_TCPC_PH_2A_2, _const.CHANGE_NPC, _id.M1_TC_Rookie, 1)
  elseif L0_0 == 8 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.C1_PT_PH_1, _const.CHANGE_NPC, _id.M1_T7_Rookie2, 2)
  elseif L0_0 == 9 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.C1_PT_PH_2, _const.CHANGE_DIALOG, -1, 10)
  elseif L0_0 == 10 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.C1_PT_PH_3, _const.CHANGE_NPC, _id.M1_T7_Rookie2, 4)
  elseif L0_0 == 11 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.C1_PT_PH_4)
    L1_1 = _util
    L1_1 = L1_1.AddPlayerOption
    L1_1(_text.C1_PT_A_1A, _const.CHANGE_NPC, _id.M1_T7_JPG2, 2)
    L1_1 = _util
    L1_1 = L1_1.AddPlayerOption
    L1_1(_text.C1_PT_A_1B, _const.CHANGE_NPC, _id.M1_T7_JPG2, 2)
  elseif L0_0 == 12 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.C1_PT_PH_4, _const.END_DIALOG, -1, 12)
  elseif L0_0 == 13 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.C1_PT_PH_TUT_1)
    L1_1 = _util
    L1_1 = L1_1.AddPlayerOption
    L1_1(_text.C1_PT_PH_TUT_1A, _const.CHANGE_DIALOG, -1, 14)
    L1_1 = _util
    L1_1 = L1_1.AddPlayerOption
    L1_1(_text.C1_PT_PH_TUT_1B, _const.END_DIALOG, 13)
  elseif L0_0 == 14 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.C1_PT_PH_TUT_2, _const.CHANGE_DIALOG, -1, 15)
  elseif L0_0 == 15 then
    function L1_1()
      _util.StartCutscene(_const.PUFFLE_TUT)
      repeat
        scriptWait()
      until _util.GetGameState() ~= _const.MISSION
      repeat
        scriptWait()
      until _util.GetGameState() == _const.MISSION
    end
    _util.SetConversationCount(13)
    scriptPlay(L1_1)
  end
end
