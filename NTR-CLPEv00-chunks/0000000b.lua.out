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
      L1_1(2613, 2614, -1, _const.CHANGE_DIALOG, 1)
    elseif L0_0 == 1 then
      L1_1 = _util
      L1_1 = L1_1.SetVar
      L1_1("M4C2_gadgetRoomIntro", 1)
      L1_1 = _util
      L1_1 = L1_1.AddConversation
      L1_1(2615, 2616, -1, _const.END_DIALOG, 0)
    end
  elseif L0_0 == 0 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(2618, 2619, -1, _const.END_DIALOG, 0)
  elseif L0_0 == 533 then
    function L1_1()
      _util.DisplayPopUp(626, "UI/Smilie", false)
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
    L1_1(4807, _const.END_DIALOG, 0)
  else
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("M4C2_haveWB")
    if L1_1 == 1 then
      if L0_0 == 0 then
        L1_1 = _util
        L1_1 = L1_1.AddComText
        L1_1(2480)
        L1_1 = _util
        L1_1 = L1_1.AddComOption
        L1_1(2481, _const.END_DIALOG, 0)
      end
    else
      L1_1 = _util
      L1_1 = L1_1.GetVar
      L1_1 = L1_1("M4C2_deadWB")
      if L1_1 > 0 then
        if L0_0 == 0 then
          L1_1 = _util
          L1_1 = L1_1.AddComText
          L1_1(2476)
          L1_1 = _util
          L1_1 = L1_1.AddComOption
          L1_1(2477, _const.CHANGE_DIALOG, 1)
        elseif L0_0 == 1 then
          L1_1 = _util
          L1_1 = L1_1.AddComText
          L1_1(2478)
          L1_1 = _util
          L1_1 = L1_1.AddComOption
          L1_1(2479, _const.END_DIALOG, 0)
        end
      else
        L1_1 = _util
        L1_1 = L1_1.GetVar
        L1_1 = L1_1("M4C2_fightWB")
        if L1_1 == 3 then
          if L0_0 == 0 then
            L1_1 = _util
            L1_1 = L1_1.AddComText
            L1_1(2472)
            L1_1 = _util
            L1_1 = L1_1.AddComOption
            L1_1(2473, _const.CHANGE_DIALOG, 1)
          elseif L0_0 == 1 then
            L1_1 = _util
            L1_1 = L1_1.AddComText
            L1_1(2474)
            L1_1 = _util
            L1_1 = L1_1.AddComOption
            L1_1(2475, _const.END_DIALOG, 0)
          end
        else
          L1_1 = _util
          L1_1 = L1_1.GetVar
          L1_1 = L1_1("M4C2_fightWB")
          if L1_1 == 2 then
            if L0_0 == 0 then
              L1_1 = _util
              L1_1 = L1_1.AddComText
              L1_1(2468)
              L1_1 = _util
              L1_1 = L1_1.AddComOption
              L1_1(2469, _const.CHANGE_DIALOG, 1)
            elseif L0_0 == 1 then
              L1_1 = _util
              L1_1 = L1_1.AddComText
              L1_1(2470)
              L1_1 = _util
              L1_1 = L1_1.AddComOption
              L1_1(2471, _const.END_DIALOG, 0)
            end
          else
            L1_1 = _util
            L1_1 = L1_1.GetVar
            L1_1 = L1_1("M4C2_introRoof")
            if L1_1 == 1 then
              if L0_0 == 0 then
                L1_1 = _util
                L1_1 = L1_1.AddComText
                L1_1(2464)
                L1_1 = _util
                L1_1 = L1_1.AddComOption
                L1_1(2465, _const.CHANGE_DIALOG, 1)
              elseif L0_0 == 1 then
                L1_1 = _util
                L1_1 = L1_1.AddComText
                L1_1(2466)
                L1_1 = _util
                L1_1 = L1_1.AddComOption
                L1_1(2467, _const.END_DIALOG, 0)
              end
            else
              L1_1 = _util
              L1_1 = L1_1.GetVar
              L1_1 = L1_1("M4C2_fightWB")
              if L1_1 == 1 then
                if L0_0 == 0 then
                  L1_1 = _util
                  L1_1 = L1_1.AddComText
                  L1_1(2460)
                  L1_1 = _util
                  L1_1 = L1_1.AddComOption
                  L1_1(2461, _const.CHANGE_DIALOG, 1)
                elseif L0_0 == 1 then
                  L1_1 = _util
                  L1_1 = L1_1.AddComText
                  L1_1(2462)
                  L1_1 = _util
                  L1_1 = L1_1.AddComOption
                  L1_1(2463, _const.END_DIALOG, 0)
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
                      L1_1(2456)
                      L1_1 = _util
                      L1_1 = L1_1.AddComOption
                      L1_1(2457, _const.CHANGE_DIALOG, 1)
                    elseif L0_0 == 1 then
                      L1_1 = _util
                      L1_1 = L1_1.AddComText
                      L1_1(2458)
                      L1_1 = _util
                      L1_1 = L1_1.AddComOption
                      L1_1(2459, _const.END_DIALOG, 0)
                    end
                  else
                    L1_1 = _util
                    L1_1 = L1_1.GetVar
                    L1_1 = L1_1("M4C2_giftshopIntro")
                    if L1_1 == 0 and L0_0 == 0 then
                      L1_1 = _util
                      L1_1 = L1_1.AddComText
                      L1_1(2454)
                      L1_1 = _util
                      L1_1 = L1_1.AddComOption
                      L1_1(2455, _const.END_DIALOG, 0)
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
