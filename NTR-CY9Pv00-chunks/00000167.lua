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
  L3_3 = L3_3.AddPlayerThought
  L4_4 = _text
  L4_4 = L4_4.M11_SCREEN_PANEL
  L3_3(L4_4)
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
    L4_4 = L4_4("OpenCase")
    if L4_4 == 1 then
      L4_4 = _util
      L4_4 = L4_4.GetVar
      L4_4 = L4_4("WrenchGameCompleted")
      if L4_4 == 0 then
        function L4_4()
          _util.StartMiniGame(_const.WRENCH, 2)
          repeat
            scriptWait()
          until _util.GetGameState() ~= _const.MISSION
          repeat
            scriptWait()
          until _util.GetGameState() == _const.MISSION
          if _util.GetMinigameOutput1() == 1 then
            _util.SetVar("WrenchGameCompleted", 1)
            _util.SetVar("FindSignal", 1)
            _util.MarkObjComplete(_text.M11_OBJ3B)
            _util.AddObjective(_text.M11_OBJ4)
            _util.SetVar("HaveDVD", 3)
            _util.SetSpawn(0, _id.M11_VillageRookieDVD)
            _util.SetSpawn(1, _id.M11_VillageRookie)
            _util.AddItem(_id.M11_SignalLocation)
            _util.ChangeRoom(99)
            _util.DelItem(_id.PanelDoor)
          end
        end
        scriptPlay(L4_4)
      end
    end
  end
end
