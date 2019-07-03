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
    L1_1(_text.M10_NPC_RORY_1)
    L1_1 = _util
    L1_1 = L1_1.AddPlayerOption
    L1_1(_text.M10_NPC_RORY_1A, _const.CHANGE_DIALOG, -1, 1)
  elseif L0_0 == 1 then
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("fixHole")
    if L1_1 < 2 then
      L1_1 = _util
      L1_1 = L1_1.SetVar
      L1_1("fixHole", 0)
      L1_1 = _util
      L1_1 = L1_1.AddNPCText
      L1_1(_text.M10_NPC_RORY_2)
      L1_1 = _util
      L1_1 = L1_1.AddPlayerOption
      L1_1(_text.M10_NPC_RORY_2A, _const.CHANGE_DIALOG, -1, 2)
      L1_1 = _util
      L1_1 = L1_1.AddPlayerOption
      L1_1(_text.M10_NPC_RORY_2B, _const.END_DIALOG, -1, 1)
    else
      L1_1 = _util
      L1_1 = L1_1.AddNPCText
      L1_1(_text.M10_NPC_RORY_4, _const.END_DIALOG, -1, 4)
    end
  elseif L0_0 == 2 then
    L1_1 = _util
    L1_1 = L1_1.SetVar
    L1_1("fixHole", 1)
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.M10_NPC_RORY_3, _const.END_DIALOG, -1, 1)
  elseif L0_0 == 4 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.M9_MINESHACK_GREET, _const.END_DIALOG, -1, 4)
  end
end
L1_1 = _util
L1_1 = L1_1.GetReason
L1_1 = L1_1()
if L1_1 == _const.AFTER_DIALOG then
  L1_1 = _util
  L1_1 = L1_1.GetVar
  L1_1 = L1_1("fixHole")
  if L1_1 == 1 then
    function L1_1()
      _util.StartMiniGame(_const.JACKHAMMERIN, 4, 4)
      repeat
        scriptWait()
      until _util.GetGameState() ~= _const.MISSION
      repeat
        scriptWait()
        if _util.GetMinigameOutput1() == 1 then
          _util.SetVar("fixHole", 2)
          _util.DelItem(_id.M10_Docks_Hole)
        end
      until _util.GetGameState() == _const.MISSION
    end
    scriptPlay(L1_1)
  end
end
