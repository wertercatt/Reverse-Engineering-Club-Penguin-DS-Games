local L0_0, L1_1, L2_2, L3_3
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.CREATED
if L0_0 == L1_1 then
end
L0_0 = _util
L0_0 = L0_0.GetActiveMission
L0_0 = L0_0()
L1_1 = _util
L1_1 = L1_1.GetActiveChapter
L1_1 = L1_1()
L2_2 = _util
L2_2 = L2_2.GetConversationCount
L2_2 = L2_2()
L3_3 = _util
L3_3 = L3_3.GetReason
L3_3 = L3_3()
if L3_3 == _const.TOUCHED then
  L3_3 = _util
  L3_3 = L3_3.PlayHerbertLurking
  L3_3()
  if L2_2 == 1 then
    function L3_3()
      _util.DisableInput()
      _util.PushCamera()
      _util.SetConversationCount(2)
      _util.PopCamera()
      _util.EnableInput()
      _util.ChangeBaseAnim("NPC/M11/Herbert/HerbProjInviz", _id.M11_VillageHerbert)
      _util.DelItem(_id.M11_VillageHerbertBG)
      _util.AddItem(_id.M11_VillageStatic)
      _util.AddNPCText(_text.M11_SKI3_HERBERT_1, _const.CHANGE_NPC, _id.M11_VillageJPG, 2)
    end
    scriptPlay(L3_3)
  elseif L2_2 > 1 then
    L3_3 = _util
    L3_3 = L3_3.RestoreSongFromHerbert
    L3_3()
  end
end
