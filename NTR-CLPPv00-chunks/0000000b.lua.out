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
  L1_1 = _util
  L1_1 = L1_1.GetVar
  L1_1 = L1_1("M4C2_gadgetRoomIntro")
  if L1_1 == 0 then
    L1_1 = _util
    L1_1 = L1_1.SetCursorPos
    L1_1(_util.GetX(_id.M4C2_Gary_GR), _util.GetY(_id.M4C2_Gary_GR), 1)
    if L0_0 == 0 then
      L1_1 = _util
      L1_1 = L1_1.AddConversation
      L1_1(2565, 2566, -1, _const.CHANGE_DIALOG, 1)
    elseif L0_0 == 1 then
      L1_1 = _util
      L1_1 = L1_1.SetVar
      L1_1("M4C2_gadgetRoomIntro", 1)
      L1_1 = _util
      L1_1 = L1_1.AddConversation
      L1_1(2567, 2568, -1, _const.END_DIALOG, 0)
    end
  elseif L0_0 == 0 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(2570, 2571, -1, _const.END_DIALOG, 0)
  elseif L0_0 == 533 then
    function L1_1()
      _util.DisplayPopUp(488, "UI/Smilie", false)
      repeat
        scriptWait()
      until _util.IsPopUpVisible() == false
      _util.AddSmileys(100, _util.GetX(_util.GetSelf()), _util.GetY(_util.GetSelf()))
      repeat
        scriptWait()
      until 0 + 1 == 40
      _util.EndMission()
    end
    scriptPlay(L1_1)
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
  L1_1 = L1_1.Inventory_WBot
  if L0_0 == L1_1 then
    L1_1 = _util
    L1_1 = L1_1.IsCommandCoachActive
    L1_1 = L1_1()
    if L1_1 then
      L1_1 = _util
      L1_1 = L1_1.ActivateNpc
      L1_1(_util.GetSelf(), 533)
    else
      L1_1 = _util
      L1_1 = L1_1.EnableSpyPodFunc
      L1_1(_const.FLAG_SNOWCAT)
      L1_1 = _util
      L1_1 = L1_1.EndMission
      L1_1()
    end
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
  L1_1 = L1_1.IsInRoom
  L1_1 = L1_1(_id.M4C2_Gary_GR, 13)
  if L1_1 then
    L1_1 = _util
    L1_1 = L1_1.AddComText
    L1_1(4499, _const.END_DIALOG, 0)
  else
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("M4C2_haveWB")
    if L1_1 == 1 then
      if L0_0 == 0 then
        L1_1 = _util
        L1_1 = L1_1.AddComText
        L1_1(2432)
        L1_1 = _util
        L1_1 = L1_1.AddComOption
        L1_1(2433, _const.END_DIALOG, 0)
      end
    else
      L1_1 = _util
      L1_1 = L1_1.GetVar
      L1_1 = L1_1("M4C2_deadWB")
      if L1_1 > 0 then
        if L0_0 == 0 then
          L1_1 = _util
          L1_1 = L1_1.AddComText
          L1_1(2428)
          L1_1 = _util
          L1_1 = L1_1.AddComOption
          L1_1(2429, _const.CHANGE_DIALOG, 1)
        elseif L0_0 == 1 then
          L1_1 = _util
          L1_1 = L1_1.AddComText
          L1_1(2430)
          L1_1 = _util
          L1_1 = L1_1.AddComOption
          L1_1(2431, _const.END_DIALOG, 0)
        end
      else
        L1_1 = _util
        L1_1 = L1_1.GetVar
        L1_1 = L1_1("M4C2_fightWB")
        if L1_1 == 3 then
          if L0_0 == 0 then
            L1_1 = _util
            L1_1 = L1_1.AddComText
            L1_1(2424)
            L1_1 = _util
            L1_1 = L1_1.AddComOption
            L1_1(2425, _const.CHANGE_DIALOG, 1)
          elseif L0_0 == 1 then
            L1_1 = _util
            L1_1 = L1_1.AddComText
            L1_1(2426)
            L1_1 = _util
            L1_1 = L1_1.AddComOption
            L1_1(2427, _const.END_DIALOG, 0)
          end
        else
          L1_1 = _util
          L1_1 = L1_1.GetVar
          L1_1 = L1_1("M4C2_fightWB")
          if L1_1 == 2 then
            if L0_0 == 0 then
              L1_1 = _util
              L1_1 = L1_1.AddComText
              L1_1(2420)
              L1_1 = _util
              L1_1 = L1_1.AddComOption
              L1_1(2421, _const.CHANGE_DIALOG, 1)
            elseif L0_0 == 1 then
              L1_1 = _util
              L1_1 = L1_1.AddComText
              L1_1(2422)
              L1_1 = _util
              L1_1 = L1_1.AddComOption
              L1_1(2423, _const.END_DIALOG, 0)
            end
          else
            L1_1 = _util
            L1_1 = L1_1.GetVar
            L1_1 = L1_1("M4C2_introRoof")
            if L1_1 == 1 then
              if L0_0 == 0 then
                L1_1 = _util
                L1_1 = L1_1.AddComText
                L1_1(2416)
                L1_1 = _util
                L1_1 = L1_1.AddComOption
                L1_1(2417, _const.CHANGE_DIALOG, 1)
              elseif L0_0 == 1 then
                L1_1 = _util
                L1_1 = L1_1.AddComText
                L1_1(2418)
                L1_1 = _util
                L1_1 = L1_1.AddComOption
                L1_1(2419, _const.END_DIALOG, 0)
              end
            else
              L1_1 = _util
              L1_1 = L1_1.GetVar
              L1_1 = L1_1("M4C2_fightWB")
              if L1_1 == 1 then
                if L0_0 == 0 then
                  L1_1 = _util
                  L1_1 = L1_1.AddComText
                  L1_1(2412)
                  L1_1 = _util
                  L1_1 = L1_1.AddComOption
                  L1_1(2413, _const.CHANGE_DIALOG, 1)
                elseif L0_0 == 1 then
                  L1_1 = _util
                  L1_1 = L1_1.AddComText
                  L1_1(2414)
                  L1_1 = _util
                  L1_1 = L1_1.AddComOption
                  L1_1(2415, _const.END_DIALOG, 0)
                end
              else
                L1_1 = _util
                L1_1 = L1_1.GetVar
                L1_1 = L1_1("M4C2_fightWB")
                if L1_1 == 0 then
                  L1_1 = _util
                  L1_1 = L1_1.GetVar
                  L1_1 = L1_1("M4C2_giftshopIntro")
                  if L1_1 ~= 0 then
                    if L0_0 == 0 then
                      L1_1 = _util
                      L1_1 = L1_1.AddComText
                      L1_1(2408)
                      L1_1 = _util
                      L1_1 = L1_1.AddComOption
                      L1_1(2409, _const.CHANGE_DIALOG, 1)
                    elseif L0_0 == 1 then
                      L1_1 = _util
                      L1_1 = L1_1.AddComText
                      L1_1(2410)
                      L1_1 = _util
                      L1_1 = L1_1.AddComOption
                      L1_1(2411, _const.END_DIALOG, 0)
                    end
                  else
                    L1_1 = _util
                    L1_1 = L1_1.GetVar
                    L1_1 = L1_1("M4C2_giftshopIntro")
                    if L1_1 == 0 and L0_0 == 0 then
                      L1_1 = _util
                      L1_1 = L1_1.AddComText
                      L1_1(2406)
                      L1_1 = _util
                      L1_1 = L1_1.AddComOption
                      L1_1(2407, _const.END_DIALOG, 0)
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end
