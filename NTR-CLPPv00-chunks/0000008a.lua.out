local L0_0
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
if L0_0 == _const.CREATED then
  L0_0 = _util
  L0_0 = L0_0.AddInterest
  L0_0(_const.TOUCHED)
end
L0_0 = _util
L0_0 = L0_0.GetVar
L0_0 = L0_0("FP03_introForest")
if L0_0 == 1 then
  L0_0 = _util
  L0_0 = L0_0.GetReason
  L0_0 = L0_0()
  if L0_0 == _const.TOUCHED then
    function L0_0()
      _util.StartMiniGame(_const.JIGSAW, 0)
      repeat
        scriptWait()
      until _util.GetGameState() ~= _const.MISSION
      repeat
        scriptWait()
      until _util.GetGameState() == _const.MISSION
      if _util.GetMinigameOutput1() == 1 then
        _util.SetVar("FP03_introForest", 2)
        _util.AddItem(_id.FP03_TourGuide_Forest)
        _util.ActivateNpc(_id.FP03_NPC1_Forest, 10)
      else
        _util.ActivateNpc(_id.FP03_NPC1_Forest, 9)
      end
    end
    scriptPlay(L0_0)
  end
end
