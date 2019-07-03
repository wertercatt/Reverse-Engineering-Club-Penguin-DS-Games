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
  if L0_0 == 0 then
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("M3C2_rings")
    if L1_1 == 3 then
      L1_1 = _util
      L1_1 = L1_1.GetVar
      L1_1 = L1_1("M3C2_yodelling")
      if L1_1 == 0 then
        L1_1 = _util
        L1_1 = L1_1.AddConversation
        L1_1(1635, 1636, -1, _const.END_DIALOG, 0)
      end
    end
  elseif L0_0 == 1 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(1639, 1640, -1, _const.CHANGE_DIALOG, 2)
  elseif L0_0 == 2 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(1641, _const.CHANGE_DIALOG, 3)
  elseif L0_0 == 3 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(1642, 1643, -1, _const.CHANGE_DIALOG, 4)
  elseif L0_0 == 4 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(1644, 1645, -1, _const.CHANGE_DIALOG, 500)
  elseif L0_0 == 500 then
    function L1_1()
      _util.SetPuffle(_id.Inventory_PuffleYellow)
      _util.EnablePuffle(_const.FLAG_YELLOW)
      _util.DelItem(_id.M3C2_Chirp_TallestM)
      _util.AddItem(_id.M3C2_YodelingPH_TallestM)
      _util.SetVar("M3C2_yodelling", 1)
      _util.SetConversationCount(5, _id.M3C2_YodelingPH_TallestM)
      _util.DelItem(_id.M3C2_TallestM_PHConduct)
    end
    scriptPlay(L1_1)
  elseif L0_0 == 5 then
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("M3C2_ice")
    if L1_1 == 0 then
      L1_1 = _util
      L1_1 = L1_1.GetVar
      L1_1 = L1_1("M3C2_yodelling")
      if L1_1 == 1 then
        L1_1 = _util
        L1_1 = L1_1.AddLoopingConv
        L1_1(1646)
        L1_1 = _util
        L1_1 = L1_1.AddLoopingOption
        L1_1(1647, 1650, _const.UPDATE_LOOP)
        L1_1 = _util
        L1_1 = L1_1.AddLoopingOption
        L1_1(1648, 1651, _const.UPDATE_LOOP)
        L1_1 = _util
        L1_1 = L1_1.AddLoopingOption
        L1_1(1649, -1, _const.CHANGE_DIALOG, 50)
      end
    end
  elseif L0_0 == 50 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(4414, _const.END_DIALOG, 5)
  elseif L0_0 == 5 then
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("M3C2_ice")
    if L1_1 == 1 then
      L1_1 = _util
      L1_1 = L1_1.GetVar
      L1_1 = L1_1("M3C2_phHat")
      if L1_1 == 0 then
        L1_1 = _util
        L1_1 = L1_1.AddConversation
        L1_1(1652, 1653, -1, _const.END_DIALOG, 5)
      end
    end
  elseif L0_0 == 5 then
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("M3C2_ice")
    if L1_1 == 1 then
      L1_1 = _util
      L1_1 = L1_1.GetVar
      L1_1 = L1_1("M3C2_phHat")
      if L1_1 == 1 then
        L1_1 = _util
        L1_1 = L1_1.AddLoopingConv
        L1_1(1654)
        L1_1 = _util
        L1_1 = L1_1.AddLoopingOption
        L1_1(1655, 1658, _const.UPDATE_LOOP)
        L1_1 = _util
        L1_1 = L1_1.AddLoopingOption
        L1_1(1656, 1659, _const.UPDATE_LOOP)
        L1_1 = _util
        L1_1 = L1_1.AddLoopingOption
        L1_1(1657, -1, _const.CHANGE_DIALOG, 6)
      end
    end
  elseif L0_0 == 6 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(4323, _const.END_DIALOG, 5)
  elseif L0_0 == 0 then
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("M3C2_yodelling")
    if L1_1 == 0 then
      L1_1 = _util
      L1_1 = L1_1.AddLoopingConv
      L1_1(1629)
      L1_1 = _util
      L1_1 = L1_1.AddLoopingOption
      L1_1(1630, 1633, _const.UPDATE_LOOP)
      L1_1 = _util
      L1_1 = L1_1.AddLoopingOption
      L1_1(1631, 1634, _const.UPDATE_LOOP)
      L1_1 = _util
      L1_1 = L1_1.AddLoopingOption
      L1_1(1632, -1, _const.CHANGE_DIALOG, 100)
    end
  elseif L0_0 == 100 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(4413, _const.END_DIALOG, 0)
  elseif L0_0 == 7 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(1618, 1619, -1, _const.CHANGE_DIALOG, 8)
  elseif L0_0 == 8 then
    L1_1 = _util
    L1_1 = L1_1.ActivateNpc
    L1_1(_id.M3C2_TallestM_JPG, 1)
  elseif L0_0 == 9 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(1621, 1622, -1, _const.CHANGE_DIALOG, 10)
  elseif L0_0 == 10 then
    L1_1 = _util
    L1_1 = L1_1.DelItem
    L1_1(_id.M3C2_TallestM_JPG)
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(1623, 1624, -1, _const.CHANGE_DIALOG, 11)
  elseif L0_0 == 11 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(1625, _const.CHANGE_DIALOG, 12)
  elseif L0_0 == 12 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(1626, _const.CHANGE_DIALOG, 13)
  elseif L0_0 == 13 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(1627, 1628, -1, _const.CHANGE_DIALOG, 14)
    L1_1 = _util
    L1_1 = L1_1.IncVar
    L1_1("M3C2_training")
    L1_1 = _util
    L1_1 = L1_1.SetVar
    L1_1("M3C2_JPGGone", 1)
  elseif L0_0 == 14 then
    L1_1 = _util
    L1_1 = L1_1.DelItem
    L1_1(_util.GetSelf())
    L1_1 = _util
    L1_1 = L1_1.AddItem
    L1_1(_id.M3C2_TallestM_PHConduct)
  elseif L0_0 == 101 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(1674, 1675, -1, _const.CHANGE_DIALOG, 103)
  elseif L0_0 == 103 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(1676, 1677, -1, _const.END_DIALOG, 5)
    L1_1 = _util
    L1_1 = L1_1.SetObjective
    L1_1(653)
  elseif L0_0 == 110 then
    L1_1 = _util
    L1_1 = L1_1.AddMonologue
    L1_1(1670, "DialogStrings", _const.CHANGE_DIALOG, 111)
  elseif L0_0 == 111 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(1671, _const.END_DIALOG, 5)
  elseif L0_0 == 200 then
    L1_1 = _util
    L1_1 = L1_1.AddMonologue
    L1_1(1665, "DialogStrings", _const.CHANGE_DIALOG, 201)
  elseif L0_0 == 201 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(1666, 1667, -1, _const.CHANGE_DIALOG, 202)
  elseif L0_0 == 202 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(1668, 1669, -1, _const.END_DIALOG, 5)
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
  L1_1 = L1_1.M3C2_threeRing
  if L0_0 == L1_1 then
    L1_1 = _util
    L1_1 = L1_1.RemoveInventoryItem
    L1_1(_id.M3C2_threeRing)
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(1637, 1638, -1, _const.CHANGE_DIALOG, 1)
  end
end
