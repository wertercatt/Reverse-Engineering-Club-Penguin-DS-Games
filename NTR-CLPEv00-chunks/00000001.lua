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
        L1_1(1668, 1669, -1, _const.END_DIALOG, 0)
      end
    end
  elseif L0_0 == 1 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(1672, 1673, -1, _const.CHANGE_DIALOG, 2)
  elseif L0_0 == 2 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(1674, _const.CHANGE_DIALOG, 3)
  elseif L0_0 == 3 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(1675, 1676, -1, _const.CHANGE_DIALOG, 4)
  elseif L0_0 == 4 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(1677, 1678, -1, _const.CHANGE_DIALOG, 500)
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
        L1_1(1679)
        L1_1 = _util
        L1_1 = L1_1.AddLoopingOption
        L1_1(1680, 1683, _const.UPDATE_LOOP)
        L1_1 = _util
        L1_1 = L1_1.AddLoopingOption
        L1_1(1681, 1684, _const.UPDATE_LOOP)
        L1_1 = _util
        L1_1 = L1_1.AddLoopingOption
        L1_1(1682, -1, _const.CHANGE_DIALOG, 50)
      end
    end
  elseif L0_0 == 50 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(4722, _const.END_DIALOG, 5)
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
        L1_1(1685, 1686, -1, _const.END_DIALOG, 5)
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
        L1_1(1687)
        L1_1 = _util
        L1_1 = L1_1.AddLoopingOption
        L1_1(1688, 1691, _const.UPDATE_LOOP)
        L1_1 = _util
        L1_1 = L1_1.AddLoopingOption
        L1_1(1689, 1692, _const.UPDATE_LOOP)
        L1_1 = _util
        L1_1 = L1_1.AddLoopingOption
        L1_1(1690, -1, _const.CHANGE_DIALOG, 6)
      end
    end
  elseif L0_0 == 6 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(4630, _const.END_DIALOG, 5)
  elseif L0_0 == 0 then
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("M3C2_yodelling")
    if L1_1 == 0 then
      L1_1 = _util
      L1_1 = L1_1.AddLoopingConv
      L1_1(1662)
      L1_1 = _util
      L1_1 = L1_1.AddLoopingOption
      L1_1(1663, 1666, _const.UPDATE_LOOP)
      L1_1 = _util
      L1_1 = L1_1.AddLoopingOption
      L1_1(1664, 1667, _const.UPDATE_LOOP)
      L1_1 = _util
      L1_1 = L1_1.AddLoopingOption
      L1_1(1665, -1, _const.CHANGE_DIALOG, 100)
    end
  elseif L0_0 == 100 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(4721, _const.END_DIALOG, 0)
  elseif L0_0 == 7 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(1651, 1652, -1, _const.CHANGE_DIALOG, 8)
  elseif L0_0 == 8 then
    L1_1 = _util
    L1_1 = L1_1.ActivateNpc
    L1_1(_id.M3C2_TallestM_JPG, 1)
  elseif L0_0 == 9 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(1654, 1655, -1, _const.CHANGE_DIALOG, 10)
  elseif L0_0 == 10 then
    L1_1 = _util
    L1_1 = L1_1.DelItem
    L1_1(_id.M3C2_TallestM_JPG)
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(1656, 1657, -1, _const.CHANGE_DIALOG, 11)
  elseif L0_0 == 11 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(1658, _const.CHANGE_DIALOG, 12)
  elseif L0_0 == 12 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(1659, _const.CHANGE_DIALOG, 13)
  elseif L0_0 == 13 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(1660, 1661, -1, _const.CHANGE_DIALOG, 14)
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
    L1_1(1707, 1708, -1, _const.CHANGE_DIALOG, 103)
  elseif L0_0 == 103 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(1709, 1710, -1, _const.END_DIALOG, 5)
    L1_1 = _util
    L1_1 = L1_1.SetObjective
    L1_1(805)
  elseif L0_0 == 110 then
    L1_1 = _util
    L1_1 = L1_1.AddMonologue
    L1_1(1703, "DialogStrings", _const.CHANGE_DIALOG, 111)
  elseif L0_0 == 111 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(1704, _const.END_DIALOG, 5)
  elseif L0_0 == 200 then
    L1_1 = _util
    L1_1 = L1_1.AddMonologue
    L1_1(1698, "DialogStrings", _const.CHANGE_DIALOG, 201)
  elseif L0_0 == 201 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(1699, 1700, -1, _const.CHANGE_DIALOG, 202)
  elseif L0_0 == 202 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(1701, 1702, -1, _const.END_DIALOG, 5)
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
    L1_1(1670, 1671, -1, _const.CHANGE_DIALOG, 1)
  end
end
