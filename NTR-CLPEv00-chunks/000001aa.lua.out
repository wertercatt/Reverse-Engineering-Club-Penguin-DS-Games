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
        L1_1(3849, _const.END_DIALOG, 0)
      end
    end
  else
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("FPM05_All_Delivered")
    if L1_1 == 1 then
      if L0_0 == 0 then
        function L1_1()
          _util.DisplayPopUp(626, "UI/Smilie", false)
          repeat
            scriptWait()
          until _util.IsPopUpVisible() == false
          _util.AddSmileys(20, _util.GetX(_util.GetSelf()), _util.GetX(_util.GetSelf()))
          _util.AddConversation(3879, 3880, -1, _const.CHANGE_DIALOG, 1)
        end
        scriptPlay(L1_1)
      elseif L0_0 == 1 then
        L1_1 = _util
        L1_1 = L1_1.AddConversation
        L1_1(3881, 3882, -1, _const.CHANGE_DIALOG, 2)
      elseif L0_0 == 2 then
        L1_1 = _util
        L1_1 = L1_1.AddConversation
        L1_1(3883, 3884, -1, _const.CHANGE_DIALOG, 3)
      elseif L0_0 == 3 then
        L1_1 = _util
        L1_1 = L1_1.AddConversation
        L1_1(3885, 3886, -1, _const.CHANGE_DIALOG, 4)
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
          _util.DisplayPopUp(627, "UI/coin", false)
          repeat
            scriptWait()
          until _util.IsPopUpVisible() == false
          _util.SetObjective(625)
          _util.MarkFreePlayMission(_const.FPM05)
          _util.StartCutscene(_const.FPM05OUTRO)
        end
        scriptPlay(L1_1)
      elseif L0_0 == 5 then
        L1_1 = _util
        L1_1 = L1_1.AddDialog
        L1_1(3999, _const.END_DIALOG, 5)
      end
    else
      L1_1 = _util
      L1_1 = L1_1.GetVar
      L1_1 = L1_1("FPMission_Started")
      if L1_1 == 0 then
        if L0_0 == 0 then
          L1_1 = _util
          L1_1 = L1_1.AddConversation
          L1_1(3850, 3851, -1, _const.CHANGE_DIALOG, 1)
        elseif L0_0 == 1 then
          L1_1 = _util
          L1_1 = L1_1.AddConversation
          L1_1(3852, 3853, -1, _const.CHANGE_DIALOG, 2)
        elseif L0_0 == 2 then
          L1_1 = _util
          L1_1 = L1_1.AddLoopingConv
          L1_1(3854)
          L1_1 = _util
          L1_1 = L1_1.AddLoopingOption
          L1_1(3855, -1, _const.CHANGE_DIALOG, 3)
          L1_1 = _util
          L1_1 = L1_1.AddLoopingOption
          L1_1(3856, -1, _const.CHANGE_DIALOG, 100)
        elseif L0_0 == 100 then
          L1_1 = _util
          L1_1 = L1_1.AddDialog
          L1_1(4754, _const.END_DIALOG, 0)
        elseif L0_0 == 3 then
          function L1_1()
            _util.StartCutscene(_const.FPM05INTRO)
            repeat
              scriptWait()
            until _util.GetGameState() ~= _const.MISSION
            repeat
              scriptWait()
            until _util.GetGameState() == _const.MISSION
            _util.SetObjective(77)
            _util.ActivateNpc(_id.FPM05_Pizza_Guy, 4)
          end
          scriptPlay(L1_1)
        elseif L0_0 == 4 then
          L1_1 = _util
          L1_1 = L1_1.AddConversation
          L1_1(3857, 3858, -1, _const.CHANGE_DIALOG, 5)
        elseif L0_0 == 5 then
          L1_1 = _util
          L1_1 = L1_1.AddConversation
          L1_1(3859, 3860, -1, _const.CHANGE_DIALOG, 6)
        elseif L0_0 == 6 then
          L1_1 = _util
          L1_1 = L1_1.AddConversation
          L1_1(3861, 3862, -1, _const.CHANGE_DIALOG, 7)
        elseif L0_0 == 7 then
          L1_1 = _util
          L1_1 = L1_1.AddConversation
          L1_1(3863, 3864, -1, _const.CHANGE_DIALOG, 8)
        elseif L0_0 == 8 then
          L1_1 = _util
          L1_1 = L1_1.AddDialog
          L1_1(3865, _const.END_DIALOG, 0)
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
              L1_1(3866)
              L1_1 = _util
              L1_1 = L1_1.AddLoopingOption
              L1_1(3867, 3870, _const.UPDATE_LOOP)
              L1_1 = _util
              L1_1 = L1_1.AddLoopingOption
              L1_1(3868, 3871, _const.CHANGE_DIALOG, 1)
              L1_1 = _util
              L1_1 = L1_1.AddLoopingOption
              L1_1(3869, -1, _const.CHANGE_DIALOG, 100)
            elseif L0_0 == 100 then
              L1_1 = _util
              L1_1 = L1_1.AddDialog
              L1_1(4755, _const.END_DIALOG, 0)
            elseif L0_0 == 1 then
              L1_1 = _util
              L1_1 = L1_1.AddDialog
              L1_1(3871, _const.CHANGE_DIALOG, 2)
            elseif L0_0 == 2 then
              L1_1 = _util
              L1_1 = L1_1.AddDialog
              L1_1(3872, _const.CHANGE_DIALOG, 3)
            elseif L0_0 == 3 then
              L1_1 = _util
              L1_1 = L1_1.AddDialog
              L1_1(3873, _const.CHANGE_DIALOG, 4)
            elseif L0_0 == 4 then
              L1_1 = _util
              L1_1 = L1_1.AddDialog
              L1_1(3874, _const.END_DIALOG, 0)
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
    L1_1(3875, _const.END_DIALOG, 0)
  else
    L1_1 = _id
    L1_1 = L1_1.Inventory_FP5_PizzaHotSauce
    if L0_0 == L1_1 then
      L1_1 = _util
      L1_1 = L1_1.AddDialog
      L1_1(3876, _const.END_DIALOG, 0)
    else
      L1_1 = _id
      L1_1 = L1_1.Inventory_FP5_PizzaDessert
      if L0_0 == L1_1 then
        L1_1 = _util
        L1_1 = L1_1.AddDialog
        L1_1(3877, _const.END_DIALOG, 0)
      else
        L1_1 = _id
        L1_1 = L1_1.Inventory_FP5_PizzaSquid
        if L0_0 == L1_1 then
          L1_1 = _util
          L1_1 = L1_1.AddDialog
          L1_1(3878, _const.END_DIALOG, 0)
        end
      end
    end
  end
end
