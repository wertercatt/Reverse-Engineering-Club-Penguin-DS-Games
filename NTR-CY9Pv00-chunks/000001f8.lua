local L0_0, L1_1, L2_2, L3_3
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.CREATED
if L0_0 == L1_1 then
  L0_0 = _util
  L0_0 = L0_0.AddInterest
  L1_1 = _const
  L1_1 = L1_1.COMMUNICATOR
  L0_0(L1_1)
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
  if L2_2 == 0 then
    L3_3 = _util
    L3_3 = L3_3.AddNPCText
    L3_3(_text.M11_SKI4_GARY_1, _const.CHANGE_DIALOG, -1, 1)
  elseif L2_2 == 1 then
    function L3_3()
      _util.DisableInput()
      _util.ChangeBaseAnim("NPC/M11/Gary/GaryPopPhoneRing", _id.M11_GaryPopPhone)
      _util.PlaySFX(154)
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_id.M11_GaryPopPhone)
      _util.ChangeBaseAnim("NPC/M11/Gary/GaryPopPhone", _id.M11_GaryPopPhone)
      _util.AddNPCText(_text.M11_SKI4_GARY_2, _const.CHANGE_NPC, _id.M11_VillageDot, 2)
      _util.EnableInput(true)
    end
    scriptPlay(L3_3)
  elseif L2_2 == 2 then
    L3_3 = _util
    L3_3 = L3_3.ChangeBaseAnim
    L3_3("NPC/M11/Gary/GaryPop", _id.M11_GaryPopPhone)
    L3_3 = _util
    L3_3 = L3_3.AddNPCText
    L3_3(_text.M11_SKI4_GARY_3, _const.CHANGE_DIALOG, -1, 3)
  elseif L2_2 == 3 then
    L3_3 = _util
    L3_3 = L3_3.AddNPCText
    L3_3(_text.M11_SKI4_GARY_4, _const.CHANGE_NPC, _id.M11_VillageRookiePop, 10)
  elseif L2_2 == 4 then
    L3_3 = _util
    L3_3 = L3_3.AddNPCText
    L3_3(_text.M11_SKI4_GARY_5, _const.CHANGE_NPC, _id.M11_VillageDot, 4)
  elseif L2_2 == 5 then
    L3_3 = _util
    L3_3 = L3_3.AddNPCText
    L3_3(_text.M11_SKI4_GARY_6)
    L3_3 = _util
    L3_3 = L3_3.AddPlayerOption
    L3_3(_text.M11_SKI4_A_6, _const.CHANGE_NPC, _id.M11_VillageDot, 5)
  elseif L2_2 == 6 then
    L3_3 = _util
    L3_3 = L3_3.AddNPCText
    L3_3(_text.M11_SKI4_GARY_7, _const.CHANGE_NPC, _id.M11_VillageRookiePop, 12)
  end
end
