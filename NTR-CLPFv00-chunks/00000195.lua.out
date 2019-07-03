local L0_0, L1_1, L2_2, L3_3
L0_0 = _util
L0_0 = L0_0.GetActiveMission
L0_0 = L0_0()
L1_1 = _util
L1_1 = L1_1.GetActiveChapter
L1_1 = L1_1()
L2_2 = _util
L2_2 = L2_2.GetReason
L2_2 = L2_2()
L3_3 = _const
L3_3 = L3_3.CREATED
if L2_2 == L3_3 then
  L2_2 = _util
  L2_2 = L2_2.AddInterest
  L3_3 = _const
  L3_3 = L3_3.ITEM_DROPPED
  L2_2(L3_3)
end
L2_2 = _util
L2_2 = L2_2.GetReason
L2_2 = L2_2()
L3_3 = _const
L3_3 = L3_3.TOUCHED
if L2_2 == L3_3 then
  L2_2 = _util
  L2_2 = L2_2.GetConversationCount
  L2_2 = L2_2()
  L3_3 = _util
  L3_3 = L3_3.GetVar
  L3_3 = L3_3("FPMission_Started")
  if L3_3 ~= 0 then
    L3_3 = _util
    L3_3 = L3_3.GetVar
    L3_3 = L3_3("FPMission_Started")
    if L3_3 ~= 4 then
      L3_3 = _util
      L3_3 = L3_3.AddDialog
      L3_3(3480, _const.END_DIALOG, 0)
    end
  else
    L3_3 = _util
    L3_3 = L3_3.GetVar
    L3_3 = L3_3("FPM04_Mission_Started")
    if L3_3 == 0 then
      L3_3 = _util
      L3_3 = L3_3.GetVar
      L3_3 = L3_3("FPMission_Started")
      if L3_3 == 0 then
        if L2_2 == 0 then
          L3_3 = _util
          L3_3 = L3_3.AddConversation
          L3_3(3481, 3482, -1, _const.CHANGE_DIALOG, 1)
        elseif L2_2 == 1 then
          L3_3 = _util
          L3_3 = L3_3.AddConversation
          L3_3(3483, 3484, -1, _const.CHANGE_DIALOG, 2)
        elseif L2_2 == 2 then
          L3_3 = _util
          L3_3 = L3_3.AddLoopingConv
          L3_3(3485)
          L3_3 = _util
          L3_3 = L3_3.AddLoopingOption
          L3_3(3486, -1, _const.CHANGE_DIALOG, 3)
          L3_3 = _util
          L3_3 = L3_3.AddLoopingOption
          L3_3(3487, -1, _const.CHANGE_DIALOG, 7)
        elseif L2_2 == 3 then
          function L3_3()
            _util.StartCutscene(_const.FPM04INTRO)
            repeat
              scriptWait()
            until _util.GetGameState() ~= _const.MISSION
            repeat
              scriptWait()
            until _util.GetGameState() == _const.MISSION
            _util.SetObjective(23)
            _util.ActivateNpc(_id.FPM04_Pizza_Guy, 4)
          end
          scriptPlay(L3_3)
        elseif L2_2 == 4 then
          L3_3 = _util
          L3_3 = L3_3.AddConversation
          L3_3(3488, 3489, -1, _const.CHANGE_DIALOG, 5)
        elseif L2_2 == 5 then
          L3_3 = _util
          L3_3 = L3_3.AddConversation
          L3_3(3490, 3491, -1, _const.CHANGE_DIALOG, 6)
        elseif L2_2 == 6 then
          L3_3 = _util
          L3_3 = L3_3.AddConversation
          L3_3(3492, 3493, -1, _const.END_DIALOG, 0)
          L3_3 = _util
          L3_3 = L3_3.AddItem
          L3_3(_id.FPM04_PizzaSquidFake)
          L3_3 = _util
          L3_3 = L3_3.AddItem
          L3_3(_id.FPM04_PizzaHotSauceFake)
          L3_3 = _util
          L3_3 = L3_3.AddItem
          L3_3(_id.FPM04_PizzaSeaWeedFake)
          L3_3 = _util
          L3_3 = L3_3.AddItem
          L3_3(_id.FPM04_PizzaDessertFake)
          L3_3 = _util
          L3_3 = L3_3.SetSpawn
          L3_3(1, _id.FPM04_Pool_Guy)
          L3_3 = _util
          L3_3 = L3_3.SetSpawn
          L3_3(1, _id.FPM04_Guitar_Guy)
          L3_3 = _util
          L3_3 = L3_3.SetSpawn
          L3_3(1, _id.FPM04_Miner_Guy)
          L3_3 = _util
          L3_3 = L3_3.SetSpawn
          L3_3(1, _id.FPM04_Lookout_Guy)
          L3_3 = _util
          L3_3 = L3_3.SetVar
          L3_3("FPM04_All_Delivered", 0)
          L3_3 = _util
          L3_3 = L3_3.SetVar
          L3_3("FPM04_Num_Pizzas", 0)
          L3_3 = _util
          L3_3 = L3_3.SetVar
          L3_3("FPM04_Num_Delivered", 0)
          L3_3 = _util
          L3_3 = L3_3.SetVar
          L3_3("FPM04_SeaWeed_Delivered", 0)
          L3_3 = _util
          L3_3 = L3_3.SetVar
          L3_3("FPM04_HotSauce_Delivered", 0)
          L3_3 = _util
          L3_3 = L3_3.SetVar
          L3_3("FPM04_Dessert_Delivered", 0)
          L3_3 = _util
          L3_3 = L3_3.SetVar
          L3_3("FPM04_Squid_Delivered", 0)
          L3_3 = _util
          L3_3 = L3_3.SetVar
          L3_3("FPM04_Mission_Started", 1)
          L3_3 = _util
          L3_3 = L3_3.SetVar
          L3_3("FPMission_Started", 4)
        elseif L2_2 == 7 then
          L3_3 = _util
          L3_3 = L3_3.AddDialog
          L3_3(4439, _const.END_DIALOG, 0)
        end
      end
    else
      L3_3 = _util
      L3_3 = L3_3.GetVar
      L3_3 = L3_3("FPM04_Mission_Started")
      if L3_3 == 1 then
        L3_3 = _util
        L3_3 = L3_3.GetVar
        L3_3 = L3_3("FPM04_All_Delivered")
        if L3_3 == 0 then
          L3_3 = _util
          L3_3 = L3_3.GetVar
          L3_3 = L3_3("FPM04_Num_Pizzas")
          if L3_3 == 0 then
            if L2_2 == 0 then
              L3_3 = _util
              L3_3 = L3_3.AddConversation
              L3_3(3498, 3499, -1, _const.END_DIALOG, 0)
            end
          elseif L2_2 == 0 then
            L3_3 = _util
            L3_3 = L3_3.AddLoopingConv
            L3_3(3500)
            L3_3 = _util
            L3_3 = L3_3.AddLoopingOption
            L3_3(3501, 3504, _const.UPDATE_LOOP)
            L3_3 = _util
            L3_3 = L3_3.AddLoopingOption
            L3_3(3502, 3505, _const.CHANGE_DIALOG, 1)
            L3_3 = _util
            L3_3 = L3_3.AddLoopingOption
            L3_3(3503, -1, _const.END_DIALOG, 0)
          elseif L2_2 == 1 then
            L3_3 = _util
            L3_3 = L3_3.AddDialog
            L3_3(3505, _const.CHANGE_DIALOG, 2)
          elseif L2_2 == 2 then
            L3_3 = _util
            L3_3 = L3_3.AddDialog
            L3_3(3506, _const.CHANGE_DIALOG, 3)
          elseif L2_2 == 3 then
            L3_3 = _util
            L3_3 = L3_3.AddDialog
            L3_3(3507, _const.CHANGE_DIALOG, 4)
          elseif L2_2 == 4 then
            L3_3 = _util
            L3_3 = L3_3.AddLoopingConv
            L3_3(3508)
            L3_3 = _util
            L3_3 = L3_3.AddLoopingOption
            L3_3(3509, -1, _const.CHANGE_DIALOG, 1)
            L3_3 = _util
            L3_3 = L3_3.AddLoopingOption
            L3_3(3510, -1, _const.END_DIALOG, 0)
          end
        end
      else
        L3_3 = _util
        L3_3 = L3_3.GetVar
        L3_3 = L3_3("FPM04_All_Delivered")
        if L3_3 == 1 then
          if L2_2 == 0 then
            function L3_3()
              _util.DisplayPopUp(493, "UI/Smilie", false)
              repeat
                scriptWait()
              until _util.IsPopUpVisible() == false
              _util.AddConversation(3511, 3512, -1, _const.CHANGE_DIALOG, 1)
            end
            scriptPlay(L3_3)
          elseif L2_2 == 1 then
            L3_3 = _util
            L3_3 = L3_3.AddConversation
            L3_3(3513, 3514, -1, _const.CHANGE_DIALOG, 2)
          elseif L2_2 == 2 then
            L3_3 = _util
            L3_3 = L3_3.AddConversation
            L3_3(3515, 3516, -1, _const.CHANGE_DIALOG, 3)
          elseif L2_2 == 3 then
            L3_3 = _util
            L3_3 = L3_3.AddConversation
            L3_3(3517, 3518, -1, _const.CHANGE_DIALOG, 4)
          elseif L2_2 == 4 then
            function L3_3()
              _util.SetConversationCount(5)
              _util.SetVar("FPM04_missionComplete", 1)
              _util.SetVar("FPMission_Started", 0)
              if _UPVALUE0_ == 0 and (_UPVALUE1_ < 2 or _UPVALUE1_ == 7 or _UPVALUE1_ == 10 or _UPVALUE1_ == 11) then
                _util.RemoveMapAlert(_const.FREEPLAY4START)
              end
              _util.AddCoins(50)
              _util.DisplayPopUp(494, "UI/coin", false)
              repeat
                scriptWait()
              until _util.IsPopUpVisible() == false
              _util.SetObjective(492)
              _util.MarkFreePlayMission(_const.FPM04)
              _util.StartCutscene(_const.FPM04OUTRO)
            end
            scriptPlay(L3_3)
          elseif L2_2 == 5 then
            L3_3 = _util
            L3_3 = L3_3.AddDialog
            L3_3(3520, _const.END_DIALOG, 5)
          end
        end
      end
    end
  end
end
