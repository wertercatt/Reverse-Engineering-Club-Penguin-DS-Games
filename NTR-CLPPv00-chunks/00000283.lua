local L0_0, L1_1
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.CREATED
if L0_0 == L1_1 then
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
  if L0_0 == 0 then
    L1_1 = _util
    L1_1 = L1_1.AddLoopingConv
    L1_1(1454)
    L1_1 = _util
    L1_1 = L1_1.AddLoopingOption
    L1_1(1455, 1458, _const.UPDATE_LOOP)
    L1_1 = _util
    L1_1 = L1_1.AddLoopingOption
    L1_1(1456, 1459, _const.CHANGE_DIALOG, 1)
    L1_1 = _util
    L1_1 = L1_1.AddLoopingOption
    L1_1(1457, -1, _const.CHANGE_DIALOG, 10)
  elseif L0_0 == 10 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(4408, _const.END_DIALOG, 0)
  elseif L0_0 == 1 then
    L1_1 = _util
    L1_1 = L1_1.AddLoopingConv
    L1_1(1459)
    L1_1 = _util
    L1_1 = L1_1.AddLoopingOption
    L1_1(1460, -1, _const.CHANGE_DIALOG, 2)
    L1_1 = _util
    L1_1 = L1_1.AddLoopingOption
    L1_1(1461, -1, _const.CHANGE_DIALOG, 11)
  elseif L0_0 == 11 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(4409, _const.END_DIALOG, 1)
  elseif L0_0 == 2 then
    function L1_1()
      repeat
        scriptWait()
      until _util.GetGameState() ~= _const.MISSION
      repeat
        scriptWait()
      until _util.GetGameState() == _const.MISSION
      _util.SetCursorPos(_util.GetX(_id.M3C1_DancerNPC), _util.GetY(_id.M3C1_DancerNPC), 1)
      if _util.GetMinigameOutput1() == 1 then
        _util.ActivateNpc(_id.M3C1_DancerNPC, 5)
      else
        _util.ActivateNpc(_id.M3C1_DancerNPC, 3)
      end
    end
    _util.StartMiniGame(_const.DANCE_CHALLENGE)
    scriptPlay(L1_1)
  elseif L0_0 == 3 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(1462, _const.END_DIALOG, 4)
  elseif L0_0 == 4 then
    L1_1 = _util
    L1_1 = L1_1.AddLoopingConv
    L1_1(1463)
    L1_1 = _util
    L1_1 = L1_1.AddLoopingOption
    L1_1(1464, -1, _const.CHANGE_DIALOG, 2)
    L1_1 = _util
    L1_1 = L1_1.AddLoopingOption
    L1_1(1465, 1467, _const.UPDATE_LOOP)
    L1_1 = _util
    L1_1 = L1_1.AddLoopingOption
    L1_1(1466, -1, _const.CHANGE_DIALOG, 44)
  elseif L0_0 == 44 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(4409, _const.END_DIALOG, 4)
  elseif L0_0 == 5 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(1468, 1469, -1, _const.CHANGE_DIALOG, 6)
  elseif L0_0 == 6 then
    L1_1 = _util
    L1_1 = L1_1.SetCursorPos
    L1_1(_util.GetX(_id.M3C1_Pop_Night), _util.GetY(_id.M3C1_Pop_Night), 1)
    L1_1 = _util
    L1_1 = L1_1.AddMonologue
    L1_1(1470, "DialogStrings", _const.CHANGE_DIALOG, 7)
  elseif L0_0 == 7 then
    L1_1 = _util
    L1_1 = L1_1.AddMonologue
    L1_1(1471, "DialogStrings", _const.CHANGE_DIALOG, 8)
  elseif L0_0 == 8 then
    function L1_1()
      _util.DisableInput()
      _util.DelItem(_id.M3C1_DJ_Night)
      _util.DelItem(_id.M3C1_DancerNPC)
      _util.AddItem(_id.M3C1_DancerScared)
      _util.AddItem(_id.M3C1_DJScared)
      _util.HideMap()
      _util.ScreenShake(60)
      _util.PlaySFX(114)
      repeat
        scriptWait()
      until 60 <= 0 + 1
      _util.EnableInput()
      _util.SetVar("M3C1_impressedPop", 1)
      _util.SetCursorPos(_util.GetX(_id.M3C1_DancerScared), _util.GetY(_id.M3C1_DancerScared), 1)
      _util.SetCursorPos(_util.GetX(_id.M3C1_DJScared), _util.GetY(_id.M3C1_DJScared))
      _util.ActivateNpc(_id.M3C1_DJScared, 80)
      _util.DelItem(_id.M3C1_Pop_Night)
      _util.SetPuffle(_id.Inventory_PufflePurple)
      _util.EnablePuffle(_const.FLAG_PURPLE)
      _util.SetObjective(646)
    end
    scriptPlay(L1_1)
  elseif L0_0 == 82 then
    L1_1 = _util
    L1_1 = L1_1.SetExitLocked
    L1_1(_id.Doors_NightClub2Town, true)
    L1_1 = _util
    L1_1 = L1_1.SetExitLocked
    L1_1(_id.Doors_NightClub2Boiler, false)
    L1_1 = _util
    L1_1 = L1_1.SetCursorPos
    L1_1(_util.GetX(_id.M3C1_DancerScared), _util.GetY(_id.M3C1_DancerScared))
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(1477, 1478, -1, _const.CHANGE_DIALOG, 822)
  elseif L0_0 == 822 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(4410, _const.END_DIALOG, 83)
  elseif L0_0 == 83 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(1574, _const.END_DIALOG, 83)
  end
end
