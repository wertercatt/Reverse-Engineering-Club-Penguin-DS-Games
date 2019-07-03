local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.CREATED
if L0_0 == L1_1 then
end
L0_0 = _util
L0_0 = L0_0.GetActiveMission
L0_0 = L0_0()
L1_1 = _util
L1_1 = L1_1.GetActiveChapter
L1_1 = L1_1()
L2_2 = _util
L2_2 = L2_2.GetConversationCount
L2_2 = L2_2()
L3_3 = _util
L3_3 = L3_3.GetReason
L3_3 = L3_3()
L4_4 = _const
L4_4 = L4_4.TOUCHED
if L3_3 == L4_4 then
  L3_3 = _id
  L3_3 = L3_3.Lighthouse_NPC2
  L4_4 = _id
  L4_4 = L4_4.Lighthouse_NPC1
  if _util.GetVar("M5_AtBeacon") == 0 then
    if L2_2 == 0 then
      _util.AddLoopingConv(_text.M5_LIGHTHOUSE_NPC2_GREET)
      _util.AddLoopingOption(_text.M5_LIGHTHOUSE_NPCA_Q1, -1, _const.CHANGE_NPC, L4_4, 2)
      _util.AddLoopingOption(_text.M5_LIGHTHOUSE_NPCA_QUIT, -1, _const.CHANGE_NPC, L3_3, 150)
    elseif L2_2 == 1 then
    elseif L2_2 == 2 then
      _util.AddDialog(_text.M5_LIGHTHOUSE_NPC1A_A1_2NPC2, _const.CHANGE_NPC, L3_3, 2)
    elseif L2_2 == 3 then
    elseif L2_2 == 4 then
      _util.ChangeBaseAnim("NPC/SecretFur/LighthouseNPCs/lighthouseNPC2D", L4_4)
      _util.ChangeBaseAnim("NPC/SecretFur/LighthouseNPCs/lighthouseNPC1atCam", L3_3)
      _util.AddDialog(_text.M5_LIGHTHOUSE_NPCB_A1, _const.END_DIALOG, 100, L4_4)
    elseif L2_2 == 5 then
      _util.AddDialog(_text.M5_LIGHTHOUSE_NPC1B_A2_2NPC2, _const.CHANGE_NPC, L3_3, 4)
    elseif L2_2 == 6 then
      _util.ChangeBaseAnim("NPC/SecretFur/LighthouseNPCs/lighthouseNPC2atCam", L4_4)
      _util.AddDialog(_text.M5_LIGHTHOUSE_NPC1B_B2_2C, _const.CHANGE_NPC, L3_3, 5)
    elseif L2_2 == 7 then
      _util.SetConversationCount(100)
      _util.AddLoopingConv(_text.M5_LIGHTHOUSE_NPC1_GREET2)
      _util.AddLoopingOption(_text.M5_LIGHTHOUSE_NPCB_Q1, -1, _const.CHANGE_NPC, L3_3, 4)
      _util.AddLoopingOption(_text.M5_LIGHTHOUSE_NPCC_Q1, -1, _const.CHANGE_NPC, L3_3, 7)
    elseif L2_2 == 8 then
      _util.ChangeBaseAnim("NPC/SecretFur/LighthouseNPCs/lighthouseNPC2atCam", L4_4)
      _util.ChangeBaseAnim("NPC/SecretFur/LighthouseNPCs/lighthouseNPC1atCam", L3_3)
      _util.AddDialog(_text.M5_LIGHTHOUSE_NPC1C_A1, _const.END_DIALOG, 100)
    elseif L2_2 == 100 then
      _util.ChangeBaseAnim("NPC/SecretFur/LighthouseNPCs/lighthouseNPC2atCam", L4_4)
      _util.ChangeBaseAnim("NPC/SecretFur/LighthouseNPCs/lighthouseNPC1atCam", L3_3)
      _util.ActivateNpc(L3_3, 6)
    end
  elseif L2_2 <= 100 then
    _util.AddConversation(_text.M2_LH_NPC_END, _text.M2_LH_NPC_END_A1, -1, _const.CHANGE_DIALOG, 101)
  elseif L2_2 == 101 then
    _util.SetConversationCount(100)
    _util.AddDialog(_text.M2_LH_NPC_END1_5, _const.CHANGE_NPC, L3_3, 102)
  elseif L2_2 == 102 then
    _util.AddDialog(_text.M2_LH_NPC_END2, _const.END_DIALOG, 100)
  end
end
