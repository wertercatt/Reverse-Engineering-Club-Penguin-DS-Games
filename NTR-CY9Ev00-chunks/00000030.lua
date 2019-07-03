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
  L1_1 = _util
  L1_1 = L1_1.GetVar
  L1_1 = L1_1("CommandAgents")
  if L1_1 == 1 then
    function L1_1()
      _util.StartMiniGame(_const.GRAPPLINGHOOK, 0)
      repeat
        scriptWait()
      until _util.GetGameState() ~= _const.MISSION
      repeat
        scriptWait()
      until _util.GetGameState() == _const.MISSION
      if _util.GetMinigameOutput1() == 1 then
        _util.SetVar("CommandAgents", 2)
        _util.ActivateNpc(_id.C3_CR_Gary, 17)
      end
    end
    scriptPlay(L1_1)
  end
end
