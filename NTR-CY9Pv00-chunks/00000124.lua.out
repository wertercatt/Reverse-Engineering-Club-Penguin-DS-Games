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
    function L3_3()
      _util.DisableInput()
      _util.SwitchState("turn", _id.M10_GaryDrawing)
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_id.M10_GaryDrawing)
      _util.ChangeBaseAnim("NPC/WaddleSquad/Gary/gHQMeeting")
      _util.EnableInput()
      _util.ActivateNpc(_id.M10_GaryDrawing, 31)
    end
    scriptPlay(L3_3)
  elseif L2_2 == 1 then
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M10_HQ_GARYA_A2, _const.END_DIALOG, 31)
  elseif L2_2 == 2 then
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M10_HQ_GARYA_A1_2B, _const.CHANGE_DIALOG, 3)
    L3_3 = _util
    L3_3 = L3_3.ChangeBaseAnim
    L3_3("NPC/WaddleSquad/Gary/gHQMeeting")
    L3_3 = _util
    L3_3 = L3_3.ChangeBaseAnim
    L3_3("NPC/WaddleSquad/Rookie/rHQMeeting", _id.M10_HQRookie)
    L3_3 = _util
    L3_3 = L3_3.ChangeBaseAnim
    L3_3("NPC/WaddleSquad/JetPackGuy/jpgHQMeeting", _id.M10_HQJPG)
    L3_3 = _util
    L3_3 = L3_3.SetVar
    L3_3("M10_GaryDrawingDone", 1)
  elseif L2_2 == 3 then
    L3_3 = _util
    L3_3 = L3_3.ChangeBaseAnim
    L3_3("NPC/WaddleSquad/Gary/gHQ")
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M10_HQ_GARYA_B1_2JPG, _const.CHANGE_NPC, _id.M10_HQJPG, 1)
  elseif L2_2 == 4 then
    function L3_3()
      _util.DisableInput()
      _util.ChangeBaseAnim("NPC/WaddleSquad/Gary/gHQ", _id.M10_GaryDrawing, "flip")
      _util.SwitchState("flip", _id.M10_HQDrawing)
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_id.M10_GaryDrawing) and not _util.IsAnimPlaying(_id.M10_HQDrawing)
      _util.ChangeBaseAnim("MissionObjects/WaddleSquad/scripted/drawingHQ02", _id.M10_HQDrawing)
      _util.EnableInput()
      _util.ActivateNpc(_id.M10_GaryDrawing, 32)
    end
    scriptPlay(L3_3)
  elseif L2_2 == 5 then
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M10_HQ_GARYCC_A1_2B, _const.CHANGE_DIALOG, 6)
  elseif L2_2 == 6 then
    function L3_3()
      _util.DisableInput()
      _util.ChangeBaseAnim("NPC/WaddleSquad/Gary/gHQ", _id.M10_GaryDrawing, "flip")
      _util.SwitchState("flip", _id.M10_HQDrawing)
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_id.M10_GaryDrawing) and not _util.IsAnimPlaying(_id.M10_HQDrawing)
      _util.ChangeBaseAnim("MissionObjects/WaddleSquad/scripted/drawingHQ03", _id.M10_HQDrawing)
      _util.EnableInput()
      _util.ActivateNpc(_id.M10_GaryDrawing, 33)
    end
    scriptPlay(L3_3)
  elseif L2_2 == 7 then
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M10_HQ_GARYC_A1_2B, _const.CHANGE_DIALOG, 8)
  elseif L2_2 == 8 then
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M10_HQ_GARYC_B1_2HERB, _const.CHANGE_DIALOG, 12)
  elseif L2_2 == 9 then
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M10_HQ_GARYC_A2_2B, _const.CHANGE_DIALOG, 11)
  elseif L2_2 == 10 then
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M10_HQ_GARYC_A3_2B, _const.CHANGE_DIALOG, 11)
  elseif L2_2 == 11 then
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M10_HQ_GARYC_B2_2HERB, _const.CHANGE_DIALOG, 12)
  elseif L2_2 == 12 then
    function L3_3()
      _util.DisableInput()
      _util.AddItem(_id.M10_HQ_HerbLeft)
      _util.AddItem(_id.M10_HQ_HerbCenter)
      _util.AddItem(_id.M10_HQ_HerbRight)
      _util.PushCamera(_id.M10_HQ_HerbCenter)
      _util.PlaySFX(218)
      _util.SwitchState("staticBegin", _id.M10_HQ_HerbLeft)
      _util.SwitchState("staticBegin", _id.M10_HQ_HerbCenter)
      _util.SwitchState("staticBegin", _id.M10_HQ_HerbRight)
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_id.M10_HQ_HerbCenter)
      _util.ChangeBaseAnim("NPC/WaddleSquad/Rookie/rHQHerb", _id.M10_HQRookie)
      _util.ChangeBaseAnim("NPC/WaddleSquad/Gary/gHQHerb")
      _util.ChangeBaseAnim("NPC/WaddleSquad/JetPackGuy/jpgHQHerb", _id.M10_HQJPG)
      _util.SwitchState("fadeIn", _id.M10_HQ_HerbLeft)
      _util.SwitchState("fadeIn", _id.M10_HQ_HerbCenter)
      _util.SwitchState("fadeIn", _id.M10_HQ_HerbRight)
      _util.PlayHerbertLurking()
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_id.M10_HQ_HerbCenter)
      _util.SwitchState("begin", _id.M10_HQ_HerbLeft)
      _util.SwitchState("begin", _id.M10_HQ_HerbCenter)
      _util.SwitchState("begin", _id.M10_HQ_HerbRight)
      _util.PopCamera(_id.M10_HQ_HerbCenter)
      _util.DelItem(_id.M10_HQ_ScreenPenguin)
      _util.DelItem(_id.M10_HQ_ScreenPuck)
      _util.DelItem(_id.M10_HQ_ScreenDance)
      _util.ActivateNpc(_id.M10_HQJPG, 3)
      _util.EnableInput()
    end
    scriptPlay(L3_3)
  elseif L2_2 == 13 then
    L3_3 = _util
    L3_3 = L3_3.PopCamera
    L3_3(_id.M10_HQ_HerbCenter)
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M10_HQ_GARYD_A_2HERB, _const.CHANGE_NPC, _id.M10_HQ_HerbCenter, 4)
  elseif L2_2 == 14 then
    L3_3 = _util
    L3_3 = L3_3.AddLoopingConv
    L3_3(_text.M10_HQ_GARYF_A)
    L3_3 = _util
    L3_3 = L3_3.AddLoopingOption
    L3_3(_text.M10_HQ_GARYF_Q1, -1, _const.CHANGE_NPC, _id.M10_HQ_HerbCenter, 6)
    L3_3 = _util
    L3_3 = L3_3.AddLoopingOption
    L3_3(_text.M10_HQ_GARYF_Q2, -1, _const.CHANGE_NPC, _id.M10_HQ_HerbCenter, 6)
    L3_3 = _util
    L3_3 = L3_3.SwitchState
    L3_3("rookie", _id.M10_HQJPG)
    L3_3 = _util
    L3_3 = L3_3.SwitchState
    L3_3("rookie", _id.M10_GaryDrawing)
  elseif L2_2 == 15 then
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M10_HQ_GARYI_A_2ROOKIE, _const.CHANGE_NPC, _id.M10_HQRookie, 10)
    L3_3 = _util
    L3_3 = L3_3.ChangeBaseAnim
    L3_3("NPC/WaddleSquad/JetPackGuy/jpgHQMeeting", _id.M10_HQJPG)
  elseif L2_2 == 16 then
    L3_3 = _util
    L3_3 = L3_3.ChangeBaseAnim
    L3_3("NPC/WaddleSquad/Gary/gHQ")
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M10_HQ_GARYJ_A_2DIRECTOR, _const.CHANGE_NPC, _id.M10_HQDirector, 6)
  elseif L2_2 == 17 then
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M10_HQ_GARYK_A_2B, _const.CHANGE_DIALOG, 18)
  elseif L2_2 == 18 then
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M10_HQ_GARYK_B_2ROOKIE, _const.CHANGE_NPC, _id.M10_HQRookie, 11)
    L3_3 = _util
    L3_3 = L3_3.SetObjective
    L3_3(_text.M10_OBJ1)
    L3_3 = _util
    L3_3 = L3_3.AddObjective
    L3_3(_text.M10_OBJ1)
  elseif L2_2 == 19 then
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M10_HQ_GARYL_A1_2B, _const.CHANGE_DIALOG, 20)
  elseif L2_2 == 20 then
    function L3_3()
      local L0_4, L1_5, L2_6, L3_7, L4_8, L5_9
      L0_4 = _util
      L0_4 = L0_4.DisableInput
      L0_4()
      L0_4 = _util
      L0_4 = L0_4.SwitchState
      L1_5 = "Blast"
      L2_6 = _id
      L2_6 = L2_6.M10_HQJPG
      L0_4(L1_5, L2_6)
      L0_4 = _util
      L0_4 = L0_4.PlaySFX
      L1_5 = 139
      L0_4(L1_5)
      L0_4 = _util
      L0_4 = L0_4.ChangeBaseAnim
      L1_5 = "NPC/WaddleSquad/Rookie/rHQ"
      L2_6 = _id
      L2_6 = L2_6.M10_HQRookie
      L3_7 = "Walk"
      L0_4(L1_5, L2_6, L3_7)
      L0_4 = _util
      L0_4 = L0_4.GetX
      L1_5 = _id
      L1_5 = L1_5.M10_HQJPG
      L0_4 = L0_4(L1_5)
      L0_4 = L0_4 - 20
      L1_5 = _util
      L1_5 = L1_5.GetY
      L2_6 = _id
      L2_6 = L2_6.M10_HQJPG
      L1_5 = L1_5(L2_6)
      L1_5 = L1_5 - 184
      L2_6 = 100
      L3_7 = _util
      L3_7 = L3_7.MoveObject
      L4_8 = _id
      L4_8 = L4_8.M10_HQJPG
      L5_9 = L0_4
      L3_7(L4_8, L5_9, L1_5, L2_6, 1)
      L3_7 = _util
      L3_7 = L3_7.GetX
      L4_8 = _id
      L4_8 = L4_8.M10_HQRookie
      L3_7 = L3_7(L4_8)
      L3_7 = L3_7 + 200
      L4_8 = _util
      L4_8 = L4_8.GetY
      L5_9 = _id
      L5_9 = L5_9.M10_HQRookie
      L4_8 = L4_8(L5_9)
      L5_9 = 200
      _util.MoveObject(_id.M10_HQRookie, L3_7, L4_8, L5_9, 1)
      repeat
        scriptWait()
      until _util.GetY(_id.M10_HQJPG) == L1_5 and _util.GetX(_id.M10_HQRookie) == L3_7
      _util.DelItem(_id.M10_HQJPG)
      _util.DelItem(_id.M10_HQRookie)
      _util.SetSpawn(1, _id.M10_GiftShop_Rookie)
      _util.SetSpawn(1, _id.M10_Beach_JPG)
      _util.SetSpawn(1, _id.M10_RocketPack)
      _util.EnableInput()
      _util.AddDialog(_text.M10_HQ_GARYL_A2_2B, _const.CHANGE_DIALOG, 21)
    end
    scriptPlay(L3_3)
  elseif L2_2 == 21 then
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M10_HQ_GARYL_B_2C, _const.CHANGE_DIALOG, 22)
  elseif L2_2 == 22 then
    L3_3 = _util
    L3_3 = L3_3.AddObjective
    L3_3(_text.M10_OBJ2)
    L3_3 = _util
    L3_3 = L3_3.AddObjective
    L3_3(_text.M10_OBJ3)
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M10_HQ_GARYL_C_2D, _const.CHANGE_DIALOG, 23)
  elseif L2_2 == 23 then
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M10_HQ_GARYL_D, _const.END_DIALOG, 24)
  elseif L2_2 == 24 then
    L3_3 = _util
    L3_3 = L3_3.GetVar
    L3_3 = L3_3("helpedJPG")
    if L3_3 == 0 then
      L3_3 = _util
      L3_3 = L3_3.GetVar
      L3_3 = L3_3("helpedRookie")
      if L3_3 == 0 then
        L3_3 = _util
        L3_3 = L3_3.GetVar
        L3_3 = L3_3("M10_trapComplete")
        if L3_3 == 0 then
          L3_3 = _util
          L3_3 = L3_3.SetObjective
          L3_3(_text.M10_OBJ1)
        else
          L3_3 = _util
          L3_3 = L3_3.GetVar
          L3_3 = L3_3("helpedJPG")
          if L3_3 == 0 then
            L3_3 = _util
            L3_3 = L3_3.SetObjective
            L3_3(_text.M10_OBJ3)
          else
            L3_3 = _util
            L3_3 = L3_3.GetVar
            L3_3 = L3_3("helpedRookie")
            if L3_3 then
              L3_3 = _util
              L3_3 = L3_3.SetObjective
              L3_3(_text.M10_OBJ2)
            end
          end
        end
        L3_3 = _util
        L3_3 = L3_3.AddLoopingConv
        L3_3(_text.M10_HQ_GARY_GREET)
        L3_3 = _util
        L3_3 = L3_3.AddLoopingOption
        L3_3(_text.M10_HQ_GARYM_Q1, -1, _const.CHANGE_DIALOG, 25)
        L3_3 = _util
        L3_3 = L3_3.AddLoopingOption
        L3_3(_text.M10_HQ_GARYM_Q2, -1, _const.CHANGE_DIALOG, 26)
        L3_3 = _util
        L3_3 = L3_3.AddLoopingOption
        L3_3(_text.M10_HQ_GARYM_Q3, -1, _const.CHANGE_DIALOG, 27)
      end
    else
      L3_3 = _util
      L3_3 = L3_3.GetVar
      L3_3 = L3_3("helpedRookie")
      if L3_3 == 0 then
        L3_3 = _util
        L3_3 = L3_3.AddLoopingConv
        L3_3(_text.M10_HQ_GARY_GREET)
        L3_3 = _util
        L3_3 = L3_3.AddLoopingOption
        L3_3(_text.M10_HQ_GARYM_Q1, -1, _const.CHANGE_DIALOG, 25)
        L3_3 = _util
        L3_3 = L3_3.AddLoopingOption
        L3_3(_text.M10_HQ_GARYM_Q2_2, -1, _const.CHANGE_DIALOG, 28)
        L3_3 = _util
        L3_3 = L3_3.AddLoopingOption
        L3_3(_text.M10_HQ_GARYM_Q3, -1, _const.CHANGE_DIALOG, 27)
      else
        L3_3 = _util
        L3_3 = L3_3.GetVar
        L3_3 = L3_3("helpedJPG")
        if L3_3 == 0 then
          L3_3 = _util
          L3_3 = L3_3.AddLoopingConv
          L3_3(_text.M10_HQ_GARY_GREET)
          L3_3 = _util
          L3_3 = L3_3.AddLoopingOption
          L3_3(_text.M10_HQ_GARYM_Q1, -1, _const.CHANGE_DIALOG, 25)
          L3_3 = _util
          L3_3 = L3_3.AddLoopingOption
          L3_3(_text.M10_HQ_GARYM_Q2, -1, _const.CHANGE_DIALOG, 26)
          L3_3 = _util
          L3_3 = L3_3.AddLoopingOption
          L3_3(_text.M10_HQ_GARYM_Q3_2, -1, _const.CHANGE_DIALOG, 29)
        else
          L3_3 = _util
          L3_3 = L3_3.GetVar
          L3_3 = L3_3("foundKlutzy")
          if L3_3 == 0 then
            L3_3 = _util
            L3_3 = L3_3.AddLoopingConv
            L3_3(_text.M10_HQ_GARY_GREET)
            L3_3 = _util
            L3_3 = L3_3.AddLoopingOption
            L3_3(_text.M10_HQ_GARYM_Q1, -1, _const.CHANGE_DIALOG, 25)
            L3_3 = _util
            L3_3 = L3_3.AddLoopingOption
            L3_3(_text.M10_HQ_GARYM_Q2_2, -1, _const.CHANGE_DIALOG, 28)
            L3_3 = _util
            L3_3 = L3_3.AddLoopingOption
            L3_3(_text.M10_HQ_GARYM_Q3_2, -1, _const.CHANGE_DIALOG, 29)
          else
            L3_3 = _util
            L3_3 = L3_3.GetVar
            L3_3 = L3_3("M10_foundHerbAtNC")
            if L3_3 == 1 then
              L3_3 = _util
              L3_3 = L3_3.AddNPCText
              L3_3(_text.M10_HQ_GARY_GREET2, _const.END_DIALOG, -1, 24)
            else
              L3_3 = _util
              L3_3 = L3_3.AddConversation
              L3_3(_text.M10_HQ_GARYM_AFTERKLUTZY, _text.M10_HQ_GARYM_AFTERKLUTZY_QUIT, -1, _const.END_DIALOG, 30)
            end
          end
        end
      end
    end
  elseif L2_2 == 25 then
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M10_HQ_GARYM_A1, _const.END_DIALOG, 24)
  elseif L2_2 == 26 then
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M10_HQ_GARYM_A2, _const.END_DIALOG, 24)
  elseif L2_2 == 27 then
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M10_HQ_GARYM_A3, _const.END_DIALOG, 24)
  elseif L2_2 == 28 then
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M10_HQ_GARYM_A2_2, _const.END_DIALOG, 24)
  elseif L2_2 == 29 then
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M10_HQ_GARYM_A2_2, _const.END_DIALOG, 24)
  elseif L2_2 == 30 then
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M10_HQ_GARY_GREET2, _const.END_DIALOG, 30)
  elseif L2_2 == 31 then
    L3_3 = _util
    L3_3 = L3_3.AddLoopingConv
    L3_3(_text.M10_HQ_GARY_INTRO)
    L3_3 = _util
    L3_3 = L3_3.AddLoopingOption
    L3_3(_text.M10_HQ_GARYA_Q1, -1, _const.CHANGE_DIALOG, 2)
    L3_3 = _util
    L3_3 = L3_3.AddLoopingOption
    L3_3(_text.M10_HQ_GARYA_Q2, -1, _const.CHANGE_DIALOG, 1)
  elseif L2_2 == 32 then
    L3_3 = _util
    L3_3 = L3_3.AddLoopingConv
    L3_3(_text.M10_HQ_GARYB_A1)
    L3_3 = _util
    L3_3 = L3_3.AddLoopingOption
    L3_3(_text.M10_HQ_GARYB_Q1, -1, _const.CHANGE_NPC, _id.M10_HQRookie, 6)
    L3_3 = _util
    L3_3 = L3_3.AddLoopingOption
    L3_3(_text.M10_HQ_GARYB_Q2, -1, _const.CHANGE_DIALOG, 5)
  elseif L2_2 == 33 then
    L3_3 = _util
    L3_3 = L3_3.AddLoopingConv
    L3_3(_text.M10_HQ_GARYC_B1)
    L3_3 = _util
    L3_3 = L3_3.AddLoopingOption
    L3_3(_text.M10_HQ_GARYC_Q1, -1, _const.CHANGE_DIALOG, 7)
    L3_3 = _util
    L3_3 = L3_3.AddLoopingOption
    L3_3(_text.M10_HQ_GARYC_Q2, -1, _const.CHANGE_DIALOG, 9)
    L3_3 = _util
    L3_3 = L3_3.AddLoopingOption
    L3_3(_text.M10_HQ_GARYC_Q3, -1, _const.CHANGE_DIALOG, 10)
  end
end
L3_3 = _util
L3_3 = L3_3.GetReason
L3_3 = L3_3()
if L3_3 == _const.COMMUNICATOR then
  L3_3 = _util
  L3_3 = L3_3.GetComCount
  L3_3 = L3_3()
  if L3_3 == 0 then
    _util.AddComText(_text.M10_NIGHTCLUB_GCOMM, _const.END_DIALOG, 0)
    _util.SetVar("M10_NC_HerbContHook", 1)
  elseif L3_3 == 1 then
    _util.AddObjective(_text.M10_OBJ6)
    _util.AddComText(_text.M10_TASKSDONE_JPG_COMM, _const.END_DIALOG, 1)
  end
end
