local L0_0, L1_1, L2_2
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
  L2_2 = "M1C3_uberVariable"
  L1_1 = L1_1(L2_2)
  if L1_1 == 0 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L2_2 = 545
    L1_1(L2_2, _const.END_DIALOG, 0)
    L1_1 = _util
    L1_1 = L1_1.SetVar
    L2_2 = "TalkedToBlazerXEarlier"
    L1_1(L2_2, 1)
  else
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L2_2 = "M1C3_uberVariable"
    L1_1 = L1_1(L2_2)
    if L1_1 > 0 then
      L1_1 = _util
      L1_1 = L1_1.GetVar
      L2_2 = "M1C3_uberVariable"
      L1_1 = L1_1(L2_2)
      if L1_1 < 3 then
        if L0_0 == 0 then
          L1_1 = _util
          L1_1 = L1_1.AddLoopingConv
          L2_2 = 545
          L1_1(L2_2)
          L1_1 = _util
          L1_1 = L1_1.AddLoopingOption
          L2_2 = 546
          L1_1(L2_2, 549, _const.CHANGE_DIALOG, 1)
          L1_1 = _util
          L1_1 = L1_1.AddLoopingOption
          L2_2 = 547
          L1_1(L2_2, 550, _const.UPDATE_LOOP)
          L1_1 = _util
          L1_1 = L1_1.AddLoopingOption
          L2_2 = 548
          L1_1(L2_2, -1, _const.CHANGE_DIALOG, 10)
          L1_1 = _util
          L1_1 = L1_1.SetVar
          L2_2 = "TalkedToBlazerXEarlier"
          L1_1(L2_2, 1)
        elseif L0_0 == 10 then
          L1_1 = _util
          L1_1 = L1_1.AddDialog
          L2_2 = 551
          L1_1(L2_2, _const.END_DIALOG, 0)
        elseif L0_0 == 1 then
          L1_1 = _util
          L1_1 = L1_1.AddLoopingConv
          L2_2 = 549
          L1_1(L2_2)
          L1_1 = _util
          L1_1 = L1_1.AddLoopingOption
          L2_2 = 552
          L1_1(L2_2, 555, _const.UPDATE_LOOP)
          L1_1 = _util
          L1_1 = L1_1.AddLoopingOption
          L2_2 = 553
          L1_1(L2_2, 556, _const.UPDATE_LOOP)
          L1_1 = _util
          L1_1 = L1_1.AddLoopingOption
          L2_2 = 554
          L1_1(L2_2, -1, _const.CHANGE_DIALOG, 11)
          L1_1 = _util
          L1_1 = L1_1.GetVar
          L2_2 = "M1C3_Objective2Enabled"
          L1_1 = L1_1(L2_2)
          if L1_1 == 0 then
            L1_1 = _util
            L1_1 = L1_1.SetObjective
            L2_2 = 636
            L1_1(L2_2)
            L1_1 = _util
            L1_1 = L1_1.SetVar
            L2_2 = "M1C3_Objective2Enabled"
            L1_1(L2_2, 1)
          end
        elseif L0_0 == 11 then
          L1_1 = _util
          L1_1 = L1_1.SetVar
          L2_2 = "M1C3_uberVariable"
          L1_1(L2_2, 2)
          L1_1 = _util
          L1_1 = L1_1.SetVar
          L2_2 = "M1C3_introBlazerX"
          L1_1(L2_2, 1)
          L1_1 = _util
          L1_1 = L1_1.AddDialog
          L2_2 = 557
          L1_1(L2_2, _const.END_DIALOG, 0)
        end
      end
    else
      L1_1 = _util
      L1_1 = L1_1.GetVar
      L2_2 = "M1C3_uberVariable"
      L1_1 = L1_1(L2_2)
      if L1_1 ~= 3 then
        L1_1 = _util
        L1_1 = L1_1.GetVar
        L2_2 = "M1C3_uberVariable"
        L1_1 = L1_1(L2_2)
      else
        if L1_1 == 4 then
          L1_1 = _util
          L1_1 = L1_1.GetVar
          L2_2 = "M1C3_introBlazerX"
          L1_1 = L1_1(L2_2)
          if L1_1 == 0 then
            if L0_0 == 0 then
              L1_1 = _util
              L1_1 = L1_1.AddLoopingConv
              L2_2 = 545
              L1_1(L2_2)
              L1_1 = _util
              L1_1 = L1_1.AddLoopingOption
              L2_2 = 546
              L1_1(L2_2, 549, _const.CHANGE_DIALOG, 1)
              L1_1 = _util
              L1_1 = L1_1.AddLoopingOption
              L2_2 = 547
              L1_1(L2_2, 550, _const.UPDATE_LOOP)
              L1_1 = _util
              L1_1 = L1_1.AddLoopingOption
              L2_2 = 548
              L1_1(L2_2, -1, _const.CHANGE_DIALOG, 10)
              L1_1 = _util
              L1_1 = L1_1.SetVar
              L2_2 = "TalkedToBlazerXEarlier"
              L1_1(L2_2, 1)
            elseif L0_0 == 10 then
              L1_1 = _util
              L1_1 = L1_1.AddDialog
              L2_2 = 551
              L1_1(L2_2, _const.END_DIALOG, 0)
            elseif L0_0 == 1 then
              L1_1 = _util
              L1_1 = L1_1.AddLoopingConv
              L2_2 = 549
              L1_1(L2_2)
              L1_1 = _util
              L1_1 = L1_1.AddLoopingOption
              L2_2 = 552
              L1_1(L2_2, 555, _const.UPDATE_LOOP)
              L1_1 = _util
              L1_1 = L1_1.AddLoopingOption
              L2_2 = 553
              L1_1(L2_2, 556, _const.UPDATE_LOOP)
              L1_1 = _util
              L1_1 = L1_1.AddLoopingOption
              L2_2 = 554
              L1_1(L2_2, -1, _const.CHANGE_DIALOG, 11)
            elseif L0_0 == 11 then
              L1_1 = _util
              L1_1 = L1_1.SetVar
              L2_2 = "M1C3_uberVariable"
              L1_1(L2_2, 2)
              L1_1 = _util
              L1_1 = L1_1.AddDialog
              L2_2 = 557
              L1_1(L2_2, _const.END_DIALOG, 0)
            end
          end
      end
      else
        L1_1 = _util
        L1_1 = L1_1.GetVar
        L2_2 = "M1C3_uberVariable"
        L1_1 = L1_1(L2_2)
        if L1_1 == 5 then
          L1_1 = _util
          L1_1 = L1_1.IsSuitcaseItemEquipped
          L2_2 = _id
          L2_2 = L2_2.SuitCase_ProBoard
          L1_1 = L1_1(L2_2)
          if L1_1 then
            if L0_0 == 0 then
              L1_1 = _util
              L1_1 = L1_1.AddLoopingConv
              L2_2 = 560
              L1_1(L2_2)
              L1_1 = _util
              L1_1 = L1_1.AddLoopingOption
              L2_2 = 561
              L1_1(L2_2, 563, _const.CHANGE_DIALOG, 1)
              L1_1 = _util
              L1_1 = L1_1.AddLoopingOption
              L2_2 = 562
              L1_1(L2_2, -1, _const.CHANGE_DIALOG, 10)
            elseif L0_0 == 10 then
              L1_1 = _util
              L1_1 = L1_1.AddDialog
              L2_2 = 566
              L1_1(L2_2, _const.END_DIALOG, 0)
            elseif L0_0 == 1 then
              L1_1 = _util
              L1_1 = L1_1.AddConversation
              L2_2 = 563
              L1_1(L2_2, 564, -1, _const.CHANGE_DIALOG, 2)
            elseif L0_0 == 2 then
              L1_1 = _util
              L1_1 = L1_1.AddDialog
              L2_2 = 565
              L1_1(L2_2, _const.CHANGE_DIALOG, 3)
            elseif L0_0 == 3 then
              function L1_1()
                repeat
                  scriptWait()
                until _util.GetGameState() ~= _const.MISSION
                repeat
                  scriptWait()
                until _util.GetGameState() == _const.MISSION
                if _util.GetMinigameOutput1() == 1 then
                  _util.SetVar("M1C3_uberVariable", 6)
                  _util.SetCursorPos(_util.GetX(_util.GetSelf()), _util.GetY(_util.GetSelf()))
                  _util.ActivateNpc(_id.M1C3_BlazerX, 1)
                else
                  _util.ActivateNpc(_id.M1C3_BlazerX, 4)
                end
              end
              L2_2 = _util
              L2_2 = L2_2.SetConversationCount
              L2_2(0)
              L2_2 = _util
              L2_2 = L2_2.StartMiniGame
              L2_2(_const.SNOWBOARDING, 1)
              L2_2 = scriptPlay
              L2_2(L1_1)
            elseif L0_0 == 4 then
              L1_1 = _util
              L1_1 = L1_1.AddMonologue
              L2_2 = 567
              L1_1(L2_2, "DialogStrings", _const.END_DIALOG, 0)
            end
          end
        else
          L1_1 = _util
          L1_1 = L1_1.GetVar
          L2_2 = "M1C3_uberVariable"
          L1_1 = L1_1(L2_2)
          if L1_1 == 5 then
            L1_1 = _util
            L1_1 = L1_1.GetVar
            L2_2 = "TalkedToBlazerXEarlier"
            L1_1 = L1_1(L2_2)
            if L1_1 == 1 then
              if L0_0 == 0 then
                L1_1 = _util
                L1_1 = L1_1.AddDialog
                L2_2 = 558
                L1_1(L2_2, _const.CHANGE_DIALOG, 1)
              elseif L0_0 == 1 then
                L1_1 = _util
                L1_1 = L1_1.AddDialog
                L2_2 = 559
                L1_1(L2_2, _const.END_DIALOG, 0)
              end
            end
          else
            L1_1 = _util
            L1_1 = L1_1.GetVar
            L2_2 = "M1C3_uberVariable"
            L1_1 = L1_1(L2_2)
            if L1_1 == 5 then
              L1_1 = _util
              L1_1 = L1_1.GetVar
              L2_2 = "TalkedToBlazerXEarlier"
              L1_1 = L1_1(L2_2)
              if L1_1 == 0 then
                L1_1 = _util
                L1_1 = L1_1.SetVar
                L2_2 = "TalkedToBlazerXEarlier"
                L1_1(L2_2, 1)
                L1_1 = _util
                L1_1 = L1_1.AddConversation
                L2_2 = 545
                L1_1(L2_2, 547, -1, _const.CHANGE_DIALOG, 0)
              end
            else
              L1_1 = _util
              L1_1 = L1_1.GetVar
              L2_2 = "M1C3_uberVariable"
              L1_1 = L1_1(L2_2)
              if L1_1 > 5 then
                if L0_0 == 1 then
                  L1_1 = _util
                  L1_1 = L1_1.AddConversation
                  L2_2 = 568
                  L1_1(L2_2, 569, -1, _const.CHANGE_DIALOG, 2)
                elseif L0_0 == 2 then
                  L1_1 = _util
                  L1_1 = L1_1.AddDialog
                  L2_2 = 570
                  L1_1(L2_2, _const.END_DIALOG, 33)
                  L1_1 = _util
                  L1_1 = L1_1.AddInventoryItem
                  L2_2 = _id
                  L2_2 = L2_2.M1C3_Trophy
                  L1_1(L2_2)
                elseif L0_0 == 10 then
                  L1_1 = _util
                  L1_1 = L1_1.AddDialog
                  L2_2 = 582
                  L1_1(L2_2, _const.END_DIALOG, 33)
                else
                  L1_1 = _util
                  L1_1 = L1_1.AddLoopingConv
                  L2_2 = 571
                  L1_1(L2_2)
                  L1_1 = _util
                  L1_1 = L1_1.AddLoopingOption
                  L2_2 = 573
                  L1_1(L2_2, 579, _const.UPDATE_LOOP)
                  L1_1 = _util
                  L1_1 = L1_1.AddLoopingOption
                  L2_2 = 575
                  L1_1(L2_2, 581, _const.UPDATE_LOOP)
                  L1_1, L2_2 = nil, nil
                  if L0_0 == 0 then
                    L1_1 = _const.CHANGE_DIALOG
                    L2_2 = 1
                  else
                    L1_1 = _const.CHANGE_DIALOG
                    L2_2 = 10
                  end
                  _util.AddLoopingOption(577, -1, L1_1, L2_2)
                end
              end
            end
          end
        end
      end
    end
  end
end
