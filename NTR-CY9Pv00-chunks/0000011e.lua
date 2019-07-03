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
    function L3_3()
      _util.ChangeBaseAnim("NPC/WaddleSquad/Herbert/NCMagnet", _id.M10_NCHerbertStuck, "climb")
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_id.M10_NCHerbertStuck)
      _util.ChangeBaseAnim("NPC/WaddleSquad/Herbert/NCStuck", _id.M10_NCHerbertStuck)
      _util.AddDialog(_text.M10_NIGHTCLUB_ROOKIEA, _const.CHANGE_NPC, _id.M10_NightClubJPG, 0)
      _util.SetConversationCount(1)
      _util.SetVar("Stuck", 1)
    end
    scriptPlay(L3_3)
  elseif L2_2 == 1 then
    L3_3 = _util
    L3_3 = L3_3.AddConversation
    L3_3(_text.M10_NIGHTCLUB_ROOKIE_MAGNETON2, _text.M10_NIGHTCLUB_PLAYERA_Q1, -1, _const.END_DIALOG, 1)
  elseif L2_2 == 100 then
    function L3_3()
      _util.StartCutscene(_const.HERBERTTRAPPED)
      repeat
        scriptWait()
      until _util.GetGameState() ~= _const.MISSION
      repeat
        scriptWait()
      until _util.GetGameState() == _const.MISSION
      _util.DelItem(_id.M10_NightClubHerbertMagnet)
      _util.DelItem(_id.M10_NightClubJPG)
      _util.DelItem(_id.M10_NightClubRookie)
      _util.DelItem(_id.M10_ThrownCage)
      _util.DelItem(_id.M10_ThrownCage2)
      _util.DelItem(_id.M10_ThrownCage3)
      _util.AddItem(_id.M10_NightClubCageL)
      _util.AddItem(_id.M10_NightClubCageR)
      _util.AddItem(_id.M10_GoldenPuffleOnMagnet)
      _util.AddItem(_id.M10_NightClubHerbertCaged, 1)
      _util.AddItem(_id.M10_CageBarsEnd, 1)
      _util.AddItem(_id.M10_RookieNCFront, 1)
      _util.AddItem(_id.M10_JPGNCFront, 1)
      if _util.GetVar("usedJetpack") == 0 then
        _util.ChangeBaseAnim("NPC/WaddleSquad/JetPackGuy/jpgNC", _id.M10_JPGNCFront)
      end
      _util.ActivateNpc(_id.M10_NightClubHerbertCaged, 3)
      _util.EnableInput()
    end
    scriptPlay(L3_3)
  elseif L2_2 == 2 then
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M10_NIGHTCLUB_ROOKIEC, _const.CHANGE_NPC, _id.M10_JPGNCFront, 3)
  elseif L2_2 == 3 then
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M10_NIGHTCLUB_ROOKIEJ, _const.CHANGE_DIALOG, 10)
    L3_3 = _util
    L3_3 = L3_3.ChangeBaseAnim
    L3_3("NPC/WaddleSquad/Rookie/rNC", _id.M10_RookieNCFront, "phone")
  elseif L2_2 == 10 then
    function L3_3()
      _util.ChangeBaseAnim("NPC/WaddleSquad/Herbert/NCPhone", _id.M10_NightClubHerbertCaged, "take")
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_id.M10_NightClubHerbertCaged)
      _util.ChangeBaseAnim("NPC/WaddleSquad/Gary/gNCWait", _id.M10_NightClubGary)
      if _util.GetVar("usedJetpack") == 0 then
        _util.ChangeBaseAnim("NPC/WaddleSquad/JetPackGuy/jpgNCWait", _id.M10_JPGNCFront)
      else
        _util.ChangeBaseAnim("NPC/WaddleSquad/JetPackGuy/jpgNCWaitNoPac", _id.M10_JPGNCFront)
      end
      _util.ActivateNpc(_id.M10_NightClubGary, 10)
    end
    scriptPlay(L3_3)
  elseif L2_2 == 4 then
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M10_NIGHTCLUB_ROOKIEL, _const.CHANGE_NPC, _id.M10_JPGNCFront, 4)
  end
end
