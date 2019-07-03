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
  L1_1 = L1_1.ITEM_DROPPED
  L0_0(L1_1)
end
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.TOUCHED
if L0_0 == L1_1 then
  L0_0 = _util
  L0_0 = L0_0.GetConversationCount
  L0_0 = L0_0()
  function L1_1()
    _util.DisableInput()
    _util.PushCamera(_id.M1C2_Blast)
    _util.SwitchState("cannonCutscene", _id.M1C2_Blast)
    repeat
      scriptWait()
      if 0 + 1 == 105 then
        _util.PlaySFX(6)
      end
      if 0 + 1 == 115 then
        _util.SwitchState("smash", _id.M1C2_Crate1)
        _util.PlaySFX(14)
      end
    until not _util.IsAnimPlaying(_id.M1C2_Blast)
    _util.SwitchState("idle", _id.M1C2_Blast)
    _util.PopCamera(_id.M1C2_Blast)
    _util.EnableInput()
    _util.ActivateNpc(_util.GetSelf(), 6)
  end
  function L2_2()
    local L0_4
    L0_4 = 150
    _util.DisableInput()
    _util.PushCamera()
    _util.MoveObject(_id.M1C2_PuffleHandler, 203, _util.GetY(_id.M1C2_PuffleHandler), L0_4)
    _util.MoveObject(_id.M1C2_Blast, 274, _util.GetY(_id.M1C2_Blast), L0_4)
    _util.SwitchState("walk", _id.M1C2_PuffleHandler)
    _util.SwitchState("walkLeft", _id.M1C2_Blast)
    repeat
      scriptWait()
    until _util.GetX(_id.M1C2_PuffleHandler) == 203
    _util.SwitchState("walk2idle", _id.M1C2_PuffleHandler)
    repeat
      scriptWait()
    until not _util.IsAnimPlaying(_id.M1C2_PuffleHandler)
    _util.SwitchState("", _id.M1C2_PuffleHandler)
    _util.SwitchState("", _id.M1C2_Blast)
    _util.PopCamera()
    _util.EnableInput()
    _util.ActivateNpc(_id.M1C2_PuffleHandler, 0)
  end
  if L0_0 == 0 then
    L3_3 = _util
    L3_3 = L3_3.AddConversation
    L3_3(270, 271, -1, _const.CHANGE_DIALOG, 1)
  elseif L0_0 == 1 then
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(272, _const.CHANGE_DIALOG, 2)
  elseif L0_0 == 2 then
    L3_3 = _util
    L3_3 = L3_3.AddConversation
    L3_3(273, 274, -1, _const.CHANGE_DIALOG, 3)
  elseif L0_0 == 3 then
    L3_3 = _util
    L3_3 = L3_3.AddConversation
    L3_3(275, 276, -1, _const.CHANGE_DIALOG, 4)
  elseif L0_0 == 4 then
    L3_3 = _util
    L3_3 = L3_3.AddConversation
    L3_3(277, 278, -1, _const.CHANGE_DIALOG, 5)
  elseif L0_0 == 5 then
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(279, _const.CHANGE_DIALOG, 99)
  elseif L0_0 == 6 then
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(280, _const.CHANGE_DIALOG, 7)
  elseif L0_0 == 7 then
    L3_3 = _util
    L3_3 = L3_3.AddLoopingConv
    L3_3(281)
    L3_3 = _util
    L3_3 = L3_3.AddLoopingOption
    L3_3(282, 284, _const.CHANGE_DIALOG, 8)
    L3_3 = _util
    L3_3 = L3_3.AddLoopingOption
    L3_3(283, -1, _const.END_DIALOG, 8)
    L3_3 = _util
    L3_3 = L3_3.SetVar
    L3_3("M1C2_trainingIntro", 1)
    L3_3 = _util
    L3_3 = L3_3.DelItem
    L3_3(_id.M1C2_Blast)
    L3_3 = _util
    L3_3 = L3_3.SetPuffle
    L3_3(_id.Inventory_PuffleRed)
    L3_3 = _util
    L3_3 = L3_3.EnablePuffle
    L3_3(_const.FLAG_RED)
  elseif L0_0 == 8 then
    L3_3 = _util
    L3_3 = L3_3.GetVar
    L3_3 = L3_3("M1C2_crateBroken")
    if L3_3 == 0 then
      L3_3 = _util
      L3_3 = L3_3.AddLoopingConv
      L3_3(284)
      L3_3 = _util
      L3_3 = L3_3.AddLoopingOption
      L3_3(286, 290, _const.UPDATE_LOOP)
      L3_3 = _util
      L3_3 = L3_3.AddLoopingOption
      L3_3(287, 291, _const.UPDATE_LOOP)
      L3_3 = _util
      L3_3 = L3_3.AddLoopingOption
      L3_3(288, -1, _const.CHANGE_DIALOG, 88)
    end
  elseif L0_0 == 88 then
    L3_3 = _util
    L3_3 = L3_3.AddConversation
    L3_3(289, -1, -1, _const.END_DIALOG, 8)
  else
    L3_3 = _util
    L3_3 = L3_3.GetVar
    L3_3 = L3_3("M1C2_crateBroken")
    if L3_3 == 1 and L0_0 < 9 then
      L3_3 = _util
      L3_3 = L3_3.AddConversation
      L3_3(293, 294, -1, _const.CHANGE_DIALOG, 9)
    elseif L0_0 == 9 then
      L3_3 = _util
      L3_3 = L3_3.AddDialog
      L3_3(295, _const.CHANGE_DIALOG, 10)
    elseif L0_0 == 10 then
      L3_3 = _util
      L3_3 = L3_3.AddDialog
      L3_3(296, _const.CHANGE_DIALOG, 11)
    elseif L0_0 == 11 then
      L3_3 = _util
      L3_3 = L3_3.AddConversation
      L3_3(297, 298, -1, _const.CHANGE_DIALOG, 12)
    elseif L0_0 == 12 then
      function L3_3()
        _util.DisplayPopUp(288, "CutsceneAnims/M1C2MapMarking_SkiVillage", false)
        repeat
          scriptWait()
        until _util.IsPopUpVisible() == false
        _util.AddMapAlert(_const.STORY_MISSION, 210, 130, _const.M1C2PUFFLETRAINERMARK, 70, 70)
        _util.SetSpawn(0, _id.M1C2_Dot_Dojo)
        _util.SetSpawn(0, _id.M1C2_Bouncer_Dojo)
        _util.SetExitLocked(_id.Doors_Puffle2Dojo, false)
        _util.SetExitLocked(_id.Doors_Dojo2Level, false)
        _util.ShowMap()
        _util.ActivateNpc(_util.GetSelf(), 13)
      end
      scriptPlay(L3_3)
    elseif L0_0 == 13 then
      L3_3 = _util
      L3_3 = L3_3.AddConversation
      L3_3(299, 300, -1, _const.CHANGE_DIALOG, 14)
      function L3_3()
        _util.SwitchState("give")
        repeat
          scriptWait()
        until not _util.IsAnimPlaying()
      end
      scriptPlay(L3_3)
    elseif L0_0 == 14 then
      function L3_3()
        _util.DisableInput()
        _util.SwitchState("", _util.GetSelf())
        _util.EnableSpyPodFunc(_const.FLAG_PUFFLEWHISTLE)
        _util.DisablePuffle(_const.FLAG_BLACK)
        _util.DisablePuffle(_const.FLAG_PURPLE)
        _util.DisablePuffle(_const.FLAG_PINK)
        _util.DisablePuffle(_const.FLAG_GREEN)
        _util.DisablePuffle(_const.FLAG_YELLOW)
        _util.EnableInput()
        _util.DisplayPopUp(409, "UI/Zoom/PuffleWhistle", false)
        repeat
          scriptWait()
        until _util.IsPopUpVisible() == false
        _util.ActivateNpc(_util.GetSelf(), 16)
        _util.SetObjective(639)
      end
      scriptPlay(L3_3)
    elseif L0_0 == 16 then
      L3_3 = _util
      L3_3 = L3_3.AddDialog
      L3_3(301, _const.END_DIALOG, 17)
      L3_3 = _util
      L3_3 = L3_3.SetVar
      L3_3("M1C2_outroHandler", 1)
    else
      L3_3 = _util
      L3_3 = L3_3.GetVar
      L3_3 = L3_3("M1C2_outroHandler")
      if L3_3 == 1 then
        L3_3 = _util
        L3_3 = L3_3.AddDialog
        L3_3(302, _const.END_DIALOG, 17)
      elseif L0_0 == 99 then
        L3_3 = scriptPlay
        L3_3(L1_1)
      elseif L0_0 == 42 then
        L3_3 = scriptPlay
        L3_3(L2_2)
      end
    end
  end
end
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.ITEM_DROPPED
if L0_0 == L1_1 then
  L0_0 = _util
  L0_0 = L0_0.GetSource
  L0_0 = L0_0()
  L1_1 = _id
  L1_1 = L1_1.Inventory_PuffleRed
  if L0_0 == L1_1 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L2_2 = 292
    L3_3 = _const
    L3_3 = L3_3.END_DIALOG
    L1_1(L2_2, L3_3, _util.GetConversationCount())
  end
end
