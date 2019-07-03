local L0_0, L1_1, L2_2
L0_0 = _util
L0_0 = L0_0.GetActiveMission
L0_0 = L0_0()
L1_1 = _util
L1_1 = L1_1.GetActiveChapter
L1_1 = L1_1()
L2_2 = _util
L2_2 = L2_2.GetReason
L2_2 = L2_2()
if L2_2 == _const.CREATED then
  L2_2 = _util
  L2_2 = L2_2.AddInterest
  L2_2(_const.TOUCHED)
  L2_2 = _util
  L2_2 = L2_2.AddInterest
  L2_2(_const.ITEM_DROPPED)
end
if L0_0 == 1 then
  L2_2 = _util
  L2_2 = L2_2.GetReason
  L2_2 = L2_2()
  if L2_2 == _const.TOUCHED then
    L2_2 = _util
    L2_2 = L2_2.AddMonologue
    L2_2(139)
  end
elseif L0_0 == 2 and (L1_1 == 1 or L1_1 == 2) then
  L2_2 = _util
  L2_2 = L2_2.GetReason
  L2_2 = L2_2()
  if L2_2 == _const.TOUCHED then
    L2_2 = _util
    L2_2 = L2_2.AddMonologue
    L2_2(929)
  end
elseif L0_0 == 0 and L1_1 == 12 then
  L2_2 = _util
  L2_2 = L2_2.GetReason
  L2_2 = L2_2()
  if L2_2 == _const.TOUCHED then
    L2_2 = _util
    L2_2 = L2_2.GetConversationCount
    L2_2 = L2_2()
    if L2_2 == 0 then
      _util.AddLoopingConv(3049)
      _util.AddLoopingOption(3050, -1, _const.END_DIALOG, 1)
      _util.AddLoopingOption(3051, -1, _const.END_DIALOG, 0)
    elseif L2_2 == 1 then
      _util.AddMonologue(4813, "DialogStrings", _const.END_DIALOG, 1)
    end
  end
  L2_2 = _util
  L2_2 = L2_2.GetReason
  L2_2 = L2_2()
  if L2_2 == _const.ITEM_DROPPED then
    L2_2 = _util
    L2_2 = L2_2.GetSource
    L2_2 = L2_2()
    if L2_2 == _id.Inventory_SpyFlashlight then
      function L2_2()
        _util.StartMiniGame(_const.FLASHLIGHT, 1)
        repeat
          scriptWait()
        until _util.GetGameState() ~= _const.MISSION
        repeat
          scriptWait()
          if _util.GetMinigameOutput1() == 1 then
            _util.SetNextRoom(43)
          end
        until _util.GetGameState() == _const.MISSION
      end
      scriptPlay(L2_2)
      _util.SetConversationCount(0)
    end
  end
else
  L2_2 = _util
  L2_2 = L2_2.GetReason
  L2_2 = L2_2()
  if L2_2 == _const.TOUCHED then
    L2_2 = _util
    L2_2 = L2_2.GetSelf
    L2_2 = L2_2()
    if _util.GetExitLocked(L2_2) then
      _util.AddMonologue(139, "DialogStrings")
    end
  end
end
