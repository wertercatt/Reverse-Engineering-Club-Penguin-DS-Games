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
  L1_1 = L1_1.ITEM_DROPPED
  L0_0(L1_1)
end
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.TOUCHED
if L0_0 == L1_1 then
  L0_0 = _util
  L0_0 = L0_0.GetConversationCount
  L0_0 = L0_0()
  L1_1 = _util
  L1_1 = L1_1.GetVar
  L1_1 = L1_1("M4C3_combinedJetPack")
  if L1_1 == 0 then
    L1_1 = _util
    L1_1 = L1_1.AddMonologue
    L1_1(2812)
  elseif L0_0 == 0 then
    L1_1 = _util
    L1_1 = L1_1.AddMonologue
    L1_1(2816, "DialogStrings", _const.CHANGE_DIALOG, 1)
  elseif L0_0 == 1 then
    function L1_1()
      repeat
        scriptWait()
      until _util.GetGameState() ~= _const.MISSION
      repeat
        scriptWait()
        if _util.GetMinigameOutput1() == 0 then
          _util.SetNextRoom(48)
          _util.SetVar("M4C3_failedJetPack", 1)
        end
        if _util.GetMinigameOutput1() == 1 then
          _util.SetNextRoom(45)
          _util.SetVar("M4C3_failedJetPack", 0)
        end
      until _util.GetGameState() == _const.MISSION
      if _util.GetVar("M4C3_failedJetPack") == 1 then
        _util.SetVar("M4C3_triedJetPack", 1)
        _util.SetVar("M4C3_failedJetPack", 0)
        _util.ActivateNpc(_id.M4C3_JPG_WC, 200)
        print("**FAIL**")
      else
        _util.SetVar("M4C3_triedJetPack", 1)
        print("**SUCCESS**")
      end
      _util.SetConversationCount(0)
    end
    _util.StartMiniGame(_const.JETPACK, 1)
    scriptPlay(L1_1)
  end
end
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.ITEM_DROPPED
if L0_0 == L1_1 then
  L0_0 = _util
  L0_0 = L0_0.GetSource
  L0_0 = L0_0()
  L1_1 = _id
  L1_1 = L1_1.M4C3_Fuel
  if L0_0 == L1_1 then
    L1_1 = _util
    L1_1 = L1_1.SetVar
    L1_1("M4C3_combinedJetPack", 1)
    L1_1 = _util
    L1_1 = L1_1.ActivateNpc
    L1_1(_id.M4C3_JPG_WC, 300)
    L1_1 = _util
    L1_1 = L1_1.RemoveInventoryItem
    L1_1(_id.M4C3_Fuel)
  end
end
