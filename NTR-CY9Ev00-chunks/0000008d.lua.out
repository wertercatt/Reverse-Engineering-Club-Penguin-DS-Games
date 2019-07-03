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
  L1_1 = L1_1.ITEM_DROPPED
  L0_0(L1_1)
end
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
L3_3 = L3_3.TOUCHED
if L2_2 == L3_3 and L0_0 == 6 then
  L2_2 = _util
  L2_2 = L2_2.GetVar
  L3_3 = "spaceEmpty"
  L2_2 = L2_2(L3_3)
  if L2_2 == 0 then
    L2_2 = _util
    L2_2 = L2_2.AddMonologue
    L3_3 = _text
    L3_3 = L3_3.M10_TOWN_SALE_LOCATION_EMPTY
    L2_2(L3_3, "DialogStrings", _const.END_DIALOG, 0)
  else
    L2_2 = _util
    L2_2 = L2_2.GetVar
    L3_3 = "boxPlaced"
    L2_2 = L2_2(L3_3)
    if L2_2 == 1 then
      L2_2 = _util
      L2_2 = L2_2.GetVar
      L3_3 = "clothesPlaced"
      L2_2 = L2_2(L3_3)
      if L2_2 == 1 then
        L2_2 = _util
        L2_2 = L2_2.GetVar
        L3_3 = "tablePlaced"
        L2_2 = L2_2(L3_3)
        if L2_2 == 1 then
          L2_2 = _util
          L2_2 = L2_2.AddMonologue
          L3_3 = _text
          L3_3 = L3_3.M10_TOWN_SALE_INPLACE
          L2_2(L3_3, "DialogStrings", _const.END_DIALOG, 0)
        end
      end
    end
  end
end
L2_2 = _util
L2_2 = L2_2.GetReason
L2_2 = L2_2()
L3_3 = _const
L3_3 = L3_3.ITEM_DROPPED
if L2_2 == L3_3 and L0_0 == 6 then
  L2_2 = _util
  L2_2 = L2_2.GetSource
  L2_2 = L2_2()
  L3_3 = _id
  L3_3 = L3_3.M10_TableInventory
  if L2_2 == L3_3 then
    L3_3 = _util
    L3_3 = L3_3.GetVar
    L3_3 = L3_3("haveGiftShopTable")
    if L3_3 == 1 then
      L3_3 = _util
      L3_3 = L3_3.RemoveInventoryItem
      L3_3(_id.M10_TableInventory)
      L3_3 = _util
      L3_3 = L3_3.AddItem
      L3_3(_id.M10_TownTable, 0)
      L3_3 = _util
      L3_3 = L3_3.SwitchState
      L3_3("appear", _id.M10_TownTable)
      L3_3 = _util
      L3_3 = L3_3.SetVar
      L3_3("tablePlaced", 1)
      L3_3 = _util
      L3_3 = L3_3.SetVar
      L3_3("spaceEmpty", 1)
      L3_3 = _util
      L3_3 = L3_3.GetVar
      L3_3 = L3_3("boxPlaced")
      if L3_3 == 1 then
        L3_3 = _util
        L3_3 = L3_3.GetVar
        L3_3 = L3_3("clothesPlaced")
        if L3_3 == 1 then
          L3_3 = _util
          L3_3 = L3_3.GetVar
          L3_3 = L3_3("tablePlaced")
          if L3_3 == 1 then
            function L3_3()
              _util.DisableInput()
              _util.AddItem(_id.M10_SalesSign)
              _util.SwitchState("appear", _id.M10_SalesSign)
              repeat
                scriptWait()
              until not _util.IsAnimPlaying(_id.M10_SalesSign)
              _util.EnableInput(true)
            end
            scriptPlay(L3_3)
          end
        end
      end
    end
  else
    L3_3 = _id
    L3_3 = L3_3.M10_ClothesInventory
    if L2_2 == L3_3 then
      L3_3 = _util
      L3_3 = L3_3.GetVar
      L3_3 = L3_3("tablePlaced")
      if L3_3 == 0 then
        L3_3 = _util
        L3_3 = L3_3.GetVar
        L3_3 = L3_3("haveGiftShopClothes")
        if L3_3 == 1 then
          L3_3 = _util
          L3_3 = L3_3.AddMonologue
          L3_3(_text.M10_TOWN_SALE_LOCATION_NEEDTABLE, "DialogStrings", _const.END_DIALOG, 0)
        end
      end
    else
      L3_3 = _id
      L3_3 = L3_3.M10_ClothesInventory
      if L2_2 == L3_3 then
        L3_3 = _util
        L3_3 = L3_3.GetVar
        L3_3 = L3_3("tablePlaced")
        if L3_3 == 1 then
          L3_3 = _util
          L3_3 = L3_3.GetVar
          L3_3 = L3_3("haveGiftShopClothes")
          if L3_3 == 1 then
            L3_3 = _util
            L3_3 = L3_3.RemoveInventoryItem
            L3_3(_id.M10_ClothesInventory)
            L3_3 = _util
            L3_3 = L3_3.AddItem
            L3_3(_id.M10_TownClothes, 1)
            L3_3 = _util
            L3_3 = L3_3.SwitchState
            L3_3("appear", _id.M10_TownClothes)
            L3_3 = _util
            L3_3 = L3_3.SetVar
            L3_3("clothesPlaced", 1)
            L3_3 = _util
            L3_3 = L3_3.SetVar
            L3_3("spaceEmpty", 1)
            L3_3 = _util
            L3_3 = L3_3.GetVar
            L3_3 = L3_3("boxPlaced")
            if L3_3 == 1 then
              L3_3 = _util
              L3_3 = L3_3.GetVar
              L3_3 = L3_3("clothesPlaced")
              if L3_3 == 1 then
                L3_3 = _util
                L3_3 = L3_3.GetVar
                L3_3 = L3_3("tablePlaced")
                if L3_3 == 1 then
                  function L3_3()
                    _util.DisableInput()
                    _util.AddItem(_id.M10_SalesSign)
                    _util.SwitchState("appear", _id.M10_SalesSign)
                    repeat
                      scriptWait()
                    until not _util.IsAnimPlaying(_id.M10_SalesSign)
                    _util.EnableInput(true)
                  end
                  scriptPlay(L3_3)
                end
              end
            end
          end
        end
      else
        L3_3 = _id
        L3_3 = L3_3.M10_BoxInventory
        if L2_2 == L3_3 then
          L3_3 = _util
          L3_3 = L3_3.GetVar
          L3_3 = L3_3("haveGiftShopBox")
          if L3_3 == 1 then
            L3_3 = _util
            L3_3 = L3_3.RemoveInventoryItem
            L3_3(_id.M10_BoxInventory)
            L3_3 = _util
            L3_3 = L3_3.AddItem
            L3_3(_id.M10_TownBox, 2)
            L3_3 = _util
            L3_3 = L3_3.SwitchState
            L3_3("appear", _id.M10_TownBox)
            L3_3 = _util
            L3_3 = L3_3.SetVar
            L3_3("boxPlaced", 1)
            L3_3 = _util
            L3_3 = L3_3.SetVar
            L3_3("spaceEmpty", 1)
            L3_3 = _util
            L3_3 = L3_3.GetVar
            L3_3 = L3_3("boxPlaced")
            if L3_3 == 1 then
              L3_3 = _util
              L3_3 = L3_3.GetVar
              L3_3 = L3_3("clothesPlaced")
              if L3_3 == 1 then
                L3_3 = _util
                L3_3 = L3_3.GetVar
                L3_3 = L3_3("tablePlaced")
                if L3_3 == 1 then
                  function L3_3()
                    _util.DisableInput()
                    _util.AddItem(_id.M10_SalesSign)
                    _util.SwitchState("appear", _id.M10_SalesSign)
                    repeat
                      scriptWait()
                    until not _util.IsAnimPlaying(_id.M10_SalesSign)
                    _util.EnableInput(true)
                  end
                  scriptPlay(L3_3)
                end
              end
            end
          end
        end
      end
    end
  end
end
