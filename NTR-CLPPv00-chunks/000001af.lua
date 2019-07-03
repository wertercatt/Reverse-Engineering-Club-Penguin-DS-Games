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
  L1_1 = _util
  L1_1 = L1_1.GetVar
  L1_1 = L1_1("FPMission_Started")
  if L1_1 ~= 0 then
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("FPMission_Started")
    if L1_1 ~= 2 then
      L1_1 = _util
      L1_1 = L1_1.AddDialog
      L1_1(3394, _const.END_DIALOG, 0)
    end
  elseif L0_0 == 0 then
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("FPMission_Started")
    if L1_1 == 0 then
      L1_1 = _util
      L1_1 = L1_1.AddLoopingConv
      L1_1(3395)
      L1_1 = _util
      L1_1 = L1_1.AddLoopingOption
      L1_1(3396, 3398, _const.CHANGE_DIALOG, 1)
      L1_1 = _util
      L1_1 = L1_1.AddLoopingOption
      L1_1(3397, -1, _const.END_DIALOG, 0)
    end
  elseif L0_0 == 1 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(3398, 3399, -1, _const.CHANGE_DIALOG, 2)
  elseif L0_0 == 2 then
    L1_1 = _util
    L1_1 = L1_1.AddLoopingConv
    L1_1(3400)
    L1_1 = _util
    L1_1 = L1_1.AddLoopingOption
    L1_1(3401, -1, _const.CHANGE_DIALOG, 3)
    L1_1 = _util
    L1_1 = L1_1.AddLoopingOption
    L1_1(3402, -1, _const.CHANGE_DIALOG, 22)
  elseif L0_0 == 22 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(4434, _const.END_DIALOG, 0)
  elseif L0_0 == 3 then
    function L1_1()
      _util.SetVar("FP02_introMine", 1)
      _util.SetVar("FPMission_Started", 2)
      _util.StartCutscene(_const.FPM02INTRO)
      repeat
        scriptWait()
      until _util.GetGameState() ~= _const.MISSION
      repeat
        scriptWait()
      until _util.GetGameState() == _const.MISSION
      _util.SetObjective(12)
      _util.SetExitLocked(_id.Doors_MineInt2Pool, true)
      _util.ActivateNpc(_id.FP02_NPC_MineInt, 4)
    end
    scriptPlay(L1_1)
  elseif L0_0 == 4 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(3403, 3404, -1, _const.CHANGE_DIALOG, 5)
  elseif L0_0 == 5 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(3405, 3406, -1, _const.CHANGE_DIALOG, 6)
  elseif L0_0 == 6 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(3407, _const.END_DIALOG, 7)
  elseif L0_0 == 7 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(3408, _const.END_DIALOG, 7)
  end
end
