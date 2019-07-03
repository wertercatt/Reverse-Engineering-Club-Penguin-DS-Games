local L0_0, L1_1, L2_2
L0_0 = _util
L0_0 = L0_0.GetActiveMission
L0_0 = L0_0()
L1_1 = _util
L1_1 = L1_1.GetReason
L1_1 = L1_1()
L2_2 = _const
L2_2 = L2_2.CREATED
if L1_1 == L2_2 then
  L1_1 = _util
  L1_1 = L1_1.AddInterest
  L2_2 = _const
  L2_2 = L2_2.ITEM_DROPPED
  L1_1(L2_2)
end
L1_1 = _util
L1_1 = L1_1.GetReason
L1_1 = L1_1()
L2_2 = _const
L2_2 = L2_2.TOUCHED
if L1_1 == L2_2 then
  L1_1 = _util
  L1_1 = L1_1.GetConversationCount
  L1_1 = L1_1()
  if L0_0 == 2 then
    if L1_1 == 0 then
      L2_2 = _util
      L2_2 = L2_2.GetVar
      L2_2 = L2_2("FixedVRMachine")
      if L2_2 == 1 then
        function L2_2()
          _util.ClearObjective()
          _util.MarkObjComplete(_text.M5_VROBJ2)
          _util.SetNextRoom(34)
          _util.StartCutscene(_const.M2LOAD)
          repeat
            scriptWait()
          until _util.GetGameState() ~= _const.MISSION
          repeat
            scriptWait()
          until _util.GetGameState() == _const.MISSION
        end
        scriptPlay(L2_2)
      end
    else
      L2_2 = _util
      L2_2 = L2_2.GetVar
      L2_2 = L2_2("Talked_VR_GARY")
      if L2_2 == 0 then
        L2_2 = _util
        L2_2 = L2_2.AddMonologue
        L2_2(_text.M8_GADGETROOM_ITEM_HELIUM_TOUCH, "DialogStrings", _const.END_DIALOG, 0)
      else
        L2_2 = _util
        L2_2 = L2_2.AddMonologue
        L2_2(_text.M2_USE_WRENCH, "DialogStrings", _const.END_DIALOG, 0)
      end
    end
  elseif L0_0 ~= 2 and L1_1 == 0 then
    L2_2 = _util
    L2_2 = L2_2.AddMonologue
    L2_2(_text.COMMANDCOACH_STATIONREADY_TOUCH, "DialogStrings", _const.END_DIALOG, 0)
  end
end
L1_1 = _util
L1_1 = L1_1.GetReason
L1_1 = L1_1()
L2_2 = _const
L2_2 = L2_2.ITEM_DROPPED
if L1_1 == L2_2 and L0_0 == 2 then
  L1_1 = _util
  L1_1 = L1_1.GetSource
  L1_1 = L1_1()
  L2_2 = _util
  L2_2 = L2_2.GetVar
  L2_2 = L2_2("Talked_VR_GARY")
  if L2_2 == 1 then
    L2_2 = _id
    L2_2 = L2_2.Inventory_WrenchTool
    if L1_1 == L2_2 then
      L2_2 = _util
      L2_2 = L2_2.GetVar
      L2_2 = L2_2("FixedVRMachine")
      if L2_2 == 0 then
        function L2_2()
          _util.StartMiniGame(_const.WRENCH, 9)
          repeat
            scriptWait()
          until _util.GetGameState() ~= _const.MISSION
          repeat
            scriptWait()
          until _util.GetGameState() == _const.MISSION
          if _util.GetMinigameOutput1() == 1 then
            _util.MarkObjComplete(_text.M5_VROBJ1)
            _util.AddObjective(_text.M5_VROBJ2)
            _util.SetObjective(_text.M5_VROBJ2)
            _util.ActivateNpc(_id.M2_VR_Gary, 7)
            _util.SetVar("FixedVRMachine", 1)
          end
        end
        scriptPlay(L2_2)
      end
    end
  end
end
