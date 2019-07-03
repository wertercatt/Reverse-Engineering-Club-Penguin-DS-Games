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
  L1_1 = L1_1("M1C3_uberVariable")
  if L1_1 < 5 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(585, _const.END_DIALOG, 0)
    L1_1 = _util
    L1_1 = L1_1.SetVar
    L1_1("KnowWhoNeedsTheSoup", 1)
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("M1C3_uberVariable")
    if L1_1 < 4 then
      L1_1 = _util
      L1_1 = L1_1.SetVar
      L1_1("M1C3_uberVariable", 4)
    end
  else
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("M1C3_uberVariable")
    if L1_1 == 5 then
      if L0_0 == 100 then
        function L1_1()
          _util.DisplayPopUp(493, "UI/Smilie", false)
          repeat
            scriptWait()
          until _util.IsPopUpVisible() == false
          _util.AddDialog(587, _const.CHANGE_DIALOG, 0)
        end
        scriptPlay(L1_1)
      elseif L0_0 == 0 then
        L1_1 = _util
        L1_1 = L1_1.GetVar
        L1_1 = L1_1("M1C3_afterSoup")
        if L1_1 == 0 then
          L1_1 = _util
          L1_1 = L1_1.AddLoopingConv
          L1_1(588)
          L1_1 = _util
          L1_1 = L1_1.AddLoopingOption
          L1_1(589, 592, _const.CHANGE_DIALOG, 1)
          L1_1 = _util
          L1_1 = L1_1.AddLoopingOption
          L1_1(590, 593, _const.UPDATE_LOOP)
          L1_1 = _util
          L1_1 = L1_1.AddLoopingOption
          L1_1(591, -1, _const.CHANGE_DIALOG, 10)
        end
      elseif L0_0 == 10 then
        L1_1 = _util
        L1_1 = L1_1.AddDialog
        L1_1(594, _const.END_DIALOG, 0)
      elseif L0_0 == 1 then
        L1_1 = _util
        L1_1 = L1_1.AddConversation
        L1_1(592, 595, -1, _const.CHANGE_DIALOG, 2)
      elseif L0_0 == 2 then
        L1_1 = _util
        L1_1 = L1_1.AddConversation
        L1_1(596, 597, -1, _const.CHANGE_DIALOG, 3)
      elseif L0_0 == 3 then
        L1_1 = _util
        L1_1 = L1_1.AddConversation
        L1_1(598, 599, -1, _const.CHANGE_DIALOG, 30)
      elseif L0_0 == 30 then
        L1_1 = _util
        L1_1 = L1_1.AddDialog
        L1_1(600, _const.END_DIALOG, 0)
        L1_1 = _util
        L1_1 = L1_1.SetVar
        L1_1("M1C3_afterSoup", 1)
        L1_1 = _util
        L1_1 = L1_1.HideMap
        L1_1()
        L1_1 = _util
        L1_1 = L1_1.SetExitLocked
        L1_1(_id.Doors_Lodge2SkiVillage, true)
      else
        L1_1 = _util
        L1_1 = L1_1.GetVar
        L1_1 = L1_1("M1C3_afterSoup")
        if L1_1 == 1 then
          L1_1 = _util
          L1_1 = L1_1.AddConversation
          L1_1(601, -1, -1, _const.END_DIALOG, 0)
        else
          L1_1 = _util
          L1_1 = L1_1.GetVar
          L1_1 = L1_1("M1C3_afterSoup")
          if L1_1 == 2 then
            L1_1 = _util
            L1_1 = L1_1.AddDialog
            L1_1(603, _const.END_DIALOG, 0)
          end
        end
      end
    else
      L1_1 = _util
      L1_1 = L1_1.GetVar
      L1_1 = L1_1("M1C3_uberVariable")
      if L1_1 == 6 then
        if L0_0 == 0 then
          L1_1 = _util
          L1_1 = L1_1.AddDialog
          L1_1(603, _const.END_DIALOG, 0)
        elseif L0_0 == 1 then
          function L1_1()
            _util.RemoveInventoryItem(_id.M1C3_Trophy)
            _util.DisplayPopUp(493, "UI/Smilie", false)
            repeat
              scriptWait()
            until _util.IsPopUpVisible() == false
            _util.AddDialog(604, _const.CHANGE_DIALOG, 2)
            _util.SwitchState("happytalk", _util.GetSelf())
          end
          scriptPlay(L1_1)
        elseif L0_0 == 2 then
          L1_1 = _util
          L1_1 = L1_1.AddConversation
          L1_1(605, 606, -1, _const.CHANGE_DIALOG, 10)
        elseif L0_0 == 10 then
          L1_1 = _util
          L1_1 = L1_1.AddDialog
          L1_1(607, _const.END_DIALOG, 0)
          L1_1 = _util
          L1_1 = L1_1.SetVar
          L1_1("M1C3_uberVariable", 7)
        end
      else
        L1_1 = _util
        L1_1 = L1_1.GetVar
        L1_1 = L1_1("M1C3_uberVariable")
        if L1_1 == 7 then
          L1_1 = _util
          L1_1 = L1_1.AddDialog
          L1_1(608, _const.END_DIALOG, 0)
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
  L1_1 = L1_1.M1C3_Soup
  if L0_0 == L1_1 then
    L1_1 = _util
    L1_1 = L1_1.DelItem
    L1_1(_id.M1C3_SickNPC)
    L1_1 = _util
    L1_1 = L1_1.AddItem
    L1_1(_id.M1C3_SickNPCSoup)
    L1_1 = _util
    L1_1 = L1_1.SetVar
    L1_1("M1C3_uberVariable", 5)
    L1_1 = _util
    L1_1 = L1_1.RemoveInventoryItem
    L1_1(_id.M1C3_Soup)
    L1_1 = _util
    L1_1 = L1_1.ActivateNpc
    L1_1(_id.M1C3_SickNPCSoup, 100)
  else
    L1_1 = _id
    L1_1 = L1_1.M1C3_Trophy
    if L0_0 == L1_1 then
      L1_1 = _util
      L1_1 = L1_1.ActivateNpc
      L1_1(_util.GetSelf(), 1)
    end
  end
end
