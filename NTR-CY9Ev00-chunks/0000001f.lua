local L0_0, L1_1, L2_2, L3_3, L4_4
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
  L1_1 = L1_1.COLLIDED
  L0_0(L1_1)
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
  L3_3 = _util
  L3_3 = L3_3.GetVar
  L4_4 = "C2_PanelOpen"
  L3_3 = L3_3(L4_4)
  if L3_3 == 0 then
    L3_3 = _util
    L3_3 = L3_3.AddPlayerThought
    L4_4 = _text
    L4_4 = L4_4.C2_HBLOBBY_PANEL_TOUCH
    L3_3(L4_4)
  else
    L3_3 = _util
    L3_3 = L3_3.GetVar
    L4_4 = "C2_PanelOpen"
    L3_3 = L3_3(L4_4)
    if L3_3 == 1 then
      L3_3 = _util
      L3_3 = L3_3.AddPlayerThought
      L4_4 = _text
      L4_4 = L4_4.C2_HBLOBBY_PANEL_OPEN
      L3_3(L4_4)
    else
      L3_3 = _util
      L3_3 = L3_3.AddPlayerThought
      L4_4 = _text
      L4_4 = L4_4.C2_HBLOBBY_PANEL_CUT
      L3_3(L4_4)
    end
  end
end
L3_3 = _util
L3_3 = L3_3.GetReason
L3_3 = L3_3()
L4_4 = _const
L4_4 = L4_4.ITEM_DROPPED
if L3_3 == L4_4 then
  L3_3 = _util
  L3_3 = L3_3.GetSource
  L3_3 = L3_3()
  L4_4 = _id
  L4_4 = L4_4.Inventory_WrenchTool
  if L3_3 == L4_4 then
    L4_4 = _util
    L4_4 = L4_4.GetVar
    L4_4 = L4_4("C2_PanelOpen")
    if L4_4 == 0 then
      function L4_4()
        _util.StartMiniGame(_const.WRENCH, 4)
        repeat
          scriptWait()
        until _util.GetGameState() ~= _const.MISSION
        repeat
          scriptWait()
        until _util.GetGameState() == _const.MISSION
        if _util.GetMinigameOutput1() == 1 then
          _util.ChangeBaseAnim("MissionObjects/M2/herbertPanelOpen", _id.C2_HBLobby_Panel)
          _util.SetVar("C2_PanelOpen", 1)
        end
      end
      scriptPlay(L4_4)
    end
  else
    L4_4 = _id
    L4_4 = L4_4.Inventory_ScissorsTool
    if L3_3 == L4_4 then
      L4_4 = _util
      L4_4 = L4_4.GetVar
      L4_4 = L4_4("C2_PanelOpen")
      if L4_4 == 1 then
        L4_4 = _util
        L4_4 = L4_4.ChangeBaseAnim
        L4_4("MissionObjects/M2/herbertPanelCut")
        L4_4 = _util
        L4_4 = L4_4.AddPlayerThought
        L4_4(_text.C2_HBLOBBY_PANEL_CUT)
        L4_4 = _util
        L4_4 = L4_4.SetExitLocked
        L4_4(_id.Doors_C2_HerbsDoor2Den, false)
        L4_4 = _util
        L4_4 = L4_4.SetVar
        L4_4("C2_PanelOpen", 2)
      end
    end
  end
end
