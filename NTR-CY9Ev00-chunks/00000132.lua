local L0_0, L1_1
L0_0 = _util
L0_0 = L0_0.GetActiveMission
L0_0 = L0_0()
L1_1 = _util
L1_1 = L1_1.GetActiveChapter
L1_1 = L1_1()
setupItems(L0_0, L1_1)
spypodCheck(L0_0, L1_1)
mapCheck(L0_0, L1_1)
communicatorCheck(L0_0, L1_1)
if L0_0 == 10 then
  if _util.GetVar("c4IntroProgression") == 6 then
    _util.ClearCom()
    _util.SetupComNpc(_const.COM_GARY, _id.C4_CommandRoom_NPC_Gary, 20)
    _util.ActivateNpc(_id.C4_MineShack_NPC_Rookie, 0)
    _util.SetVar("c4IntroProgression", 7)
  elseif _util.GetVar("c4IntroProgression") == 8 then
    _util.ActivateNpc(_id.C4_MineShack_NPC_Dot, 1)
    _util.SetVar("c4IntroProgression", 9)
  end
end
