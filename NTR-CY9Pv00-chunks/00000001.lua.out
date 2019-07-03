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
    L3_3 = L3_3.ChangeBaseAnim
    L3_3("NPC/SpySeek/Gary/GaryHQRemote", _id.M9_GaryHQ)
    L3_3 = _util
    L3_3 = L3_3.AddLoopingConv
    L3_3(_text.M9_GADGETROOM_GREET3)
    L3_3 = _util
    L3_3 = L3_3.AddLoopingOption
    L3_3(_text.M9_GADGETROOM_GARYK_Q1, -1, _const.CHANGE_DIALOG, 46)
    L3_3 = _util
    L3_3 = L3_3.AddLoopingOption
    L3_3(_text.M9_GADGETROOM_GARYK_Q2, -1, _const.CHANGE_DIALOG, 48)
  elseif L2_2 == 46 then
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M9_GADGETROOM_GARYK_A1_2B, _const.CHANGE_DIALOG, 47)
  elseif L2_2 == 47 then
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M9_GADGETROOM_GARYK_B, _const.CHANGE_DIALOG, 100)
    L3_3 = _util
    L3_3 = L3_3.SetVar
    L3_3("WatchScreen", 1)
  elseif L2_2 == 100 then
    function L3_3()
      _util.StartCutscene(_const.HERBSCAMPEND)
      repeat
        scriptWait()
      until _util.GetGameState() ~= _const.MISSION
      repeat
        scriptWait()
      until _util.GetGameState() == _const.MISSION
      _util.ActivateNpc(_id.M9_GaryHQ, 52)
    end
    scriptPlay(L3_3)
  elseif L2_2 == 48 then
    L3_3 = _util
    L3_3 = L3_3.AddLoopingConv
    L3_3(_text.M9_GADGETROOM_GARYK_A2_2L)
    L3_3 = _util
    L3_3 = L3_3.AddLoopingOption
    L3_3(_text.M9_GADGETROOM_GARYL_Q1, _text.M9_GADGETROOM_GARYL_A1_2GARYQ, _const.UPDATE_LOOP)
    L3_3 = _util
    L3_3 = L3_3.AddLoopingOption
    L3_3(_text.M9_GADGETROOM_GARYL_Q2, -1, _const.CHANGE_DIALOG, 49)
    L3_3 = _util
    L3_3 = L3_3.AddLoopingOption
    L3_3(_text.M9_GADGETROOM_GARYL_Q4, _text.M9_GADGETROOM_GARYL_B4_2GARYQ, _const.UPDATE_LOOP)
  elseif L2_2 == 49 then
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M9_GADGETROOM_GARYL_A2_2B, _const.CHANGE_DIALOG, 50)
  elseif L2_2 == 50 then
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M9_GADGETROOM_GARYL_B2_2GARYQ, _const.CHANGE_DIALOG, 51)
  elseif L2_2 == 51 then
    L3_3 = _util
    L3_3 = L3_3.AddLoopingConv
    L3_3(_text.M9_GADGETROOM_GARYL_GARYQ)
    L3_3 = _util
    L3_3 = L3_3.AddLoopingOption
    L3_3(_text.M9_GADGETROOM_GARYL_Q1, _text.M9_GADGETROOM_GARYL_A1_2GARYQ, _const.UPDATE_LOOP)
    L3_3 = _util
    L3_3 = L3_3.AddLoopingOption
    L3_3(_text.M9_GADGETROOM_GARYL_Q4, _text.M9_GADGETROOM_GARYL_B4_2GARYQ, _const.UPDATE_LOOP)
    L3_3 = _util
    L3_3 = L3_3.AddLoopingOption
    L3_3(_text.M9_GADGETROOM_GARYL_Q3_2GARYK_B, -1, _const.CHANGE_DIALOG, 47)
  elseif L2_2 == 52 then
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M9_GADGETROOM_OUTRO1, _const.CHANGE_DIALOG, 53)
  elseif L2_2 == 53 then
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M9_GADGETROOM_OUTRO2, _const.CHANGE_DIALOG, 54)
  elseif L2_2 == 54 then
    L3_3 = _util
    L3_3 = L3_3.TriggerDGamerHonor
    L3_3(_const.DG_HONOR_TRACK_AND_SNOW)
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M9_GADGETROOM_OUTRO3, _const.END_MISSION)
  end
end
