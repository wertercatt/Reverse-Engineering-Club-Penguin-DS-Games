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
      _util.AddDialog(_text.M5_LIGHTHOUSE_NPC1_GREET_2NPC2, _const.CHANGE_NPC, L4_4, 0)
    elseif L2_2 == 1 then
      _util.ChangeBaseAnim("NPC/SecretFur/LighthouseNPCs/lighthouseNPC2atCam", L4_4)
      _util.ChangeBaseAnim("NPC/SecretFur/LighthouseNPCs/lighthouseNPC1atCam", L3_3)
      _util.AddDialog(_text.M5_LIGHTHOUSE_NPCA_QUITRESPONSE2, _const.END_DIALOG, 6)
    elseif L2_2 == 2 then
      _util.ChangeBaseAnim("NPC/SecretFur/LighthouseNPCs/lighthouseNPC2B", L4_4)
      _util.ChangeBaseAnim("NPC/SecretFur/LighthouseNPCs/lighthouseNPC1atCam", L3_3)
      _util.AddDialog(_text.M5_LIGHTHOUSE_NPC2A_A1_2B, _const.CHANGE_NPC, L3_3, 3)
    elseif L2_2 == 3 then
      _util.SetConversationCount(6)
      _util.ChangeBaseAnim("NPC/SecretFur/LighthouseNPCs/lighthouseNPC2C", L4_4)
      _util.ChangeBaseAnim("NPC/SecretFur/LighthouseNPCs/lighthouseNPC1B", L3_3)
      _util.AddDialog(_text.M5_LIGHTHOUSE_NPC1A_B1_2C, _const.CHANGE_NPC, L3_3, 151)
    elseif L2_2 == 4 then
      _util.AddDialog(_text.M5_LIGHTHOUSE_NPC2A_A1_2B, _const.CHANGE_NPC, L4_4, 6)
    elseif L2_2 == 5 then
      _util.ChangeBaseAnim("NPC/SecretFur/LighthouseNPCs/lighthouseNPC2atCam", L4_4)
      _util.ChangeBaseAnim("NPC/SecretFur/LighthouseNPCs/lighthouseNPC1atCam", L3_3)
      _util.AddDialog(_text.M5_LIGHTHOUSE_NPC1B_C2, _const.END_DIALOG, 6)
    elseif L2_2 == 6 then
      _util.ChangeBaseAnim("NPC/SecretFur/LighthouseNPCs/lighthouseNPC2atCam", L4_4)
      _util.ChangeBaseAnim("NPC/SecretFur/LighthouseNPCs/lighthouseNPC1atCam", L3_3)
      _util.AddDialog(_text.M5_LIGHTHOUSE_NPC2_GREET2, _const.CHANGE_NPC, L4_4, 7)
    elseif L2_2 == 7 then
      _util.SetConversationCount(6)
      _util.AddDialog(_text.M5_LIGHTHOUSE_NPC2C_A1_2NPC1, _const.CHANGE_NPC, L4_4, 8)
    elseif L2_2 == 100 then
      _util.ChangeBaseAnim("NPC/SecretFur/LighthouseNPCs/lighthouseNPC2atCam", L4_4)
      _util.ChangeBaseAnim("NPC/SecretFur/LighthouseNPCs/lighthouseNPC1atCam", L3_3)
      _util.SetConversationCount(100, L3_3)
    elseif L2_2 == 150 then
      _util.AddDialog(_text.M5_LIGHTHOUSE_NPCA_QUITRESPONSE1, _const.CHANGE_NPC, L3_3, 1)
    elseif L2_2 == 151 then
      _util.SetConversationCount(_id.Lighthouse_NPC1, 100)
      _util.AddLoopingConv(_text.M5_LIGHTHOUSE_NPC2A_C1)
      _util.AddLoopingOption(_text.M5_LIGHTHOUSE_NPCB_Q1, -1, _const.CHANGE_NPC, L4_4, 4)
      _util.AddLoopingOption(_text.M5_LIGHTHOUSE_NPCB_Q2, -1, _const.CHANGE_NPC, L4_4, 5)
    end
  elseif L2_2 <= 100 then
    _util.AddConversation(_text.M2_LH_NPC2_END, _text.M2_LH_NPC_END_A1, -1, _const.CHANGE_DIALOG, 101)
  elseif L2_2 == 101 then
    _util.SetConversationCount(100)
    _util.AddDialog(_text.M2_LH_NPC_END1_5, _const.CHANGE_NPC, L4_4, 102)
  elseif L2_2 == 102 then
    _util.AddDialog(_text.M2_LH_NPC_END2, _const.END_DIALOG, 100)
  end
end
