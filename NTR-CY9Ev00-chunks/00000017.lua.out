local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13
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
  L0_0 = _util
  L0_0 = L0_0.AddInterest
  L1_1 = _const
  L1_1 = L1_1.AFTER_DIALOG
  L0_0(L1_1)
end
L0_0 = _util
L0_0 = L0_0.GetActiveMission
L0_0 = L0_0()
L1_1 = _util
L1_1 = L1_1.GetActiveChapter
L1_1 = L1_1()
function L2_2()
  _util.ChangeBaseAnim("NPC/QuestionsCrab/Herbert/HerbMono")
end
function L3_3()
  _util.ChangeBaseAnim("NPC/QuestionsCrab/Herbert/HerbSide")
end
function L4_4()
  _util.ChangeBaseAnim("NPC/QuestionsCrab/Herbert/HerbMono2")
end
function L5_5()
  _util.ChangeBaseAnim("NPC/QuestionsCrab/Herbert/HerbSide3")
end
function L6_6()
  _util.ChangeBaseAnim("NPC/QuestionsCrab/Herbert/HerbSide4")
end
function L7_7()
  _util.ChangeBaseAnim("NPC/QuestionsCrab/Herbert/HerbSide5")
end
function L8_8()
  _util.ChangeBaseAnim("NPC/QuestionsCrab/Herbert/HerbMono4")
end
function L9_9()
  _util.ChangeBaseAnim("NPC/QuestionsCrab/Herbert/HerbSide8")
end
function L10_10()
  _util.ChangeBaseAnim("NPC/QuestionsCrab/Herbert/HerbSide6")
end
function L11_11()
  local L0_14, L1_15
  L0_14 = _util
  L0_14 = L0_14.DisableInput
  L0_14()
  L0_14 = _util
  L0_14 = L0_14.SetVar
  L1_15 = "M5_Cave_Anim_doFlip"
  L0_14(L1_15, 0)
  L0_14 = _util
  L0_14 = L0_14.GetVar
  L1_15 = "M6_Cave_Anim_pageNumber"
  L0_14 = L0_14(L1_15)
  if L0_14 > 30 then
    L0_14 = 30
  end
  L1_15 = "MissionObjects/QuestionsCrab/scripted/Chart"
  L1_15 = L1_15 .. L0_14
  _util.ChangeBaseAnim(L1_15, _id.M6_CaveChart)
  _util.AddItem(_id.M6_GenericFlip, 0)
  _util.ChangeBaseAnim("NPC/QuestionsCrab/Herbert/HerbChart", _util.GetSelf(), "flip")
  _util.ChangeBaseAnim("MissionObjects/QuestionsCrab/scripted/FLIP", _id.M6_GenericFlip)
  repeat
    scriptWait()
  until not _util.IsAnimPlaying(_util.GetSelf()) and not _util.IsAnimPlaying(_id.M6_GenericFlip)
  _util.ChangeBaseAnim("NPC/QuestionsCrab/Herbert/HerbPoint")
  _util.DelItem(_id.M6_GenericFlip)
  _util.IncVar("M6_Cave_Anim_pageNumber")
  _util.EnableInput()
  _util.ActivateNpc(_id.M6_HerbertCave, _util.GetConversationCount())
end
L12_12 = _util
L12_12 = L12_12.GetConversationCount
L12_12 = L12_12()
L13_13 = _util
L13_13 = L13_13.GetReason
L13_13 = L13_13()
if L13_13 == _const.TOUCHED then
  L13_13 = _util
  L13_13 = L13_13.PlayHerbertLurking
  L13_13()
  if L12_12 == 0 then
    L13_13 = _util
    L13_13 = L13_13.HidePuffle
    L13_13()
    function L13_13()
      _util.ChangeBaseAnim("NPC/QuestionsCrab/Herbert/HerbPeek")
      _util.SwitchState("appear", _util.GetSelf())
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_util.GetSelf())
      _util.AddDialog(_text.M6_CAVE_HERBERT_GREET, _const.CHANGE_DIALOG, 1)
    end
    scriptPlay(L13_13)
  elseif L12_12 == 1 then
    function L13_13()
      _util.SetVar("M6_Cave_Anim_pageNumber", 2)
      _util.SetVar("M5_Cave_Anim_doFlip", 1)
      _util.ChangeBaseAnim("NPC/QuestionsCrab/Herbert/HerbGreet")
      _util.AddDialog(_text.M6_CAVE_HERBERT_GREET2, _const.CHANGE_DIALOG, 2)
      _util.SwitchState("slide", _util.GetSelf())
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_util.GetSelf())
      _util.SwitchState("talk", _util.GetSelf())
    end
    scriptPlay(L13_13)
  elseif L12_12 == 2 then
    L13_13 = _util
    L13_13 = L13_13.AddItem
    L13_13(187)
    L13_13 = _util
    L13_13 = L13_13.ChangeBaseAnim
    L13_13("NPC/QuestionsCrab/Klutzy/klutzyClaws", 187, "up")
    L13_13 = _util
    L13_13 = L13_13.AddDialog
    L13_13(_text.M6_CAVE_HERBERT_GREET3, _const.CHANGE_DIALOG, 3)
  elseif L12_12 == 3 then
    L13_13 = _util
    L13_13 = L13_13.ChangeBaseAnim
    L13_13("NPC/QuestionsCrab/Herbert/HerbPhone")
    L13_13 = _util
    L13_13 = L13_13.ChangeBaseAnim
    L13_13("NPC/QuestionsCrab/Klutzy/klutzyClaws", 187, "down")
    L13_13 = _util
    L13_13 = L13_13.AddDialog
    L13_13(_text.M6_CAVE_HERBERT_GREET4, _const.CHANGE_DIALOG, 4)
  elseif L12_12 == 4 then
    L13_13 = _util
    L13_13 = L13_13.DelItem
    L13_13(187)
    L13_13 = _util
    L13_13 = L13_13.AddLoopingConv
    L13_13(_text.M6_CAVE_HERBERT_GREET5)
    L13_13 = _util
    L13_13 = L13_13.AddLoopingOption
    L13_13(_text.M6_CAVE_HERBERT_Q1, -1, _const.CHANGE_DIALOG, 9)
    L13_13 = _util
    L13_13 = L13_13.AddLoopingOption
    L13_13(_text.M6_CAVE_HERBERT_Q2, -1, _const.CHANGE_DIALOG, 5)
    L13_13 = _util
    L13_13 = L13_13.AddLoopingOption
    L13_13(_text.M6_CAVE_HERBERT_Q3, -1, _const.CHANGE_DIALOG, 6)
  elseif L12_12 == 5 then
    L13_13 = _util
    L13_13 = L13_13.ChangeBaseAnim
    L13_13("NPC/QuestionsCrab/Herbert/HerbGreet2")
    L13_13 = _util
    L13_13 = L13_13.AddDialog
    L13_13(_text.M6_CAVE_HERBERT_A2_2B, _const.CHANGE_DIALOG, 7)
    L13_13 = _util
    L13_13 = L13_13.SwitchState
    L13_13("talk", _util.GetSelf())
  elseif L12_12 == 6 then
    L13_13 = _util
    L13_13 = L13_13.ChangeBaseAnim
    L13_13("NPC/QuestionsCrab/Herbert/HerbGreet2")
    L13_13 = _util
    L13_13 = L13_13.AddDialog
    L13_13(_text.M6_CAVE_HERBERT_A3_2B, _const.CHANGE_DIALOG, 7)
    L13_13 = _util
    L13_13 = L13_13.SwitchState
    L13_13("talk", _util.GetSelf())
  elseif L12_12 == 7 then
    L13_13 = _util
    L13_13 = L13_13.AddDialog
    L13_13(_text.M6_CAVE_HERBERT_B_2C, _const.CHANGE_DIALOG, 8)
    L13_13 = _util
    L13_13 = L13_13.SwitchState
    L13_13("talk", _util.GetSelf())
  elseif L12_12 == 8 then
    L13_13 = _util
    L13_13 = L13_13.AddLoopingConv
    L13_13(_text.M6_CAVE_HERBERT_C)
    L13_13 = _util
    L13_13 = L13_13.AddLoopingOption
    L13_13(_text.M6_CAVE_HERBERTA_Q1, -1, _const.CHANGE_DIALOG, 9)
    L13_13 = _util
    L13_13 = L13_13.AddLoopingOption
    L13_13(_text.M6_CAVE_HERBERTA_Q2, -1, _const.CHANGE_DIALOG, 9)
  elseif L12_12 == 9 then
    L13_13 = _util
    L13_13 = L13_13.ChangeBaseAnim
    L13_13("NPC/QuestionsCrab/Herbert/HerbGreet2")
    L13_13 = _util
    L13_13 = L13_13.AddDialog
    L13_13(_text.M6_CAVE_HERBERTA_A_2B, _const.CHANGE_DIALOG, 100)
  elseif L12_12 == 100 then
    function L13_13()
      _util.DisableInput()
      _util.ChangeBaseAnim("NPC/QuestionsCrab/Herbert/HerbChart")
      _util.SwitchState("grab", _util.GetSelf())
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_util.GetSelf())
      _util.SwitchState("drag1", _util.GetSelf())
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_util.GetSelf())
      _util.AddItem(_id.M6_CaveChart, 0)
      _util.ChangeBaseAnim("NPC/QuestionsCrab/Herbert/HerbSide")
      _util.EnableInput()
      _util.ActivateNpc(_id.M6_HerbertCave, 10)
    end
    scriptPlay(L13_13)
  elseif L12_12 == 10 then
    L13_13 = _util
    L13_13 = L13_13.AddDialog
    L13_13(_text.M6_CAVE_HERBERTA_B_2C, _const.CHANGE_DIALOG, 11)
  elseif L12_12 == 11 then
    L13_13 = _util
    L13_13 = L13_13.GetVar
    L13_13 = L13_13("M5_Cave_Anim_doFlip")
    if L13_13 == 1 then
      L13_13 = scriptPlay
      L13_13(L11_11)
    else
      L13_13 = _util
      L13_13 = L13_13.SetVar
      L13_13("M5_Cave_Anim_doFlip", 1)
      L13_13 = _util
      L13_13 = L13_13.AddDialog
      L13_13(_text.M6_CAVE_HERBERTA_C_2D, _const.CHANGE_DIALOG, 12)
    end
  elseif L12_12 == 12 then
    L13_13 = _util
    L13_13 = L13_13.GetVar
    L13_13 = L13_13("M5_Cave_Anim_doFlip")
    if L13_13 == 1 then
      L13_13 = scriptPlay
      L13_13(L11_11)
    else
      L13_13 = _util
      L13_13 = L13_13.SetVar
      L13_13("M5_Cave_Anim_doFlip", 1)
      L13_13 = _util
      L13_13 = L13_13.AddLoopingConv
      L13_13(_text.M6_CAVE_HERBERTA_D_2B)
      L13_13 = _util
      L13_13 = L13_13.AddLoopingOption
      L13_13(_text.M6_CAVE_HERBERTB_Q1, -1, _const.CHANGE_DIALOG, 13)
      L13_13 = _util
      L13_13 = L13_13.AddLoopingOption
      L13_13(_text.M6_CAVE_HERBERTB_Q2, -1, _const.CHANGE_DIALOG, 14)
      L13_13 = _util
      L13_13 = L13_13.AddLoopingOption
      L13_13(_text.M6_CAVE_SKIP_1, -1, _const.CHANGE_DIALOG, 56)
    end
  elseif L12_12 == 13 then
    L13_13 = L2_2
    L13_13()
    L13_13 = _util
    L13_13 = L13_13.AddDialog
    L13_13(_text.M6_CAVE_HERBERTB_A1_2B, _const.CHANGE_DIALOG, 15)
  elseif L12_12 == 14 then
    L13_13 = _util
    L13_13 = L13_13.AddDialog
    L13_13(_text.M6_CAVE_HERBERTB_A2_2B, _const.CHANGE_DIALOG, 15)
  elseif L12_12 == 15 then
    L13_13 = _util
    L13_13 = L13_13.GetVar
    L13_13 = L13_13("M5_Cave_Anim_doFlip")
    if L13_13 == 1 then
      L13_13 = scriptPlay
      L13_13(L11_11)
    else
      L13_13 = _util
      L13_13 = L13_13.SetVar
      L13_13("M5_Cave_Anim_doFlip", 1)
      L13_13 = L3_3
      L13_13()
      L13_13 = _util
      L13_13 = L13_13.AddDialog
      L13_13(_text.M6_CAVE_HERBERTB_B_2C, _const.CHANGE_DIALOG, 16)
    end
  elseif L12_12 == 16 then
    L13_13 = _util
    L13_13 = L13_13.GetVar
    L13_13 = L13_13("M5_Cave_Anim_doFlip")
    if L13_13 == 1 then
      L13_13 = scriptPlay
      L13_13(L11_11)
    else
      L13_13 = _util
      L13_13 = L13_13.SetVar
      L13_13("M5_Cave_Anim_doFlip", 1)
      L13_13 = _util
      L13_13 = L13_13.AddDialog
      L13_13(_text.M6_CAVE_HERBERTB_C_2D, _const.CHANGE_DIALOG, 17)
    end
  elseif L12_12 == 17 then
    L13_13 = L4_4
    L13_13()
    L13_13 = _util
    L13_13 = L13_13.SwitchState
    L13_13("talk", _util.GetSelf())
    L13_13 = _util
    L13_13 = L13_13.AddLoopingConv
    L13_13(_text.M6_CAVE_HERBERTB_D_2C)
    L13_13 = _util
    L13_13 = L13_13.AddLoopingOption
    L13_13(_text.M6_CAVE_HERBERTC_Q1, -1, _const.CHANGE_DIALOG, 18)
    L13_13 = _util
    L13_13 = L13_13.AddLoopingOption
    L13_13(_text.M6_CAVE_HERBERTC_Q2, -1, _const.CHANGE_DIALOG, 18)
    L13_13 = _util
    L13_13 = L13_13.AddLoopingOption
    L13_13(_text.M6_CAVE_SKIP_2, -1, _const.CHANGE_DIALOG, 56)
  elseif L12_12 == 18 then
    L13_13 = _util
    L13_13 = L13_13.GetVar
    L13_13 = L13_13("M5_Cave_Anim_doFlip")
    if L13_13 == 1 then
      L13_13 = scriptPlay
      L13_13(L11_11)
    else
      L13_13 = _util
      L13_13 = L13_13.SetVar
      L13_13("M5_Cave_Anim_doFlip", 1)
      L13_13 = L5_5
      L13_13()
      L13_13 = _util
      L13_13 = L13_13.AddDialog
      L13_13(_text.M6_CAVE_HERBERTC_A_2B, _const.CHANGE_DIALOG, 19)
    end
  elseif L12_12 == 19 then
    L13_13 = _util
    L13_13 = L13_13.GetVar
    L13_13 = L13_13("M5_Cave_Anim_doFlip")
    if L13_13 == 1 then
      L13_13 = scriptPlay
      L13_13(L11_11)
    else
      L13_13 = L6_6
      L13_13()
      L13_13 = _util
      L13_13 = L13_13.SetVar
      L13_13("M5_Cave_Anim_doFlip", 1)
      L13_13 = _util
      L13_13 = L13_13.AddLoopingConv
      L13_13(_text.M6_CAVE_HERBERTC_B_2D)
      L13_13 = _util
      L13_13 = L13_13.AddLoopingOption
      L13_13(_text.M6_CAVE_HERBERTD_Q1, -1, _const.CHANGE_DIALOG, 20)
      L13_13 = _util
      L13_13 = L13_13.AddLoopingOption
      L13_13(_text.M6_CAVE_HERBERTD_Q2, -1, _const.CHANGE_DIALOG, 21)
      L13_13 = _util
      L13_13 = L13_13.AddLoopingOption
      L13_13(_text.M6_CAVE_SKIP_3, -1, _const.CHANGE_DIALOG, 56)
    end
  elseif L12_12 == 20 then
    L13_13 = _util
    L13_13 = L13_13.ChangeBaseAnim
    L13_13("NPC/QuestionsCrab/Herbert/HerbPoint")
    L13_13 = _util
    L13_13 = L13_13.SwitchState
    L13_13("talk", _util.GetSelf())
    L13_13 = _util
    L13_13 = L13_13.AddDialog
    L13_13(_text.M6_CAVE_HERBERTD_A1_2B, _const.CHANGE_DIALOG, 22)
  elseif L12_12 == 21 then
    L13_13 = _util
    L13_13 = L13_13.ChangeBaseAnim
    L13_13("NPC/QuestionsCrab/Herbert/HerbPoint")
    L13_13 = _util
    L13_13 = L13_13.AddDialog
    L13_13(_text.M6_CAVE_HERBERTD_A2_2B, _const.CHANGE_DIALOG, 22)
  elseif L12_12 == 22 then
    L13_13 = _util
    L13_13 = L13_13.GetVar
    L13_13 = L13_13("M5_Cave_Anim_doFlip")
    if L13_13 == 1 then
      L13_13 = scriptPlay
      L13_13(L11_11)
    else
      L13_13 = _util
      L13_13 = L13_13.SetVar
      L13_13("M5_Cave_Anim_doFlip", 1)
      L13_13 = _util
      L13_13 = L13_13.AddDialog
      L13_13(_text.M6_CAVE_HERBERTD_B_2C, _const.CHANGE_DIALOG, 23)
    end
  elseif L12_12 == 23 then
    L13_13 = _util
    L13_13 = L13_13.GetVar
    L13_13 = L13_13("M5_Cave_Anim_doFlip")
    if L13_13 == 1 then
      L13_13 = scriptPlay
      L13_13(L11_11)
    else
      L13_13 = _util
      L13_13 = L13_13.SetVar
      L13_13("M5_Cave_Anim_doFlip", 1)
      L13_13 = _util
      L13_13 = L13_13.AddDialog
      L13_13(_text.M6_CAVE_HERBERTD_C_2D, _const.CHANGE_DIALOG, 24)
    end
  elseif L12_12 == 24 then
    L13_13 = _util
    L13_13 = L13_13.GetVar
    L13_13 = L13_13("M5_Cave_Anim_doFlip")
    if L13_13 == 1 then
      L13_13 = scriptPlay
      L13_13(L11_11)
    else
      L13_13 = _util
      L13_13 = L13_13.SetVar
      L13_13("M5_Cave_Anim_doFlip", 1)
      L13_13 = _util
      L13_13 = L13_13.AddDialog
      L13_13(_text.M6_CAVE_HERBERTD_D_2E, _const.CHANGE_DIALOG, 25)
    end
  elseif L12_12 == 25 then
    L13_13 = _util
    L13_13 = L13_13.GetVar
    L13_13 = L13_13("M5_Cave_Anim_doFlip")
    if L13_13 == 1 then
      L13_13 = scriptPlay
      L13_13(L11_11)
    else
      L13_13 = _util
      L13_13 = L13_13.SetVar
      L13_13("M5_Cave_Anim_doFlip", 1)
      L13_13 = _util
      L13_13 = L13_13.AddDialog
      L13_13(_text.M6_CAVE_HERBERTD_E_2F, _const.CHANGE_DIALOG, 26)
    end
  elseif L12_12 == 26 then
    L13_13 = _util
    L13_13 = L13_13.GetVar
    L13_13 = L13_13("M5_Cave_Anim_doFlip")
    if L13_13 == 1 then
      L13_13 = scriptPlay
      L13_13(L11_11)
    else
      L13_13 = _util
      L13_13 = L13_13.SetVar
      L13_13("M5_Cave_Anim_doFlip", 1)
      L13_13 = L7_7
      L13_13()
      L13_13 = _util
      L13_13 = L13_13.AddDialog
      L13_13(_text.M6_CAVE_HERBERTD_F_2G, _const.CHANGE_DIALOG, 27)
    end
  elseif L12_12 == 27 then
    L13_13 = _util
    L13_13 = L13_13.GetVar
    L13_13 = L13_13("M5_Cave_Anim_doFlip")
    if L13_13 == 1 then
      L13_13 = scriptPlay
      L13_13(L11_11)
    else
      L13_13 = _util
      L13_13 = L13_13.SetVar
      L13_13("M5_Cave_Anim_doFlip", 1)
      L13_13 = _util
      L13_13 = L13_13.AddDialog
      L13_13(_text.M6_CAVE_HERBERTD_G_2H, _const.CHANGE_DIALOG, 28)
    end
  elseif L12_12 == 28 then
    L13_13 = _util
    L13_13 = L13_13.GetVar
    L13_13 = L13_13("M5_Cave_Anim_doFlip")
    if L13_13 == 1 then
      L13_13 = scriptPlay
      L13_13(L11_11)
    else
      L13_13 = _util
      L13_13 = L13_13.SetVar
      L13_13("M5_Cave_Anim_doFlip", 1)
      L13_13 = L8_8
      L13_13()
      L13_13 = _util
      L13_13 = L13_13.AddLoopingConv
      L13_13(_text.M6_CAVE_HERBERTD_H_2E)
      L13_13 = _util
      L13_13 = L13_13.AddLoopingOption
      L13_13(_text.M6_CAVE_HERBERTE_Q1, -1, _const.CHANGE_DIALOG, 29)
      L13_13 = _util
      L13_13 = L13_13.AddLoopingOption
      L13_13(_text.M6_CAVE_HERBERTE_Q2, -1, _const.CHANGE_DIALOG, 29)
      L13_13 = _util
      L13_13 = L13_13.AddLoopingOption
      L13_13(_text.M6_CAVE_SKIP_4, -1, _const.CHANGE_DIALOG, 56)
    end
  elseif L12_12 == 29 then
    L13_13 = _util
    L13_13 = L13_13.GetVar
    L13_13 = L13_13("M5_Cave_Anim_doFlip")
    if L13_13 == 1 then
      L13_13 = scriptPlay
      L13_13(L11_11)
    else
      L13_13 = _util
      L13_13 = L13_13.SetVar
      L13_13("M5_Cave_Anim_doFlip", 1)
      L13_13 = _util
      L13_13 = L13_13.AddDialog
      L13_13(_text.M6_CAVE_HERBERTE_A_2B, _const.CHANGE_DIALOG, 30)
    end
  elseif L12_12 == 30 then
    L13_13 = _util
    L13_13 = L13_13.GetVar
    L13_13 = L13_13("M5_Cave_Anim_doFlip")
    if L13_13 == 1 then
      L13_13 = scriptPlay
      L13_13(L11_11)
    else
      L13_13 = _util
      L13_13 = L13_13.SetVar
      L13_13("M5_Cave_Anim_doFlip", 1)
      L13_13 = _util
      L13_13 = L13_13.AddDialog
      L13_13(_text.M6_CAVE_HERBERTE_B_2C, _const.CHANGE_DIALOG, 31)
    end
  elseif L12_12 == 31 then
    L13_13 = _util
    L13_13 = L13_13.GetVar
    L13_13 = L13_13("M5_Cave_Anim_doFlip")
    if L13_13 == 1 then
      L13_13 = scriptPlay
      L13_13(L11_11)
    else
      L13_13 = _util
      L13_13 = L13_13.SetVar
      L13_13("M5_Cave_Anim_doFlip", 1)
      L13_13 = _util
      L13_13 = L13_13.AddLoopingConv
      L13_13(_text.M6_CAVE_HERBERTE_C_2F)
      L13_13 = _util
      L13_13 = L13_13.AddLoopingOption
      L13_13(_text.M6_CAVE_HERBERTF_Q1, -1, _const.CHANGE_DIALOG, 32)
      L13_13 = _util
      L13_13 = L13_13.AddLoopingOption
      L13_13(_text.M6_CAVE_HERBERTF_Q2, -1, _const.CHANGE_DIALOG, 33)
      L13_13 = _util
      L13_13 = L13_13.AddLoopingOption
      L13_13(_text.M6_CAVE_SKIP_5, -1, _const.CHANGE_DIALOG, 56)
    end
  elseif L12_12 == 32 then
    L13_13 = _util
    L13_13 = L13_13.ChangeBaseAnim
    L13_13("NPC/QuestionsCrab/Herbert/HerbSad")
    L13_13 = _util
    L13_13 = L13_13.SwitchState
    L13_13("talk", _util.GetSelf())
    L13_13 = _util
    L13_13 = L13_13.AddDialog
    L13_13(_text.M6_CAVE_HERBERTF_A1_2B, _const.CHANGE_DIALOG, 34)
  elseif L12_12 == 33 then
    L13_13 = _util
    L13_13 = L13_13.AddDialog
    L13_13(_text.M6_CAVE_HERBERTF_A2_2B, _const.CHANGE_DIALOG, 34)
  elseif L12_12 == 34 then
    L13_13 = L3_3
    L13_13()
    L13_13 = _util
    L13_13 = L13_13.AddDialog
    L13_13(_text.M6_CAVE_HERBERTF_B_2C, _const.CHANGE_DIALOG, 35)
  elseif L12_12 == 35 then
    L13_13 = _util
    L13_13 = L13_13.GetVar
    L13_13 = L13_13("M5_Cave_Anim_doFlip")
    if L13_13 == 1 then
      L13_13 = scriptPlay
      L13_13(L11_11)
    else
      L13_13 = _util
      L13_13 = L13_13.SetVar
      L13_13("M5_Cave_Anim_doFlip", 1)
      L13_13 = _util
      L13_13 = L13_13.AddDialog
      L13_13(_text.M6_CAVE_HERBERTF_C_2D, _const.CHANGE_DIALOG, 36)
    end
  elseif L12_12 == 36 then
    L13_13 = _util
    L13_13 = L13_13.GetVar
    L13_13 = L13_13("M5_Cave_Anim_doFlip")
    if L13_13 == 1 then
      L13_13 = scriptPlay
      L13_13(L11_11)
    else
      L13_13 = _util
      L13_13 = L13_13.SetVar
      L13_13("M5_Cave_Anim_doFlip", 1)
      L13_13 = L9_9
      L13_13()
      L13_13 = _util
      L13_13 = L13_13.AddDialog
      L13_13(_text.M6_CAVE_HERBERTF_D_2E, _const.CHANGE_DIALOG, 37)
    end
  elseif L12_12 == 37 then
    L13_13 = _util
    L13_13 = L13_13.GetVar
    L13_13 = L13_13("M5_Cave_Anim_doFlip")
    if L13_13 == 1 then
      L13_13 = scriptPlay
      L13_13(L11_11)
    else
      L13_13 = _util
      L13_13 = L13_13.SetVar
      L13_13("M5_Cave_Anim_doFlip", 1)
      L13_13 = L9_9
      L13_13()
      L13_13 = _util
      L13_13 = L13_13.AddDialog
      L13_13(_text.M6_CAVE_HERBERTF_E_2F, _const.CHANGE_DIALOG, 38)
    end
  elseif L12_12 == 38 then
    L13_13 = _util
    L13_13 = L13_13.GetVar
    L13_13 = L13_13("M5_Cave_Anim_doFlip")
    if L13_13 == 1 then
      L13_13 = scriptPlay
      L13_13(L11_11)
    else
      L13_13 = _util
      L13_13 = L13_13.SetVar
      L13_13("M5_Cave_Anim_doFlip", 1)
      L13_13 = _util
      L13_13 = L13_13.AddDialog
      L13_13(_text.M6_CAVE_HERBERTF_F_2G, _const.CHANGE_DIALOG, 39)
    end
  elseif L12_12 == 39 then
    L13_13 = _util
    L13_13 = L13_13.GetVar
    L13_13 = L13_13("M5_Cave_Anim_doFlip")
    if L13_13 == 1 then
      L13_13 = scriptPlay
      L13_13(L11_11)
    else
      L13_13 = _util
      L13_13 = L13_13.SetVar
      L13_13("M5_Cave_Anim_doFlip", 1)
      L13_13 = L10_10
      L13_13()
      L13_13 = _util
      L13_13 = L13_13.AddDialog
      L13_13(_text.M6_CAVE_HERBERTF_G_2H, _const.CHANGE_DIALOG, 40)
    end
  elseif L12_12 == 40 then
    L13_13 = _util
    L13_13 = L13_13.GetVar
    L13_13 = L13_13("M5_Cave_Anim_doFlip")
    if L13_13 == 1 then
      L13_13 = scriptPlay
      L13_13(L11_11)
    else
      L13_13 = _util
      L13_13 = L13_13.SetVar
      L13_13("M5_Cave_Anim_doFlip", 1)
      L13_13 = _util
      L13_13 = L13_13.AddDialog
      L13_13(_text.M6_CAVE_HERBERTF_H_2I, _const.CHANGE_DIALOG, 41)
    end
  elseif L12_12 == 41 then
    L13_13 = _util
    L13_13 = L13_13.GetVar
    L13_13 = L13_13("M5_Cave_Anim_doFlip")
    if L13_13 == 1 then
      L13_13 = scriptPlay
      L13_13(L11_11)
    else
      L13_13 = _util
      L13_13 = L13_13.SetVar
      L13_13("M5_Cave_Anim_doFlip", 1)
      L13_13 = L2_2
      L13_13()
      L13_13 = _util
      L13_13 = L13_13.AddDialog
      L13_13(_text.M6_CAVE_HERBERTF_I_2J, _const.CHANGE_DIALOG, 42)
    end
  elseif L12_12 == 42 then
    L13_13 = _util
    L13_13 = L13_13.ChangeBaseAnim
    L13_13("NPC/QuestionsCrab/Herbert/HerbMono")
    L13_13 = _util
    L13_13 = L13_13.SwitchState
    L13_13("talk", _util.GetSelf())
    L13_13 = _util
    L13_13 = L13_13.AddLoopingConv
    L13_13(_text.M6_CAVE_HERBERTF_J_2G)
    L13_13 = _util
    L13_13 = L13_13.AddLoopingOption
    L13_13(_text.M6_CAVE_HERBERTG_Q1, -1, _const.CHANGE_DIALOG, 43)
    L13_13 = _util
    L13_13 = L13_13.AddLoopingOption
    L13_13(_text.M6_CAVE_HERBERTG_Q2, -1, _const.CHANGE_DIALOG, 43)
    L13_13 = _util
    L13_13 = L13_13.AddLoopingOption
    L13_13(_text.M6_CAVE_SKIP_6, -1, _const.CHANGE_DIALOG, 56)
  elseif L12_12 == 43 then
    L13_13 = _util
    L13_13 = L13_13.GetVar
    L13_13 = L13_13("M5_Cave_Anim_doFlip")
    if L13_13 == 1 then
      L13_13 = scriptPlay
      L13_13(L11_11)
    else
      L13_13 = _util
      L13_13 = L13_13.SetVar
      L13_13("M5_Cave_Anim_doFlip", 1)
      L13_13 = _util
      L13_13 = L13_13.AddDialog
      L13_13(_text.M6_CAVE_HERBERTG_A_2B, _const.CHANGE_DIALOG, 44)
    end
  elseif L12_12 == 44 then
    L13_13 = _util
    L13_13 = L13_13.GetVar
    L13_13 = L13_13("M5_Cave_Anim_doFlip")
    if L13_13 == 1 then
      L13_13 = scriptPlay
      L13_13(L11_11)
    else
      L13_13 = _util
      L13_13 = L13_13.SetVar
      L13_13("M5_Cave_Anim_doFlip", 1)
      L13_13 = _util
      L13_13 = L13_13.ChangeBaseAnim
      L13_13("NPC/QuestionsCrab/Herbert/HerbSide7")
      L13_13 = _util
      L13_13 = L13_13.AddDialog
      L13_13(_text.M6_CAVE_HERBERTG_B_2C, _const.CHANGE_DIALOG, 45)
    end
  elseif L12_12 == 45 then
    L13_13 = _util
    L13_13 = L13_13.GetVar
    L13_13 = L13_13("M5_Cave_Anim_doFlip")
    if L13_13 == 1 then
      L13_13 = scriptPlay
      L13_13(L11_11)
    else
      L13_13 = _util
      L13_13 = L13_13.SetVar
      L13_13("M5_Cave_Anim_doFlip", 1)
      L13_13 = _util
      L13_13 = L13_13.ChangeBaseAnim
      L13_13("NPC/QuestionsCrab/Herbert/HerbSide2")
      L13_13 = _util
      L13_13 = L13_13.AddLoopingConv
      L13_13(_text.M6_CAVE_HERBERTG_C_2H)
      L13_13 = _util
      L13_13 = L13_13.AddLoopingOption
      L13_13(_text.M6_CAVE_HERBERTH_Q1, -1, _const.CHANGE_DIALOG, 46)
      L13_13 = _util
      L13_13 = L13_13.AddLoopingOption
      L13_13(_text.M6_CAVE_HERBERTH_Q2, -1, _const.CHANGE_DIALOG, 46)
    end
  elseif L12_12 == 46 then
    L13_13 = _util
    L13_13 = L13_13.ChangeBaseAnim
    L13_13("NPC/QuestionsCrab/Herbert/HerbMono3")
    L13_13 = _util
    L13_13 = L13_13.SwitchState
    L13_13("talk", _util.GetSelf())
    L13_13 = _util
    L13_13 = L13_13.AddDialog
    L13_13(_text.M6_CAVE_HERBERTH_A_2B, _const.CHANGE_DIALOG, 47)
  elseif L12_12 == 47 then
    L13_13 = _util
    L13_13 = L13_13.GetVar
    L13_13 = L13_13("M5_Cave_Anim_doFlip")
    if L13_13 == 1 then
      L13_13 = scriptPlay
      L13_13(L11_11)
    else
      L13_13 = _util
      L13_13 = L13_13.SetVar
      L13_13("M5_Cave_Anim_doFlip", 1)
      L13_13 = _util
      L13_13 = L13_13.AddDialog
      L13_13(_text.M6_CAVE_HERBERTH_B_2C, _const.CHANGE_DIALOG, 48)
    end
  elseif L12_12 == 48 then
    L13_13 = _util
    L13_13 = L13_13.GetVar
    L13_13 = L13_13("M5_Cave_Anim_doFlip")
    if L13_13 == 1 then
      L13_13 = scriptPlay
      L13_13(L11_11)
    else
      L13_13 = _util
      L13_13 = L13_13.SetVar
      L13_13("M5_Cave_Anim_doFlip", 1)
      L13_13 = _util
      L13_13 = L13_13.ChangeBaseAnim
      L13_13("NPC/QuestionsCrab/Herbert/HerbHide")
      L13_13 = _util
      L13_13 = L13_13.AddDialog
      L13_13(_text.M6_CAVE_HERBERTH_C_2D, _const.CHANGE_DIALOG, 50)
    end
  elseif L12_12 == 50 then
    L13_13 = _util
    L13_13 = L13_13.GetVar
    L13_13 = L13_13("M5_Cave_Anim_doFlip")
    if L13_13 == 1 then
      L13_13 = scriptPlay
      L13_13(L11_11)
    else
      L13_13 = _util
      L13_13 = L13_13.SetVar
      L13_13("M5_Cave_Anim_doFlip", 1)
      L13_13 = _util
      L13_13 = L13_13.ChangeBaseAnim
      L13_13("NPC/QuestionsCrab/Herbert/HerbMono5")
      L13_13 = _util
      L13_13 = L13_13.AddLoopingConv
      L13_13(_text.M6_CAVE_HERBERTH_D_2I)
      L13_13 = _util
      L13_13 = L13_13.AddLoopingOption
      L13_13(_text.M6_CAVE_HERBERTI_Q1, -1, _const.CHANGE_DIALOG, 51)
      L13_13 = _util
      L13_13 = L13_13.AddLoopingOption
      L13_13(_text.M6_CAVE_HERBERTI_Q2, -1, _const.CHANGE_DIALOG, 52)
      L13_13 = _util
      L13_13 = L13_13.AddLoopingOption
      L13_13(_text.M6_CAVE_HERBERTI_Q3, -1, _const.CHANGE_DIALOG, 53)
    end
  elseif L12_12 == 51 then
    L13_13 = _util
    L13_13 = L13_13.ChangeBaseAnim
    L13_13("NPC/QuestionsCrab/Herbert/HerbSide2")
    L13_13 = _util
    L13_13 = L13_13.SwitchState
    L13_13("talk", _util.GetSelf())
    L13_13 = _util
    L13_13 = L13_13.AddDialog
    L13_13(_text.M6_CAVE_HERBERTI_A1_2QUIT, _const.CHANGE_DIALOG, 54)
  elseif L12_12 == 52 then
    L13_13 = _util
    L13_13 = L13_13.AddDialog
    L13_13(_text.M6_CAVE_HERBERTI_A2_2QUIT, _const.CHANGE_DIALOG, 54)
  elseif L12_12 == 53 then
    L13_13 = _util
    L13_13 = L13_13.AddDialog
    L13_13(_text.M6_CAVE_HERBERTI_A3_2QUIT, _const.CHANGE_DIALOG, 54)
  elseif L12_12 == 54 then
    L13_13 = _util
    L13_13 = L13_13.ChangeBaseAnim
    L13_13("NPC/QuestionsCrab/Herbert/HerbMono")
    L13_13 = _util
    L13_13 = L13_13.SwitchState
    L13_13("talk", _util.GetSelf())
    L13_13 = _util
    L13_13 = L13_13.SetVar
    L13_13("M6_PlayExitCS", 1)
    L13_13 = _util
    L13_13 = L13_13.AddDialog
    L13_13(_text.M6_CAVE_HERBERTI_QUIT, _const.END_DIALOG, 55)
  elseif L12_12 == 56 then
    L13_13 = _util
    L13_13 = L13_13.GetVar
    L13_13 = L13_13("M5_Cave_Anim_doFlip")
    if L13_13 == 1 then
      L13_13 = _util
      L13_13 = L13_13.SetVar
      L13_13("M6_Cave_Anim_pageNumber", 30)
      L13_13 = scriptPlay
      L13_13(L11_11)
    else
      L13_13 = _util
      L13_13 = L13_13.AddDialog
      L13_13(_text.M6_CAVE_SKIP_REPLY, _const.CHANGE_DIALOG, 54)
      L13_13 = _util
      L13_13 = L13_13.RestoreSongFromHerbert
      L13_13()
      L13_13 = _util
      L13_13 = L13_13.AddObjective
      L13_13(_text.M6_OBJ4)
    end
  end
end
L13_13 = _util
L13_13 = L13_13.GetReason
L13_13 = L13_13()
if L13_13 == _const.AFTER_DIALOG then
  function L13_13()
    _util.StartCutscene(_const.WOODCHOPPERCAVE)
    repeat
      scriptWait()
    until _util.GetGameState() ~= _const.MISSION
    repeat
      scriptWait()
    until _util.GetGameState() == _const.MISSION
    _util.AddItem(63992, 2001)
    _util.AddItem(63797, 2001)
    _util.AddItem(63812, 2001)
    _util.AddItem(63703, 2001)
    _util.AddItem(63515, 2001)
    _util.AddItem(63528, 2001)
    _util.AddItem(63968, 2001)
    _util.AddItem(63923, 2001)
    _util.AddItem(63601, 2001)
    _util.AddItem(63509, 2001)
    _util.AddItem(63995, 2001)
    _util.AddItem(63517, 2001)
    _util.AddItem(63834, 2001)
    _util.AddItem(63913, 2001)
    _util.AddItem(63647, 2001)
    _util.AddItem(63983, 2001)
    _util.AddItem(63494, 2001)
    _util.AddItem(63853, 2001)
    _util.AddItem(63551, 2001)
    _util.AddItem(63512, 2001)
    _util.AddItem(63816, 2001)
    _util.SetCursorPos(730, 105)
    _util.SetVar("M6_skiLodgeNoise", 1)
    _util.DelItem(_id.M6_CaveChart)
    _util.DelItem(_id.M6_HerbertCave)
    _util.ShowPuffle()
    _util.SetPuffleX(808)
  end
  if _util.GetVar("M6_PlayExitCS") == 1 then
    _util.SetVar("M6_PlayExitCS", 0)
    scriptPlay(L13_13)
  end
end
