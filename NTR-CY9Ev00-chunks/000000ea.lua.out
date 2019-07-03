local L0_0, L1_1, L2_2, L3_3
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
if L3_3 == _const.TOUCHED then
  if L2_2 == 0 then
    L3_3 = _util
    L3_3 = L3_3.GetVar
    L3_3 = L3_3("foundSoda")
    if L3_3 == 0 then
      L3_3 = _util
      L3_3 = L3_3.AddDialog
      L3_3(_text.M10_DOCK_NPC_GREET, _const.CHANGE_DIALOG, 8)
    else
      L3_3 = _util
      L3_3 = L3_3.AddConversation
      L3_3(_text.M10_DOCK_NPC_GREET, _text.M10_DOCK_NPC_Q2, -1, _const.CHANGE_DIALOG, 1)
    end
  elseif L2_2 == 1 then
    L3_3 = _util
    L3_3 = L3_3.AddLoopingConv
    L3_3(_text.M10_DOCK_NPC_A2)
    L3_3 = _util
    L3_3 = L3_3.AddLoopingOption
    L3_3(_text.M10_DOCK_NPCA_Q1, -1, _const.CHANGE_DIALOG, 3)
    L3_3 = _util
    L3_3 = L3_3.AddLoopingOption
    L3_3(_text.M10_DOCK_NPCA_Q2, -1, _const.CHANGE_DIALOG, 2)
  elseif L2_2 == 2 then
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M10_DOCK_NPCA_A2, _const.END_DIALOG, 0)
  elseif L2_2 == 3 then
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M10_DOCK_NPCA_A1, _const.CHANGE_DIALOG, 7)
  elseif L2_2 == 4 then
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M10_DOCK_NPCB_A1, _const.END_DIALOG, 6)
  elseif L2_2 == 5 then
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M10_DOCK_NPCB_A2, _const.END_DIALOG, 6)
  elseif L2_2 == 6 then
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M10_DOCK_NPC_GREET2, _const.END_DIALOG, 6)
  elseif L2_2 == 7 then
    function L3_3()
      _util.DisableInput()
      _util.SwitchState("give")
      _util.SetVar("M10_foundRope", 1)
      _util.AddInventoryItem(_id.M10_Rope)
      repeat
        scriptWait()
      until _util.IsPopUpVisible()
      _util.EnableInput()
      repeat
        scriptWait()
      until not _util.IsPopUpVisible()
      _util.DisableInput()
      repeat
        scriptWait()
      until 40 - 1 == 0
      _util.EnableInput()
      _util.ChangeBaseAnim("NPC/WaddleSquad/DockNPC/docksNoRope")
      _util.AddLoopingOption(_text.M10_DOCK_NPCB_Q1, -1, _const.CHANGE_DIALOG, 4)
      _util.AddLoopingOption(_text.M10_DOCK_NPCB_Q2, -1, _const.CHANGE_DIALOG, 5)
    end
    scriptPlay(L3_3)
  elseif L2_2 == 8 then
    L3_3 = _util
    L3_3 = L3_3.GetVar
    L3_3 = L3_3("M10_Dock_askedFuel")
    if L3_3 ~= 1 then
      L3_3 = _util
      L3_3 = L3_3.AddLoopingOption
      L3_3(_text.M10_DOCK_NPC_NOFUELQ1, -1, _const.CHANGE_DIALOG, 9)
    end
    L3_3 = _util
    L3_3 = L3_3.AddLoopingOption
    L3_3(_text.M10_DOCK_NPC_Q2, -1, _const.CHANGE_DIALOG, 1)
  elseif L2_2 == 9 then
    L3_3 = _util
    L3_3 = L3_3.SetVar
    L3_3("M10_Dock_askedFuel", 1)
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M10_DOCK_NPC_A1, _const.CHANGE_DIALOG, 8)
  end
end
