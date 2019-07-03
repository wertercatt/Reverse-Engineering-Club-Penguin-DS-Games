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
  if L2_2 == 0 then
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M8_TUNNELS_HERBERT_GREET1, _const.CHANGE_DIALOG, 1)
  elseif L2_2 == 1 then
    function L3_3()
      _util.DisableInput()
      _util.SwitchState("take", _util.GetSelf())
      repeat
        scriptWait()
      until 0 + 1 >= 40
      _util.ChangeBaseAnim("NPC/MysteriousTremors/Klutzy/KlutzyBRWrench", _id.M8_KlutzyBR, "give")
      _util.EnableInput()
      _util.AddDialog(_text.M8_TUNNELS_HERBERT_GREET1_2, _const.CHANGE_DIALOG, 2)
    end
    scriptPlay(L3_3)
  elseif L2_2 == 2 then
    L3_3 = _util
    L3_3 = L3_3.AddConversation
    L3_3(_text.M8_TUNNELS_HERBERT_GREET1_3, _text.M8_TUNNELS_HERBERTA_Q1, -1, _const.CHANGE_DIALOG, 3)
  elseif L2_2 == 3 then
    function L3_3()
      _util.DisableInput()
      _util.ChangeBaseAnim("NPC/MysteriousTremors/Herbert/HerbBR", _util.GetSelf(), "surprise")
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_util.GetSelf())
      _util.EnableInput(true)
    end
    scriptPlay(L3_3)
    _util.ChangeBaseAnim("NPC/MysteriousTremors/Herbert/HerbBRScared")
    _util.AddLoopingConv(_text.M8_TUNNELS_HERBERTA_A1)
    _util.AddLoopingOption(_text.M8_TUNNELS_HERBERTB_Q1, -1, _const.CHANGE_DIALOG, 4)
    _util.AddLoopingOption(_text.M8_TUNNELS_HERBERTB_Q2, -1, _const.CHANGE_DIALOG, 4)
    _util.AddLoopingOption(_text.M8_TUNNELS_HERBERTB_Q3, -1, _const.CHANGE_DIALOG, 4)
  elseif L2_2 == 4 then
    L3_3 = _util
    L3_3 = L3_3.ChangeBaseAnim
    L3_3("NPC/MysteriousTremors/Herbert/HerbBRArms1")
    L3_3 = _util
    L3_3 = L3_3.AddConversation
    L3_3(_text.M8_TUNNELS_HERBERTB_A, _text.M8_TUNNELS_HERBERTC_Q1, -1, _const.CHANGE_DIALOG, 5)
  elseif L2_2 == 5 then
    L3_3 = _util
    L3_3 = L3_3.ChangeBaseAnim
    L3_3("NPC/MysteriousTremors/Herbert/HerbBRPoint")
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M8_TUNNELS_HERBERTC_A1_2B, _const.CHANGE_DIALOG, 6)
  elseif L2_2 == 6 then
    L3_3 = _util
    L3_3 = L3_3.ChangeBaseAnim
    L3_3("NPC/MysteriousTremors/Herbert/HerbBRSelf")
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M8_TUNNELS_HERBERTC_B1_2C, _const.CHANGE_DIALOG, 7)
  elseif L2_2 == 7 then
    L3_3 = _util
    L3_3 = L3_3.ChangeBaseAnim
    L3_3("NPC/MysteriousTremors/Herbert/HerbBRPoint")
    L3_3 = _util
    L3_3 = L3_3.AddLoopingConv
    L3_3(_text.M8_TUNNELS_HERBERTC_C1)
    L3_3 = _util
    L3_3 = L3_3.AddLoopingOption
    L3_3(_text.M8_TUNNELS_HERBERTD_Q1, -1, _const.CHANGE_DIALOG, 8)
    L3_3 = _util
    L3_3 = L3_3.AddLoopingOption
    L3_3(_text.M8_TUNNELS_HERBERTD_Q2, -1, _const.CHANGE_DIALOG, 8)
  elseif L2_2 == 8 then
    L3_3 = _util
    L3_3 = L3_3.ChangeBaseAnim
    L3_3("NPC/MysteriousTremors/Herbert/HerbBRLaugh")
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M8_TUNNELS_HERBERTD_A_2B, _const.CHANGE_DIALOG, 9)
  elseif L2_2 == 9 then
    L3_3 = _util
    L3_3 = L3_3.ChangeBaseAnim
    L3_3("NPC/MysteriousTremors/Herbert/HerbBRPoint")
    L3_3 = _util
    L3_3 = L3_3.AddConversation
    L3_3(_text.M8_TUNNELS_HERBERTD_B, _text.M8_TUNNELS_HERBERTF_Q1, -1, _const.CHANGE_DIALOG, 10)
  elseif L2_2 == 10 then
    L3_3 = _util
    L3_3 = L3_3.ChangeBaseAnim
    L3_3("NPC/MysteriousTremors/Herbert/HerbBRPoint")
    L3_3 = _util
    L3_3 = L3_3.AddLoopingConv
    L3_3(_text.M8_TUNNELS_HERBERTF_A1)
    L3_3 = _util
    L3_3 = L3_3.AddLoopingOption
    L3_3(_text.M8_TUNNELS_HERBERTG_Q1, -1, _const.CHANGE_DIALOG, 11)
    L3_3 = _util
    L3_3 = L3_3.AddLoopingOption
    L3_3(_text.M8_TUNNELS_HERBERTG_Q2, -1, _const.CHANGE_DIALOG, 11)
  elseif L2_2 == 11 then
    L3_3 = _util
    L3_3 = L3_3.ChangeBaseAnim
    L3_3("NPC/MysteriousTremors/Herbert/HerbBRMad")
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M8_TUNNELS_HERBERTG_A_2A2, _const.CHANGE_DIALOG, 12)
  elseif L2_2 == 12 then
    L3_3 = _util
    L3_3 = L3_3.ChangeBaseAnim
    L3_3("NPC/MysteriousTremors/Herbert/HerbBRMad")
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M8_TUNNELS_HERBERTG_A2_2B, _const.CHANGE_DIALOG, 14)
  elseif L2_2 == 14 then
    function L3_3()
      local L0_4, L1_5
      L0_4 = 10
      L1_5 = 0
      _util.DisableInput()
      _util.SwitchState("smash", _util.GetSelf())
      repeat
        scriptWait()
      until 0 + 1 >= 30
      _util.ChangeBaseAnim("NPC/MysteriousTremors/Klutzy/KlutzyBR", _id.M8_KlutzyBR, "smash")
      repeat
        L1_5 = L1_5 + 1
        scriptWait()
      until L1_5 >= 88
      _util.PlaySFX(191)
      _util.SetVar("hitBoiler", 1)
      _util.SwitchState("shake", 61252)
      _util.AddItem(61132)
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_id.M8_KlutzyBR)
      _util.ChangeBaseAnim("NPC/MysteriousTremors/Herbert/HerbBRSmash")
      _util.AddDialog(_text.M8_TUNNELS_HERBERTG_B_2C, _const.CHANGE_DIALOG, 15)
      _util.EnableInput()
    end
    scriptPlay(L3_3)
  elseif L2_2 == 15 then
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M8_TUNNELS_HERBERTG_C_2D, _const.CHANGE_DIALOG, 16)
  elseif L2_2 == 16 then
    function L3_3()
      local L0_6
      L0_6 = _util
      L0_6 = L0_6.DisableInput
      L0_6()
      L0_6 = _util
      L0_6 = L0_6.ChangeBaseAnim
      L0_6("NPC/MysteriousTremors/Klutzy/KlutzyBR", _id.M8_KlutzyBR, "run")
      repeat
        L0_6 = scriptWait
        L0_6()
        L0_6 = _util
        L0_6 = L0_6.IsAnimPlaying
        L0_6 = L0_6(_id.M8_KlutzyBR)
      until not L0_6
      function L0_6()
        _util.SwitchState("run", _util.GetSelf())
        repeat
          scriptWait()
        until not _util.IsAnimPlaying(_util.GetSelf())
        _util.AddDialog(_text.M8_TUNNELS_HERBERTG_D_2E, _const.CHANGE_DIALOG, 17)
        _util.ChangeBaseAnim("NPC/MysteriousTremors/Herbert/HerbBRHole")
        _util.SetCursorPos(518, 102)
        _util.EnableInput()
      end
      scriptPlay(L0_6)
    end
    scriptPlay(L3_3)
  elseif L2_2 == 17 then
    function L3_3()
      _util.DisableInput()
      _util.SwitchState("exit", _util.GetSelf())
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_util.GetSelf())
      _util.AddItem(61095)
      _util.EnableInput()
      _util.ActivateNpc(61095, 18)
      _util.DelItem(_util.GetSelf())
    end
    scriptPlay(L3_3)
  elseif L2_2 == 18 then
    L3_3 = _util
    L3_3 = L3_3.GetVar
    L3_3 = L3_3("gotGear")
    if L3_3 == 1 then
      L3_3 = _util
      L3_3 = L3_3.AddDialog
      L3_3(_text.M8_TUNNELS_HERBERTG_E1_2F, _const.CHANGE_DIALOG, 19)
    else
      L3_3 = _util
      L3_3 = L3_3.AddDialog
      L3_3(_text.M8_TUNNELS_HERBERTG_E2_2F, _const.CHANGE_DIALOG, 19)
    end
  elseif L2_2 == 19 then
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M8_TUNNELS_HERBERTG_F_2G, _const.CHANGE_DIALOG, 20)
  elseif L2_2 == 20 then
    L3_3 = _util
    L3_3 = L3_3.MarkObjComplete
    L3_3(_text.M8_OBJ5)
    L3_3 = _util
    L3_3 = L3_3.AddObjective
    L3_3(_text.M8_OBJ_5B)
    L3_3 = _util
    L3_3 = L3_3.ClearCom
    L3_3()
    L3_3 = _util
    L3_3 = L3_3.SetupComNpc
    L3_3(_const.COM_GARY, _id.M8_GaryGR, 0)
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M8_TUNNELS_HERBERTG_G, _const.CHANGE_DIALOG, 21)
  elseif L2_2 == 21 then
    L3_3 = _util
    L3_3 = L3_3.DelItem
    L3_3(61065)
    L3_3 = _util
    L3_3 = L3_3.DelItem
    L3_3(61095)
    L3_3 = _util
    L3_3 = L3_3.RestoreSongFromHerbert
    L3_3()
    L3_3 = _util
    L3_3 = L3_3.SetNextRoom
    L3_3(10)
    L3_3 = _util
    L3_3 = L3_3.EnableInput
    L3_3(true)
    L3_3 = _util
    L3_3 = L3_3.LaunchCommunicator
    L3_3()
  end
end
