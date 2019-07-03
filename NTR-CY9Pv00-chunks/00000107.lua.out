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
if _util.GetVar("C2_RookieComm") == 0 then
  _util.SetVar("C2_RookieComm", 1)
  _util.ClearCom()
  _util.SetupComNpc(_const.COM_ROOKIE, _id.C2_CR_Rookie, 3)
  _util.LaunchCommunicator()
elseif _util.GetVar("C2_CommEnd") == 1 then
  _util.ChangeBaseAnim("NPC/M2/Herbert/HerbBRMad", _id.C2_HBWorkshop_Herb)
  _util.ActivateNpc(_id.C2_HBWorkshop_Herb, 13)
end
