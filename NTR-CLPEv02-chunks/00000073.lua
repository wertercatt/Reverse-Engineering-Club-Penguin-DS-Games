local L0_0, L1_1
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
  L0_0 = _util
  L0_0 = L0_0.AddInterest
  L1_1 = _const
  L1_1 = L1_1.COMMUNICATOR
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
  if L0_0 == 31 then
    L1_1 = _util
    L1_1 = L1_1.SetVar
    L1_1("M4C1_Gary_Got_Rookie", 1)
    L1_1 = _util
    L1_1 = L1_1.DecVar
    L1_1("M4C1_Player_Has_Clue")
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("M4C1_Player_Has_Clue")
    if L1_1 == 0 then
      L1_1 = _util
      L1_1 = L1_1.SetObjective
      L1_1(658)
    end
    L1_1 = _util
    L1_1 = L1_1.RemoveInventoryItem
    L1_1(_id.Inventory_RookieClue)
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("M4C1_Gary_Got_JPG")
    if L1_1 == 1 then
      L1_1 = _util
      L1_1 = L1_1.GetVar
      L1_1 = L1_1("M4C1_Gary_Got_Dot")
      if L1_1 == 1 then
        L1_1 = _util
        L1_1 = L1_1.SetVar
        L1_1("M4C1_Gary_Var", 4)
        L1_1 = _util
        L1_1 = L1_1.AddConversation
        L1_1(2100, 2101, -1, _const.CHANGE_DIALOG, 40)
      end
    else
      L1_1 = _util
      L1_1 = L1_1.GetVar
      L1_1 = L1_1("M4C1_Dot_Status")
      if L1_1 ~= 0 then
        L1_1 = _util
        L1_1 = L1_1.GetVar
        L1_1 = L1_1("M4C1_Gary_Got_Dot")
        if L1_1 == 0 then
          L1_1 = _util
          L1_1 = L1_1.SetVar
          L1_1("M4C1_Gary_Var", 3)
        end
      else
        L1_1 = _util
        L1_1 = L1_1.GetVar
        L1_1 = L1_1("M4C1_JPG_Status")
        if L1_1 ~= 0 then
          L1_1 = _util
          L1_1 = L1_1.GetVar
          L1_1 = L1_1("M4C1_Gary_Got_JPG")
          if L1_1 == 0 then
            L1_1 = _util
            L1_1 = L1_1.SetVar
            L1_1("M4C1_Gary_Var", 2)
          end
        else
          L1_1 = _util
          L1_1 = L1_1.GetVar
          L1_1 = L1_1("M4C1_RookieStatus")
          if L1_1 ~= 0 then
            L1_1 = _util
            L1_1 = L1_1.GetVar
            L1_1 = L1_1("M4C1_Gary_Got_Rookie")
            if L1_1 == 0 then
              L1_1 = _util
              L1_1 = L1_1.SetVar
              L1_1("M4C1_Gary_Var", 1)
            end
          else
            L1_1 = _util
            L1_1 = L1_1.SetVar
            L1_1("M4C1_Gary_Var", 0)
          end
        end
      end
      L1_1 = _util
      L1_1 = L1_1.AddConversation
      L1_1(2100, 2101, -1, _const.CHANGE_DIALOG, 311)
    end
  elseif L0_0 == 311 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(2102, _const.END_DIALOG, 0)
  elseif L0_0 == 32 then
    L1_1 = _util
    L1_1 = L1_1.SetVar
    L1_1("M4C1_Gary_Got_JPG", 1)
    L1_1 = _util
    L1_1 = L1_1.DecVar
    L1_1("M4C1_Player_Has_Clue")
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("M4C1_Player_Has_Clue")
    if L1_1 == 0 then
      L1_1 = _util
      L1_1 = L1_1.SetObjective
      L1_1(658)
    end
    L1_1 = _util
    L1_1 = L1_1.RemoveInventoryItem
    L1_1(_id.M4C1_JPGClue)
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("M4C1_Gary_Got_Rookie")
    if L1_1 == 1 then
      L1_1 = _util
      L1_1 = L1_1.GetVar
      L1_1 = L1_1("M4C1_Gary_Got_Dot")
      if L1_1 == 1 then
        L1_1 = _util
        L1_1 = L1_1.SetVar
        L1_1("M4C1_Gary_Var", 4)
        L1_1 = _util
        L1_1 = L1_1.AddConversation
        L1_1(2110, 2111, -1, _const.CHANGE_DIALOG, 40)
      end
    else
      L1_1 = _util
      L1_1 = L1_1.GetVar
      L1_1 = L1_1("M4C1_Dot_Status")
      if L1_1 ~= 0 then
        L1_1 = _util
        L1_1 = L1_1.GetVar
        L1_1 = L1_1("M4C1_Gary_Got_Dot")
        if L1_1 == 0 then
          L1_1 = _util
          L1_1 = L1_1.SetVar
          L1_1("M4C1_Gary_Var", 3)
        end
      else
        L1_1 = _util
        L1_1 = L1_1.GetVar
        L1_1 = L1_1("M4C1_JPG_Status")
        if L1_1 ~= 0 then
          L1_1 = _util
          L1_1 = L1_1.GetVar
          L1_1 = L1_1("M4C1_Gary_Got_JPG")
          if L1_1 == 0 then
            L1_1 = _util
            L1_1 = L1_1.SetVar
            L1_1("M4C1_Gary_Var", 2)
          end
        else
          L1_1 = _util
          L1_1 = L1_1.GetVar
          L1_1 = L1_1("M4C1_RookieStatus")
          if L1_1 ~= 0 then
            L1_1 = _util
            L1_1 = L1_1.GetVar
            L1_1 = L1_1("M4C1_Gary_Got_Rookie")
            if L1_1 == 0 then
              L1_1 = _util
              L1_1 = L1_1.SetVar
              L1_1("M4C1_Gary_Var", 1)
            end
          else
            L1_1 = _util
            L1_1 = L1_1.SetVar
            L1_1("M4C1_Gary_Var", 0)
          end
        end
      end
      L1_1 = _util
      L1_1 = L1_1.AddConversation
      L1_1(2110, 2111, -1, _const.CHANGE_DIALOG, 321)
    end
  elseif L0_0 == 321 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(2112, _const.END_DIALOG, 0)
  elseif L0_0 == 33 then
    L1_1 = _util
    L1_1 = L1_1.SetVar
    L1_1("M4C1_Gary_Got_Dot", 1)
    L1_1 = _util
    L1_1 = L1_1.DecVar
    L1_1("M4C1_Player_Has_Clue")
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("M4C1_Player_Has_Clue")
    if L1_1 == 0 then
      L1_1 = _util
      L1_1 = L1_1.SetObjective
      L1_1(658)
    end
    L1_1 = _util
    L1_1 = L1_1.RemoveInventoryItem
    L1_1(_id.M4C1_HelmetClue)
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("M4C1_Gary_Got_Rookie")
    if L1_1 == 1 then
      L1_1 = _util
      L1_1 = L1_1.GetVar
      L1_1 = L1_1("M4C1_Gary_Got_JPG")
      if L1_1 == 1 then
        L1_1 = _util
        L1_1 = L1_1.SetVar
        L1_1("M4C1_Gary_Var", 4)
        L1_1 = _util
        L1_1 = L1_1.AddConversation
        L1_1(2120, 2121, -1, _const.CHANGE_DIALOG, 40)
      end
    else
      L1_1 = _util
      L1_1 = L1_1.GetVar
      L1_1 = L1_1("M4C1_Dot_Status")
      if L1_1 ~= 0 then
        L1_1 = _util
        L1_1 = L1_1.GetVar
        L1_1 = L1_1("M4C1_Gary_Got_Dot")
        if L1_1 == 0 then
          L1_1 = _util
          L1_1 = L1_1.SetVar
          L1_1("M4C1_Gary_Var", 3)
        end
      else
        L1_1 = _util
        L1_1 = L1_1.GetVar
        L1_1 = L1_1("M4C1_JPG_Status")
        if L1_1 ~= 0 then
          L1_1 = _util
          L1_1 = L1_1.GetVar
          L1_1 = L1_1("M4C1_Gary_Got_JPG")
          if L1_1 == 0 then
            L1_1 = _util
            L1_1 = L1_1.SetVar
            L1_1("M4C1_Gary_Var", 2)
          end
        else
          L1_1 = _util
          L1_1 = L1_1.GetVar
          L1_1 = L1_1("M4C1_RookieStatus")
          if L1_1 ~= 0 then
            L1_1 = _util
            L1_1 = L1_1.GetVar
            L1_1 = L1_1("M4C1_Gary_Got_Rookie")
            if L1_1 == 0 then
              L1_1 = _util
              L1_1 = L1_1.SetVar
              L1_1("M4C1_Gary_Var", 1)
            end
          else
            L1_1 = _util
            L1_1 = L1_1.SetVar
            L1_1("M4C1_Gary_Var", 0)
          end
        end
      end
      L1_1 = _util
      L1_1 = L1_1.AddConversation
      L1_1(2120, 2121, -1, _const.CHANGE_DIALOG, 331)
    end
  elseif L0_0 == 331 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(2122, _const.END_DIALOG, 0)
  elseif L0_0 == 40 then
    L1_1 = _util
    L1_1 = L1_1.AddMapAlert
    L1_1(_const.STORY_MISSION, 260, 262, _const.M1C2MISSIONSTART, 110, 115)
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(2291, 2292, -1, _const.CHANGE_DIALOG, 41)
  elseif L0_0 == 41 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(2293, 2294, -1, _const.CHANGE_DIALOG, 42)
  elseif L0_0 == 42 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(2295, 2296, -1, _const.CHANGE_DIALOG, 43)
  elseif L0_0 == 43 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(2297, 2298, -1, _const.CHANGE_DIALOG, 44)
  elseif L0_0 == 44 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(2299, 2300, -1, _const.CHANGE_DIALOG, 45)
  elseif L0_0 == 45 then
    function L1_1()
      _util.DisplayPopUp(338, "UI/Zoom/RobotomyGadget", false)
      repeat
        scriptWait()
      until _util.IsPopUpVisible() == false
      _util.StartCutscene(_const.ROBOTOMY101)
      repeat
        scriptWait()
      until _util.GetGameState() ~= _const.MISSION
      repeat
        scriptWait()
      until _util.GetGameState() == _const.MISSION
      repeat
        scriptWait()
      until _util.IsInRoom(_id.M4C1_Gary_Gadget, 13)
      _util.ActivateNpc(_id.M4C1_Gary_Gadget, 46)
    end
    scriptPlay(L1_1)
  elseif L0_0 == 46 then
    L1_1 = _util
    L1_1 = L1_1.AddMonologue
    L1_1(2303, "DialogStrings", _const.CHANGE_DIALOG, 47)
  elseif L0_0 == 47 then
    L1_1 = _util
    L1_1 = L1_1.EnableSpyPodFunc
    L1_1(_const.FLAG_ROBOTOMY)
    L1_1 = _util
    L1_1 = L1_1.AddMonologue
    L1_1(2304, "DialogStrings", _const.CHANGE_DIALOG, 48)
  elseif L0_0 == 48 then
    L1_1 = _util
    L1_1 = L1_1.IsCommandCoachActive
    L1_1 = L1_1()
    if L1_1 then
      L1_1 = _util
      L1_1 = L1_1.ActivateNpc
      L1_1(_util.GetSelf(), 50)
    else
      L1_1 = _util
      L1_1 = L1_1.EndMission
      L1_1()
    end
  elseif L0_0 == 50 then
    function L1_1()
      _util.DisplayPopUp(493, "UI/Smilie", false)
      repeat
        scriptWait()
      until _util.IsPopUpVisible() == false
      repeat
        scriptWait()
      until 0 + 1 == 40
      _util.EndMission()
    end
    scriptPlay(L1_1)
  else
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("M4C1_chapterIntroComplete")
    if L1_1 == 0 then
      if L0_0 == 0 then
        L1_1 = _util
        L1_1 = L1_1.AddConversation
        L1_1(2059, 2060, -1, _const.CHANGE_DIALOG, 1)
      elseif L0_0 == 1 then
        L1_1 = _util
        L1_1 = L1_1.AddConversation
        L1_1(2061, 2062, -1, _const.CHANGE_DIALOG, 2)
      elseif L0_0 == 2 then
        L1_1 = _util
        L1_1 = L1_1.AddDialog
        L1_1(2063, _const.END_DIALOG, 0)
        L1_1 = _util
        L1_1 = L1_1.SetVar
        L1_1("M4C1_haveGadget", 1)
        L1_1 = _util
        L1_1 = L1_1.SetVar
        L1_1("M4C1_chapterIntroComplete", 1)
        L1_1 = _util
        L1_1 = L1_1.AddMapAlert
        L1_1(_const.STORY_MISSION, 210, 130, _const.M4C1AGENTLODGE, 68, 75)
        L1_1 = _util
        L1_1 = L1_1.AddMapAlert
        L1_1(_const.STORY_MISSION, 564, 295, _const.M4C1AGENTPLAZA, 153, 135)
        L1_1 = _util
        L1_1 = L1_1.AddMapAlert
        L1_1(_const.STORY_MISSION, 259, 245, _const.M4C1AGENTNIGHT, 102, 115)
      end
    else
      L1_1 = _util
      L1_1 = L1_1.GetVar
      L1_1 = L1_1("M4C1_chapterIntroComplete")
      if L1_1 == 1 then
        L1_1 = _util
        L1_1 = L1_1.GetVar
        L1_1 = L1_1("M4C1_leftGR")
        if L1_1 == 0 then
          if L0_0 == 0 then
            L1_1 = _util
            L1_1 = L1_1.AddLoopingConv
            L1_1(2071)
            L1_1 = _util
            L1_1 = L1_1.AddLoopingOption
            L1_1(2072, 2076, _const.UPDATE_LOOP)
            L1_1 = _util
            L1_1 = L1_1.AddLoopingOption
            L1_1(2073, 2077, _const.UPDATE_LOOP)
            L1_1 = _util
            L1_1 = L1_1.AddLoopingOption
            L1_1(2074, -1, _const.CHANGE_DIALOG, 1)
          elseif L0_0 == 1 then
            L1_1 = _util
            L1_1 = L1_1.AddDialog
            L1_1(2075, _const.END_DIALOG, 0)
          end
        end
      else
        L1_1 = _util
        L1_1 = L1_1.GetVar
        L1_1 = L1_1("M4C1_leftGR")
        if L1_1 == 1 then
          L1_1 = _util
          L1_1 = L1_1.GetVar
          L1_1 = L1_1("M4C1_Player_Has_Clue")
          if L1_1 == 0 then
            if L0_0 == 0 then
              L1_1 = _util
              L1_1 = L1_1.AddLoopingConv
              L1_1(2078)
              L1_1 = _util
              L1_1 = L1_1.AddLoopingOption
              L1_1(2079, 2082, _const.UPDATE_LOOP)
              L1_1 = _util
              L1_1 = L1_1.AddLoopingOption
              L1_1(2080, 2083, _const.UPDATE_LOOP)
              L1_1 = _util
              L1_1 = L1_1.AddLoopingOption
              L1_1(2081, -1, _const.CHANGE_DIALOG, 1)
            elseif L0_0 == 1 then
              L1_1 = _util
              L1_1 = L1_1.AddDialog
              L1_1(2084, _const.END_DIALOG, 0)
            end
          end
        else
          L1_1 = _util
          L1_1 = L1_1.GetVar
          L1_1 = L1_1("M4C1_Player_Has_Clue")
          if L1_1 > 0 then
            if L0_0 == 0 then
              L1_1 = _util
              L1_1 = L1_1.AddDialog
              L1_1(2085, _const.CHANGE_DIALOG, 1)
              L1_1 = _util
              L1_1 = L1_1.GetVar
              L1_1 = L1_1("M4C1_Helped_Rookie")
              if L1_1 == 1 then
                L1_1 = _util
                L1_1 = L1_1.GetVar
                L1_1 = L1_1("M4C1_Gary_Got_Rookie")
                if L1_1 == 0 then
                  L1_1 = _util
                  L1_1 = L1_1.AddDialogButton
                  L1_1(2090, _const.CHANGE_DIALOG, 100)
                end
              end
              L1_1 = _util
              L1_1 = L1_1.GetVar
              L1_1 = L1_1("M4C1_Helped_Dot")
              if L1_1 == 1 then
                L1_1 = _util
                L1_1 = L1_1.GetVar
                L1_1 = L1_1("M4C1_Gary_Got_Dot")
                if L1_1 == 0 then
                  L1_1 = _util
                  L1_1 = L1_1.AddDialogButton
                  L1_1(2092, _const.CHANGE_DIALOG, 300)
                end
              end
              L1_1 = _util
              L1_1 = L1_1.GetVar
              L1_1 = L1_1("M4C1_Helped_JPG")
              if L1_1 == 1 then
                L1_1 = _util
                L1_1 = L1_1.GetVar
                L1_1 = L1_1("M4C1_Gary_Got_JPG")
                if L1_1 == 0 then
                  L1_1 = _util
                  L1_1 = L1_1.AddDialogButton
                  L1_1(2091, _const.CHANGE_DIALOG, 200)
                end
              end
            elseif L0_0 == 100 then
              L1_1 = _util
              L1_1 = L1_1.AddLoopingConv
              L1_1(2093)
              L1_1 = _util
              L1_1 = L1_1.AddLoopingOption
              L1_1(2094, -1, _const.CHANGE_DIALOG, 101)
              L1_1 = _util
              L1_1 = L1_1.AddLoopingOption
              L1_1(2096, -1, _const.CHANGE_DIALOG, 102)
            elseif L0_0 == 101 then
              L1_1 = _util
              L1_1 = L1_1.AddDialog
              L1_1(2095, _const.END_DIALOG, 0)
            elseif L0_0 == 102 then
              L1_1 = _util
              L1_1 = L1_1.AddDialog
              L1_1(2097, _const.END_DIALOG, 0)
            elseif L0_0 == 200 then
              L1_1 = _util
              L1_1 = L1_1.AddLoopingConv
              L1_1(2103)
              L1_1 = _util
              L1_1 = L1_1.AddLoopingOption
              L1_1(2104, -1, _const.CHANGE_DIALOG, 201)
              L1_1 = _util
              L1_1 = L1_1.AddLoopingOption
              L1_1(2106, -1, _const.CHANGE_DIALOG, 202)
            elseif L0_0 == 201 then
              L1_1 = _util
              L1_1 = L1_1.AddDialog
              L1_1(2105, _const.END_DIALOG, 0)
            elseif L0_0 == 202 then
              L1_1 = _util
              L1_1 = L1_1.AddDialog
              L1_1(2107, _const.END_DIALOG, 0)
            elseif L0_0 == 300 then
              L1_1 = _util
              L1_1 = L1_1.AddLoopingConv
              L1_1(2113)
              L1_1 = _util
              L1_1 = L1_1.AddLoopingOption
              L1_1(2114, -1, _const.CHANGE_DIALOG, 301)
              L1_1 = _util
              L1_1 = L1_1.AddLoopingOption
              L1_1(2116, -1, _const.CHANGE_DIALOG, 302)
            elseif L0_0 == 301 then
              L1_1 = _util
              L1_1 = L1_1.AddDialog
              L1_1(2115, _const.END_DIALOG, 0)
            elseif L0_0 == 302 then
              L1_1 = _util
              L1_1 = L1_1.AddDialog
              L1_1(2117, _const.END_DIALOG, 0)
            end
          end
        end
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
  L1_1 = _util
  L1_1 = L1_1.GetConversationCount
  L1_1 = L1_1()
  if L0_0 == _id.Inventory_RookieClue then
    _util.AddConversation(2098, 2099, -1, _const.CHANGE_DIALOG, 31)
  end
  if L0_0 == _id.M4C1_JPGClue then
    _util.AddConversation(2108, 2109, -1, _const.CHANGE_DIALOG, 32)
  end
  if L0_0 == _id.M4C1_HelmetClue then
    _util.AddConversation(2118, 2119, -1, _const.CHANGE_DIALOG, 33)
  end
end
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.COMMUNICATOR
if L0_0 == L1_1 then
  L0_0 = _util
  L0_0 = L0_0.GetComCount
  L0_0 = L0_0()
  L1_1 = _util
  L1_1 = L1_1.GetVar
  L1_1 = L1_1("M4C1_Gary_Var")
  if L1_1 == 0 then
    if L0_0 == 0 then
      L1_1 = _util
      L1_1 = L1_1.AddComText
      L1_1(2123)
      L1_1 = _util
      L1_1 = L1_1.AddComOption
      L1_1(2124, _const.CHANGE_DIALOG, 1)
    elseif L0_0 == 1 then
      L1_1 = _util
      L1_1 = L1_1.AddComText
      L1_1(2125)
      L1_1 = _util
      L1_1 = L1_1.AddComOption
      L1_1(2126, _const.END_DIALOG, 0)
    end
  end
  L1_1 = _util
  L1_1 = L1_1.GetVar
  L1_1 = L1_1("M4C1_Gary_Var")
  if L1_1 == 1 then
    if L0_0 == 0 then
      L1_1 = _util
      L1_1 = L1_1.AddComText
      L1_1(2127)
      L1_1 = _util
      L1_1 = L1_1.AddComOption
      L1_1(2128, _const.CHANGE_DIALOG, 1)
    elseif L0_0 == 1 then
      L1_1 = _util
      L1_1 = L1_1.AddComText
      L1_1(2129)
      L1_1 = _util
      L1_1 = L1_1.AddComOption
      L1_1(2130, _const.END_DIALOG, 0)
    end
  end
  L1_1 = _util
  L1_1 = L1_1.GetVar
  L1_1 = L1_1("M4C1_Gary_Var")
  if L1_1 == 2 then
    if L0_0 == 0 then
      L1_1 = _util
      L1_1 = L1_1.AddComText
      L1_1(2131)
      L1_1 = _util
      L1_1 = L1_1.AddComOption
      L1_1(2132, _const.CHANGE_DIALOG, 1)
    elseif L0_0 == 1 then
      L1_1 = _util
      L1_1 = L1_1.AddComText
      L1_1(2133)
      L1_1 = _util
      L1_1 = L1_1.AddComOption
      L1_1(2134, _const.END_DIALOG, 0)
    end
  end
  L1_1 = _util
  L1_1 = L1_1.GetVar
  L1_1 = L1_1("M4C1_Gary_Var")
  if L1_1 == 3 then
    if L0_0 == 0 then
      L1_1 = _util
      L1_1 = L1_1.AddComText
      L1_1(2135)
      L1_1 = _util
      L1_1 = L1_1.AddComOption
      L1_1(2136, _const.CHANGE_DIALOG, 1)
    elseif L0_0 == 1 then
      L1_1 = _util
      L1_1 = L1_1.AddComText
      L1_1(2137)
      L1_1 = _util
      L1_1 = L1_1.AddComOption
      L1_1(2138, _const.END_DIALOG, 0)
    end
  end
  L1_1 = _util
  L1_1 = L1_1.GetVar
  L1_1 = L1_1("M4C1_Gary_Var")
  if L1_1 == 4 then
    if L0_0 == 0 then
      L1_1 = _util
      L1_1 = L1_1.AddComText
      L1_1(2139)
      L1_1 = _util
      L1_1 = L1_1.AddComOption
      L1_1(2140, _const.CHANGE_DIALOG, 1)
    elseif L0_0 == 1 then
      L1_1 = _util
      L1_1 = L1_1.AddComText
      L1_1(2141)
      L1_1 = _util
      L1_1 = L1_1.AddComOption
      L1_1(2142, _const.END_DIALOG, 0)
    end
  end
  L1_1 = _util
  L1_1 = L1_1.GetVar
  L1_1 = L1_1("M4C1_Gary_Var")
  if L1_1 == 5 then
    if L0_0 == 0 then
      L1_1 = _util
      L1_1 = L1_1.AddComText
      L1_1(4513)
      L1_1 = _util
      L1_1 = L1_1.AddComOption
      L1_1(4514, _const.CHANGE_DIALOG, 1)
    elseif L0_0 == 1 then
      L1_1 = _util
      L1_1 = L1_1.AddComText
      L1_1(4515)
      L1_1 = _util
      L1_1 = L1_1.AddComOption
      L1_1(4516, _const.END_DIALOG, 0)
    end
  end
end
