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
  if L2_2 == 0 then
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M10_NIGHTCLUB_JPGA, _const.END_DIALOG, 1)
  elseif L2_2 == 1 then
    function L3_3()
      _util.ChangeBaseAnim("NPC/WaddleSquad/JetPackGuy/jpgNCBack", _util.GetSelf(), "turn")
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_util.GetSelf())
      _util.SetVar("usedJetpack", 1)
      _util.AddInventoryItem(_id.M10_JetPackInventory)
      _util.ChangeBaseAnim("NPC/WaddleSquad/JetPackGuy/jpgNCBackNoPac")
      _util.SetConversationCount(2)
    end
    scriptPlay(L3_3)
  elseif L2_2 == 2 then
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M10_NIGHTCLUB_JPG_WJETPACK, _const.END_DIALOG, 2)
  elseif L2_2 == 3 then
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M10_NIGHTCLUB_JPGC, _const.CHANGE_NPC, _id.M10_NightClubHerbertCaged, 4)
  elseif L2_2 == 4 then
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M10_NIGHTCLUB_JPGL, _const.CHANGE_NPC, _id.M10_NightClubGary, 99)
  end
end
