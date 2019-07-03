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
    L1_1(_text.C1_TC1_JPG_2, _const.END_DIALOG, 0)
  elseif L0_0 == 5 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(_text.C1_TCPC_JPG_1, _const.CHANGE_NPC, _id.M1_TC_Rookie, 6)
  elseif L0_0 == 1 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.C1_PT_JPG_1, _const.CHANGE_NPC, _id.M1_TC_PuffleHandler, 9)
  elseif L0_0 == 2 then
    L1_1 = _util
    L1_1 = L1_1.SetConversationCount
    L1_1(12, _id.M1_TC_PuffleHandler)
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.C1_PT_JPG_2, _const.CHANGE_DIALOG, 4)
  elseif L0_0 == 4 then
    function L1_1()
      _util.DisableInput()
      _util.AddItem(_id.M1_TC_DirectorScreen)
      _util.PopCamera()
      _util.PushCamera(_id.M1_TC_DirectorScreen)
      _util.ChangeBaseAnim("MissionObjects/M1/DirectorsTV", _id.M1_TC_DirectorScreen, "goDown")
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_id.M1_TC_DirectorScreen)
      _util.ChangeBaseAnim("MissionObjects/M1/directorsTV", _id.M1_TC_DirectorScreen)
      _util.AddItem(_id.M1_TC_Director)
      _util.SetConversationCount(3)
      _util.PopCamera(_id.M1_TC_DirectorScreen)
      _util.ActivateNpc(_id.M1_TC_Director, 0)
      _util.EnableInput()
    end
    scriptPlay(L1_1)
  elseif L0_0 == 3 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.C1_TCRC_JPG_1, _const.END_DIALOG, 3)
  end
end
