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
  L1_1 = print
  L1_1("**CONVERSATIONCOUNT ==", L0_0)
  if L0_0 == 400 then
    L1_1 = _util
    L1_1 = L1_1.AddLoopingConv
    L1_1(1942)
    L1_1 = _util
    L1_1 = L1_1.AddLoopingOption
    L1_1(1943, 1946, _const.UPDATE_LOOP)
    L1_1 = _util
    L1_1 = L1_1.AddLoopingOption
    L1_1(1943, 1946, _const.UPDATE_LOOP)
    L1_1 = _util
    L1_1 = L1_1.AddLoopingOption
    L1_1(1945, -1, _const.CHANGE_DIALOG, 1200)
  elseif L0_0 == 1200 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(4783, _const.END_DIALOG, 0)
  elseif L0_0 == 100 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(1957, 1958, -1, _const.CHANGE_DIALOG, 101)
  elseif L0_0 == 101 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(1959, 1960, -1, _const.CHANGE_DIALOG, 102)
  elseif L0_0 == 102 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(1961, 1962, -1, _const.CHANGE_DIALOG, 103)
  elseif L0_0 == 103 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(1963, 1964, -1, _const.CHANGE_DIALOG, 104)
    L1_1 = _util
    L1_1 = L1_1.PlaySFX
    L1_1(69)
  elseif L0_0 == 104 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(1965, _const.END_DIALOG, 0)
    L1_1 = _util
    L1_1 = L1_1.SetVar
    L1_1("M3C3_madeSnowCat", 1)
  elseif L0_0 == 201 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(2034, 2035, -1, _const.CHANGE_DIALOG, 202)
  elseif L0_0 == 202 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(2036, 2037, -1, _const.CHANGE_DIALOG, 203)
  elseif L0_0 == 203 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(2038, 2039, -1, _const.CHANGE_DIALOG, 204)
  elseif L0_0 == 204 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(2040, 2041, -1, _const.CHANGE_DIALOG, 205)
  elseif L0_0 == 205 then
    function L1_1()
      _util.StartCutscene(_const.M3C3CHALK)
      repeat
        scriptWait()
      until _util.GetGameState() ~= _const.MISSION
      repeat
        scriptWait()
      until _util.GetGameState() == _const.MISSION
      _util.ActivateNpc(_id.M3C3_Gary_Gadget, 209)
    end
    scriptPlay(L1_1)
  elseif L0_0 == 209 then
    L1_1 = _util
    L1_1 = L1_1.SetCursorPos
    L1_1(_util.GetX(_id.M3C3_Gary_Gadget), _util.GetY(_id.M3C3_Gary_Gadget))
    L1_1 = _util
    L1_1 = L1_1.AddLoopingConv
    L1_1(2050)
    L1_1 = _util
    L1_1 = L1_1.AddLoopingOption
    L1_1(2051, -1, _const.CHANGE_DIALOG, 210)
    L1_1 = _util
    L1_1 = L1_1.AddLoopingOption
    L1_1(2052, -1, _const.CHANGE_DIALOG, 211)
  elseif L0_0 == 210 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(2084, _const.CHANGE_DIALOG, 300)
  elseif L0_0 == 211 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(2054, _const.CHANGE_DIALOG, 205)
  elseif L0_0 == 300 then
    function L1_1()
      local L0_2, L1_3, L2_4
      L0_2 = _util
      L0_2 = L0_2.DisableInput
      L0_2()
      L0_2 = 818
      L1_3 = _util
      L1_3 = L1_3.GetY
      L2_4 = _util
      L2_4 = L2_4.GetSelf
      L2_4 = L2_4()
      L1_3 = L1_3(L2_4, L2_4())
      L2_4 = 120
      _util.PopCamera()
      _util.SwitchState("walkLeft", _util.GetSelf())
      _util.MoveObject(_util.GetSelf(), L0_2, L1_3, L2_4)
      repeat
        scriptWait()
      until _util.GetX(_util.GetSelf()) == L0_2
      _util.SetVar("M3C3_GaryWent2Command", 1)
      _util.ClearCom()
      _util.SetSpawn(1, _id.M3C3_Director)
      _util.SetSpawn(1, _id.M3C3_Gary_CR2)
      _util.DelItem(_util.GetSelf())
      _util.EnableInput()
    end
    scriptPlay(L1_1)
  else
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("M3C3_outroCommenced")
    if L1_1 == 1 then
      L1_1 = _util
      L1_1 = L1_1.GetVar
      L1_1 = L1_1("M3C3_GaryWent2Command")
      if L1_1 == 0 then
        L1_1 = _util
        L1_1 = L1_1.GetVar
        L1_1 = L1_1("GaryAskedHowItWent")
        if L1_1 == 0 then
          L1_1 = _util
          L1_1 = L1_1.AddConversation
          L1_1(4800, 4801, -1, _const.CHANGE_DIALOG, 21)
          L1_1 = _util
          L1_1 = L1_1.SetVar
          L1_1("GaryAskedHowItWent", 1)
        elseif L0_0 == 21 then
          L1_1 = _util
          L1_1 = L1_1.AddDialog
          L1_1(4802, _const.END_DIALOG, 22)
        elseif L0_0 == 220 then
          L1_1 = _util
          L1_1 = L1_1.AddDialog
          L1_1(4818, _const.END_DIALOG, 220)
        else
          L1_1 = _util
          L1_1 = L1_1.AddDialog
          L1_1(4803, _const.END_DIALOG, 22)
        end
      end
    elseif L0_0 == 0 then
      L1_1 = _util
      L1_1 = L1_1.AddLoopingConv
      L1_1(1936)
      L1_1 = _util
      L1_1 = L1_1.AddLoopingOption
      L1_1(1937, 1940, _const.UPDATE_LOOP)
      L1_1 = _util
      L1_1 = L1_1.AddLoopingOption
      L1_1(1938, 1941, _const.UPDATE_LOOP)
      L1_1 = _util
      L1_1 = L1_1.AddLoopingOption
      L1_1(1939, -1, _const.CHANGE_DIALOG, 234)
    elseif L0_0 == 234 then
      L1_1 = _util
      L1_1 = L1_1.AddDialog
      L1_1(4782, _const.END_DIALOG, 0)
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
  itemID = L0_0
  L0_0 = itemID
  L1_1 = _id
  L1_1 = L1_1.Inventory_RoboLocator
  if L0_0 == L1_1 then
    L0_0 = _util
    L0_0 = L0_0.RemoveInventoryItem
    L1_1 = _id
    L1_1 = L1_1.Inventory_RoboLocator
    L0_0(L1_1)
    L0_0 = _util
    L0_0 = L0_0.ActivateNpc
    L1_1 = _id
    L1_1 = L1_1.M3C3_Gary_Gadget
    L0_0(L1_1, 201)
  else
    L0_0 = itemID
    L1_1 = _id
    L1_1 = L1_1.Inventory_OilCan
    if L0_0 == L1_1 then
      L0_0 = _util
      L0_0 = L0_0.RemoveInventoryItem
      L1_1 = _id
      L1_1 = L1_1.Inventory_OilCan
      L0_0(L1_1)
      L0_0 = _util
      L0_0 = L0_0.AddDialog
      L1_1 = 4817
      L0_0(L1_1, _const.END_DIALOG, 220)
    end
  end
end
