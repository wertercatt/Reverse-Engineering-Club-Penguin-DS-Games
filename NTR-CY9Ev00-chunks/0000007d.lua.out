local L0_0
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
if L0_0 == _const.CREATED then
end
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
if L0_0 == _const.TOUCHED then
  L0_0 = _util
  L0_0 = L0_0.SetSpawn
  L0_0(0, _id.Doors_Cornmaze2_1)
  L0_0 = _util
  L0_0 = L0_0.SetSpawn
  L0_0(1, _id.Doors_Cornmaze2_2)
  L0_0 = _util
  L0_0 = L0_0.SetVar
  L0_0("mazeDoors", 8)
  function L0_0()
    _util.StartMiniGame(_const.LABYRINTH, 6)
    repeat
      scriptWait()
    until _util.GetGameState() ~= _const.MISSION
    repeat
      scriptWait()
      if _util.GetMinigameOutput1() == 1 and false == false then
        _util.SetNextRoom(25)
      end
    until _util.GetGameState() == _const.MISSION
  end
  scriptPlay(L0_0)
end
