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
  L1_1 = _util
  L1_1 = L1_1.GetVar
  L1_1 = L1_1("FPMission_Started")
  if L1_1 ~= 0 then
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("FPMission_Started")
    if L1_1 ~= 5 then
      L1_1 = _util
      L1_1 = L1_1.GetVar
      L1_1 = L1_1("FPM05_missionComplete")
      if L1_1 == 0 then
        L1_1 = _util
        L1_1 = L1_1.AddDialog
        L1_1(3573, _const.END_DIALOG, 0)
      end
    end
  else
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("FPM05_All_Delivered")
    if L1_1 == 1 then
      if L0_0 == 0 then
        function L1_1()
          _util.DisplayPopUp(488, "UI/Smilie", false)
          repeat
            scriptWait()
          until _util.IsPopUpVisible() == false
          _util.AddSmileys(20, _util.GetX(_util.GetSelf()), _util.GetX(_util.GetSelf()))
          _util.AddConversation(3603, 3604, -1, _const.CHANGE_DIALOG, 1)
        end
        scriptPlay(L1_1)
      elseif L0_0 == 1 then
        L1_1 = _util
        L1_1 = L1_1.AddConversation
        L1_1(3605, 3606, -1, _const.CHANGE_DIALOG, 2)
      elseif L0_0 == 2 then
        L1_1 = _util
        L1_1 = L1_1.AddConversation
        L1_1(3607, 3608, -1, _const.CHANGE_DIALOG, 3)
      elseif L0_0 == 3 then
        L1_1 = _util
        L1_1 = L1_1.AddConversation
        L1_1(3609, 3610, -1, _const.CHANGE_DIALOG, 4)
      elseif L0_0 == 4 then
        function L1_1()
          _util.SetConversationCount(5)
          _util.SetVar("FPM05_missionComplete", 1)
          _util.SetSpawn(1, _id.FPM14_PizzaChef)
          _util.SetSpawn(1, _id.FPM12_AuntArctic)
          _util.SetSpawn(0, _id.FPM05_Aunt_Arctic)
          _util.SetSpawn(0, _id.FPM05_Coin_Counting_NPC)
          _util.SetSpawn(0, _id.FPM05_SnowFort_NPC1)
          _util.SetSpawn(0, _id.FPM05_SnowFort_NPC2)
          _util.SetSpawn(0, _id.FPM05_Barista)
          _util.SetVar("FPMission_Started", 0)
          _util.RemoveMapAlert(_const.FREEPLAY4START)
          _util.AddCoins(50)
          _util.DisplayPopUp(489, "UI/coin", false)
          repeat
            scriptWait()
          until _util.IsPopUpVisible() == false
          _util.SetObjective(487)
          _util.MarkFreePlayMission(_const.FPM05)
          _util.StartCutscene(_const.FPM05OUTRO)
        end
        scriptPlay(L1_1)
      elseif L0_0 == 5 then
        L1_1 = _util
        L1_1 = L1_1.AddDialog
        L1_1(3723, _const.END_DIALOG, 5)
      end
    else
      L1_1 = _util
      L1_1 = L1_1.GetVar
      L1_1 = L1_1("FPMission_Started")
      if L1_1 == 0 then
        if L0_0 == 0 then
          L1_1 = _util
          L1_1 = L1_1.AddConversation
          L1_1(3574, 3575, -1, _const.CHANGE_DIALOG, 1)
        elseif L0_0 == 1 then
          L1_1 = _util
          L1_1 = L1_1.AddConversation
          L1_1(3576, 3577, -1, _const.CHANGE_DIALOG, 2)
        elseif L0_0 == 2 then
          L1_1 = _util
          L1_1 = L1_1.AddLoopingConv
          L1_1(3578)
          L1_1 = _util
          L1_1 = L1_1.AddLoopingOption
          L1_1(3579, -1, _const.CHANGE_DIALOG, 3)
          L1_1 = _util
          L1_1 = L1_1.AddLoopingOption
          L1_1(3580, -1, _const.CHANGE_DIALOG, 100)
        elseif L0_0 == 100 then
          L1_1 = _util
          L1_1 = L1_1.AddDialog
          L1_1(4446, _const.END_DIALOG, 0)
        elseif L0_0 == 3 then
          function L1_1()
            _util.StartCutscene(_const.FPM05INTRO)
            repeat
              scriptWait()
            until _util.GetGameState() ~= _const.MISSION
            repeat
              scriptWait()
            until _util.GetGameState() == _const.MISSION
            _util.SetObjective(21)
            _util.ActivateNpc(_id.FPM05_Pizza_Guy, 4)
          end
          scriptPlay(L1_1)
        elseif L0_0 == 4 then
          L1_1 = _util
          L1_1 = L1_1.AddConversation
          L1_1(3581, 3582, -1, _const.CHANGE_DIALOG, 5)
        elseif L0_0 == 5 then
          L1_1 = _util
          L1_1 = L1_1.AddConversation
          L1_1(3583, 3584, -1, _const.CHANGE_DIALOG, 6)
        elseif L0_0 == 6 then
          L1_1 = _util
          L1_1 = L1_1.AddConversation
          L1_1(3585, 3586, -1, _const.CHANGE_DIALOG, 7)
        elseif L0_0 == 7 then
          L1_1 = _util
          L1_1 = L1_1.AddConversation
          L1_1(3587, 3588, -1, _const.CHANGE_DIALOG, 8)
        elseif L0_0 == 8 then
          L1_1 = _util
          L1_1 = L1_1.AddDialog
          L1_1(3589, _const.END_DIALOG, 0)
          L1_1 = _util
          L1_1 = L1_1.SetSpawn
          L1_1(1, _id.FPM05_PizzaSquidFake)
          L1_1 = _util
          L1_1 = L1_1.SetSpawn
          L1_1(1, _id.FPM05_PizzaHotSauceFake)
          L1_1 = _util
          L1_1 = L1_1.SetSpawn
          L1_1(1, _id.FPM05_PizzaSeaweedFake)
          L1_1 = _util
          L1_1 = L1_1.SetSpawn
          L1_1(1, _id.FPM05_PizzaDessertFake)
          L1_1 = _util
          L1_1 = L1_1.SetSpawn
          L1_1(1, _id.FPM05_Aunt_Arctic)
          L1_1 = _util
          L1_1 = L1_1.SetSpawn
          L1_1(1, _id.FPM05_Coin_Counting_NPC)
          L1_1 = _util
          L1_1 = L1_1.SetSpawn
          L1_1(1, _id.FPM05_SnowFort_NPC1)
          L1_1 = _util
          L1_1 = L1_1.SetSpawn
          L1_1(1, _id.FPM05_SnowFort_NPC2)
          L1_1 = _util
          L1_1 = L1_1.SetSpawn
          L1_1(1, _id.FPM05_Barista)
          L1_1 = _util
          L1_1 = L1_1.SetSpawn
          L1_1(0, _id.FPM14_PizzaChef)
          L1_1 = _util
          L1_1 = L1_1.SetSpawn
          L1_1(0, _id.FPM12_AuntArctic)
          L1_1 = _util
          L1_1 = L1_1.SetVar
          L1_1("FPMission_Started", 5)
          L1_1 = _util
          L1_1 = L1_1.SetVar
          L1_1("FPM05_All_Delivered", 0)
          L1_1 = _util
          L1_1 = L1_1.SetVar
          L1_1("FPM05_Num_Delivered", 0)
          L1_1 = _util
          L1_1 = L1_1.SetVar
          L1_1("FPM05_Squid_Delivered", 0)
          L1_1 = _util
          L1_1 = L1_1.SetVar
          L1_1("FPM05_HotSauce_Delivered", 0)
          L1_1 = _util
          L1_1 = L1_1.SetVar
          L1_1("FPM05_Seaweed_Delivered", 0)
          L1_1 = _util
          L1_1 = L1_1.SetVar
          L1_1("FPM05_Dessert_Delivered", 0)
          L1_1 = _util
          L1_1 = L1_1.SetVar
          L1_1("FPM05_Dessert_Taken", 0)
          L1_1 = _util
          L1_1 = L1_1.SetVar
          L1_1("FPM05_SeaWeed_Taken", 0)
          L1_1 = _util
          L1_1 = L1_1.SetVar
          L1_1("FPM05_Squid_Taken", 0)
          L1_1 = _util
          L1_1 = L1_1.SetVar
          L1_1("FPM05_HotSauce_Taken", 0)
          L1_1 = _util
          L1_1 = L1_1.SetVar
          L1_1("FPM05_Beacon_Intro", 0)
          L1_1 = _util
          L1_1 = L1_1.SetVar
          L1_1("FPM05_SnowForts_Intro", 0)
          L1_1 = _util
          L1_1 = L1_1.SetVar
          L1_1("FPM05_Dojo_Intro", 0)
          L1_1 = _util
          L1_1 = L1_1.SetVar
          L1_1("FPM05_Coffee_Intro", 0)
        end
      else
        L1_1 = _util
        L1_1 = L1_1.GetVar
        L1_1 = L1_1("FPMission_Started")
        if L1_1 == 5 then
          L1_1 = _util
          L1_1 = L1_1.GetVar
          L1_1 = L1_1("FPM05_All_Delivered")
          if L1_1 == 0 then
            if L0_0 == 0 then
              L1_1 = _util
              L1_1 = L1_1.AddLoopingConv
              L1_1(3590)
              L1_1 = _util
              L1_1 = L1_1.AddLoopingOption
              L1_1(3591, 3594, _const.UPDATE_LOOP)
              L1_1 = _util
              L1_1 = L1_1.AddLoopingOption
              L1_1(3592, 3595, _const.CHANGE_DIALOG, 1)
              L1_1 = _util
              L1_1 = L1_1.AddLoopingOption
              L1_1(3593, -1, _const.CHANGE_DIALOG, 100)
            elseif L0_0 == 100 then
              L1_1 = _util
              L1_1 = L1_1.AddDialog
              L1_1(4447, _const.END_DIALOG, 0)
            elseif L0_0 == 1 then
              L1_1 = _util
              L1_1 = L1_1.AddDialog
              L1_1(3595, _const.CHANGE_DIALOG, 2)
            elseif L0_0 == 2 then
              L1_1 = _util
              L1_1 = L1_1.AddDialog
              L1_1(3596, _const.CHANGE_DIALOG, 3)
            elseif L0_0 == 3 then
              L1_1 = _util
              L1_1 = L1_1.AddDialog
              L1_1(3597, _const.CHANGE_DIALOG, 4)
            elseif L0_0 == 4 then
              L1_1 = _util
              L1_1 = L1_1.AddDialog
              L1_1(3598, _const.END_DIALOG, 0)
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
  L1_1 = _id
  L1_1 = L1_1.Inventory_FP5_PizzaSeaWeed
  if L0_0 == L1_1 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(3599, _const.END_DIALOG, 0)
  else
    L1_1 = _id
    L1_1 = L1_1.Inventory_FP5_PizzaHotSauce
    if L0_0 == L1_1 then
      L1_1 = _util
      L1_1 = L1_1.AddDialog
      L1_1(3600, _const.END_DIALOG, 0)
    else
      L1_1 = _id
      L1_1 = L1_1.Inventory_FP5_PizzaDessert
      if L0_0 == L1_1 then
        L1_1 = _util
        L1_1 = L1_1.AddDialog
        L1_1(3601, _const.END_DIALOG, 0)
      else
        L1_1 = _id
        L1_1 = L1_1.Inventory_FP5_PizzaSquid
        if L0_0 == L1_1 then
          L1_1 = _util
          L1_1 = L1_1.AddDialog
          L1_1(3602, _const.END_DIALOG, 0)
        end
      end
    end
  end
end
