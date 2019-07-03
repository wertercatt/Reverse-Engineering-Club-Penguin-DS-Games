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
  L0_0 = _util
  L0_0 = L0_0.AddInterest
  L1_1 = _const
  L1_1 = L1_1.ITEM_DROPPED
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
    L3_3 = L3_3.AddLoopingConv
    L3_3(_text.M6_GADGETROOM_INTRO)
    L3_3 = _util
    L3_3 = L3_3.AddLoopingOption
    L3_3(_text.M6_GADGETROOM_GARY_Q1, -1, _const.CHANGE_DIALOG, 3)
    L3_3 = _util
    L3_3 = L3_3.AddLoopingOption
    L3_3(_text.M6_GADGETROOM_GARY_Q2, -1, _const.CHANGE_DIALOG, 4)
    L3_3 = _util
    L3_3 = L3_3.AddLoopingOption
    L3_3(_text.M6_GADGETROOM_GARY_QUIT, -1, _const.CHANGE_DIALOG, 1)
  elseif L2_2 == 1 then
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M6_GADGETROOM_GARY_QUITRESPONSE, _const.END_DIALOG, 2)
  elseif L2_2 == 2 then
    L3_3 = _util
    L3_3 = L3_3.AddLoopingConv
    L3_3(_text.M6_GADGETROOM_INTRO2)
    L3_3 = _util
    L3_3 = L3_3.AddLoopingOption
    L3_3(_text.M6_GADGETROOM_GARY_Q1, -1, _const.CHANGE_DIALOG, 3)
    L3_3 = _util
    L3_3 = L3_3.AddLoopingOption
    L3_3(_text.M6_GADGETROOM_GARY_Q2, -1, _const.CHANGE_DIALOG, 4)
    L3_3 = _util
    L3_3 = L3_3.AddLoopingOption
    L3_3(_text.M6_GADGETROOM_GARY_QUIT, -1, _const.CHANGE_DIALOG, 1)
  elseif L2_2 == 3 then
    L3_3 = _util
    L3_3 = L3_3.ChangeBaseAnim
    L3_3("NPC/QuestionsCrab/Gary/GaryGR2")
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M6_GADGETROOM_GARY_A1, _const.CHANGE_DIALOG, 5)
  elseif L2_2 == 4 then
    L3_3 = _util
    L3_3 = L3_3.ChangeBaseAnim
    L3_3("NPC/QuestionsCrab/Gary/GaryGR2")
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M6_GADGETROOM_GARY_A2, _const.CHANGE_DIALOG, 5)
  elseif L2_2 == 5 then
    function L3_3()
      if _util.GetVar("M6_SkiVillageComplete") == 0 and _util.GetVar("M6_SkiHillComplete") == 0 then
        _util.CutsceneQueueBegin()
        _util.SetVar("M6_SkiVillageComplete", 1)
        _util.SetVar("M6_SportComplete", 1)
        _util.SetVar("M6_HQComplete", 1)
        _util.DisableInput()
        _util.StartCutscene(_const.KLUTZYSKILIFT)
        repeat
          scriptWait()
        until _util.GetGameState() ~= _const.MISSION
        repeat
          scriptWait()
        until _util.GetGameState() == _const.MISSION
        _util.EnableInput()
        _util.CutsceneQueueEnd()
      end
    end
    m6_klutzyGoesUp = L3_3
    L3_3 = _util
    L3_3 = L3_3.AddScriptQueue
    L3_3(99, "m6_klutzyGoesUp", 0, 0)
    function L3_3()
      if _util.GetVar("cageDropped") == 0 then
        _util.SetVar("cageDropped", 1)
        _util.CutsceneQueueBegin()
        _util.DisableInput()
        _util.SetVar("M6_getTrapped", 1)
        _util.DisableSpyPodFunc(_const.FLAG_COMMUNICATOR)
        _util.StartCutscene(_const.CAGEDROP)
        _util.SetNextRoom(14)
        repeat
          scriptWait()
        until _util.GetGameState() ~= _const.MISSION
        repeat
          scriptWait()
        until _util.GetGameState() == _const.MISSION
        _util.EnableInput()
        _util.CutsceneQueueEnd()
      end
    end
    m6_cageDropping = L3_3
    L3_3 = _util
    L3_3 = L3_3.AddScriptQueue
    L3_3(16, "m6_cageDropping", 0, 0)
    L3_3 = _util
    L3_3 = L3_3.ChangeBaseAnim
    L3_3("NPC/QuestionsCrab/Gary/GaryGR")
    function L3_3()
      _util.StartCutscene(_const.KLUTZYESCAPES)
      repeat
        scriptWait()
      until _util.GetGameState() ~= _const.MISSION
      repeat
        scriptWait()
      until _util.GetGameState() == _const.MISSION
      _util.AddItem(_id.M6_cageBroke)
      _util.AddItem(_id.M6_TlatorBroke1)
      _util.AddItem(_id.M6_TlatorBroke2)
      _util.AddItem(_id.M6_TlatorBroke3)
      _util.AddItem(_id.M6_TlatorBroke4)
      _util.AddItem(_id.M6_TlatorGearBroke)
      _util.AddItem(_id.M6_TlatorDialBroke)
      _util.AddItem(_id.M6_TlatorFire)
      _util.DelItem(_id.M6_TlatorSign1)
      _util.DelItem(_id.M6_TlatorSign2)
      _util.DelItem(_id.M6_Tlator3)
      _util.DelItem(_id.M6_Cage)
      _util.DelItem(_id.M6_CageObject)
      _util.DelItem(_id.M6_TlatorTable)
      _util.AddItem(_id.M6_GaryExploded)
      _util.DelItem(_id.M6_Gary_Gadget)
      _util.SetSpawn(1, _id.M5_HQ_Klutzy)
      _util.SetSpawn(1, _id.M5_Sport_Klutzy)
      _util.SetSpawn(1, _id.M5_SkiHill_Klutzy)
      _util.SetSpawn(1, _id.M6_door2wilderness)
      _util.ActivateNpc(_id.M6_GaryExploded, 6)
    end
    scriptPlay(L3_3)
  elseif L2_2 == 6 then
    L3_3 = _util
    L3_3 = L3_3.SetVar
    L3_3("M6_TlatorBroken", 1)
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M6_GADGETROOM_GARY_POSTMESS, _const.END_DIALOG, 6)
    L3_3 = _util
    L3_3 = L3_3.AddObjective
    L3_3(_text.M6_OBJ1)
  end
end
L3_3 = _util
L3_3 = L3_3.GetReason
L3_3 = L3_3()
if L3_3 == _const.ITEM_DROPPED then
  L3_3 = _util
  L3_3 = L3_3.GetSource
  L3_3 = L3_3()
  if L3_3 == _id.M5_KluztyInventory then
  end
end
L3_3 = _util
L3_3 = L3_3.GetReason
L3_3 = L3_3()
if L3_3 == _const.COMMUNICATOR then
  L3_3 = _util
  L3_3 = L3_3.GetComCount
  L3_3 = L3_3()
end
