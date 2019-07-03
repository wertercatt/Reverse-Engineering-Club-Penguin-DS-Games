local L0_0, L1_1, L2_2, L3_3, L4_4
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
  L1_1 = _util
  L1_1 = L1_1.GetSelf
  L1_1 = L1_1()
  L2_2 = _util
  L2_2 = L2_2.GetActiveMission
  L2_2 = L2_2()
  L3_3 = _util
  L3_3 = L3_3.GetActiveChapter
  L3_3 = L3_3()
  L4_4 = _id
  L4_4 = L4_4.FP_CartEasy
  if L1_1 == L4_4 then
    if L2_2 == 0 then
      L4_4 = _util
      L4_4 = L4_4.GetVar
      L4_4 = L4_4("FP02_introMine")
      if L4_4 == 1 then
        L4_4 = _util
        L4_4 = L4_4.AddMonologue
        L4_4(3410, "DialogStrings", _const.END_DIALOG, 0)
      end
    elseif L0_0 == 0 then
      L4_4 = _util
      L4_4 = L4_4.AddLoopingConv
      L4_4(4312)
      L4_4 = _util
      L4_4 = L4_4.AddLoopingOption
      L4_4(4313, -1, _const.CHANGE_DIALOG, 1)
      L4_4 = _util
      L4_4 = L4_4.AddLoopingOption
      L4_4(4314, -1, _const.END_DIALOG, 0)
    elseif L0_0 == 1 then
      L4_4 = _util
      L4_4 = L4_4.SetConversationCount
      L4_4(0)
      L4_4 = _util
      L4_4 = L4_4.StartMiniGame
      L4_4(_const.CART_SURFER, 1, 0)
    end
  elseif L2_2 == 0 then
    L4_4 = _util
    L4_4 = L4_4.GetVar
    L4_4 = L4_4("FP02_introMine")
    if L4_4 == 1 then
      if L0_0 == 0 then
        L4_4 = _util
        L4_4 = L4_4.AddLoopingConv
        L4_4(3411)
        L4_4 = _util
        L4_4 = L4_4.AddLoopingOption
        L4_4(3412, -1, _const.CHANGE_DIALOG, 1)
        L4_4 = _util
        L4_4 = L4_4.AddLoopingOption
        L4_4(3413, -1, _const.END_DIALOG, 0)
      elseif L0_0 == 1 then
        function L4_4()
          _util.DisableInput()
          _util.DelItem(_id.FP02_NPC_MineInt)
          _util.SetSpawn(1, _id.FP02_NPC_MineShack)
          _util.SetVar("FPM02_missionComplete", 0)
          repeat
            scriptWait()
          until _util.GetGameState() ~= _const.MISSION
          repeat
            scriptWait()
            if _util.GetMinigameOutput1() == 1 then
              _util.SetNextRoom(25)
              _util.SetExitLocked(_id.Doors_MineInt2Pool, false)
              _util.SetVar("FP02_introMine", 2)
            end
          until _util.GetGameState() == _const.MISSION
          _util.EnableInput()
          if _util.GetMinigameOutput1() ~= 1 then
            _util.AddMonologue(3414, "DialogStrings", _const.END_DIALOG, 0)
          end
        end
        _util.SetConversationCount(0)
        _util.StartMiniGame(_const.CART_SURFER, 1, 1)
        scriptPlay(L4_4)
      end
    end
  elseif L3_3 < 5 then
    L4_4 = _util
    L4_4 = L4_4.AddMonologue
    L4_4(4318)
  elseif L0_0 == 0 then
    L4_4 = _util
    L4_4 = L4_4.AddLoopingConv
    L4_4(4315)
    L4_4 = _util
    L4_4 = L4_4.AddLoopingOption
    L4_4(4316, -1, _const.CHANGE_DIALOG, 1)
    L4_4 = _util
    L4_4 = L4_4.AddLoopingOption
    L4_4(4317, -1, _const.END_DIALOG, 0)
  elseif L0_0 == 1 then
    L4_4 = _util
    L4_4 = L4_4.SetConversationCount
    L4_4(0)
    L4_4 = _util
    L4_4 = L4_4.StartMiniGame
    L4_4(_const.CART_SURFER, 1, 1)
  end
end
