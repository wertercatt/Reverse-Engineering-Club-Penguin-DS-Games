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
    L1_1 = L1_1.AddLoopingConv
    L1_1(832)
    L1_1 = _util
    L1_1 = L1_1.AddLoopingOption
    L1_1(834, 837, _const.CHANGE_DIALOG, 1)
    L1_1 = _util
    L1_1 = L1_1.AddLoopingOption
    L1_1(835, 838, _const.CHANGE_DIALOG, 2)
    L1_1 = _util
    L1_1 = L1_1.AddLoopingOption
    L1_1(836, -1, _const.CHANGE_DIALOG, 11)
    L1_1 = _util
    L1_1 = L1_1.SetVar
    L1_1("M2C1_searchedSportShop", 1)
  elseif L0_0 == 11 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(4668, _const.END_DIALOG, 0)
  elseif L0_0 == 1 then
    L1_1 = _util
    L1_1 = L1_1.AddLoopingConv
    L1_1(837)
    L1_1 = _util
    L1_1 = L1_1.AddLoopingOption
    L1_1(835, 838, _const.UPDATE_LOOP)
    L1_1 = _util
    L1_1 = L1_1.AddLoopingOption
    L1_1(839, -1, _const.CHANGE_DIALOG, 12)
  elseif L0_0 == 2 then
    L1_1 = _util
    L1_1 = L1_1.AddLoopingConv
    L1_1(838)
    L1_1 = _util
    L1_1 = L1_1.AddLoopingOption
    L1_1(834, 837, _const.UPDATE_LOOP)
    L1_1 = _util
    L1_1 = L1_1.AddLoopingOption
    L1_1(839, -1, _const.CHANGE_DIALOG, 12)
  elseif L0_0 == 12 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(4669, _const.END_DIALOG, 0)
  elseif L0_0 == 99 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(842, _const.CHANGE_DIALOG, 100)
  elseif L0_0 == 100 then
    function L1_1()
      _util.DisplayPopUp(371, "UI/Zoom/garyGlasses")
      repeat
        scriptWait()
      until _util.IsPopUpVisible() == false
      _util.DisableInput()
      _util.SetSuitcaseItemEnabled(_id.SuitCase_GaryGlasses, true)
      _util.SetVar("M2C1_haveGlasses", 1)
      _util.SetVar("M2C1_searchedSportShop", 1)
      _util.PopCamera()
      _util.SetSpawn(0, _id.M2C1_Dot_CR)
      _util.SetSpawn(0, _id.M2C1_JPG_CR)
      _util.SetSpawn(0, _id.M2C1_Director)
      _util.SetSpawn(1, _id.M2C1_Dot_SV)
      _util.SetConversationCount(0)
      _util.EnableInput()
      _util.SetObjective(795)
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
  L0_0 = L0_0.GetConversationCount
  L0_0 = L0_0()
  L1_1 = _util
  L1_1 = L1_1.GetSource
  L1_1 = L1_1()
  if L1_1 == _id.Inventory_Dossier then
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("M2C1_haveGlasses")
    if L1_1 == 0 then
      L1_1 = _util
      L1_1 = L1_1.AddConversation
      L1_1(840, 841, -1, _const.CHANGE_DIALOG, 99)
    end
  else
    L1_1 = _util
    L1_1 = L1_1.GetSource
    L1_1 = L1_1()
    if L1_1 == _id.Inventory_Dossier then
      L1_1 = _util
      L1_1 = L1_1.GetVar
      L1_1 = L1_1("M2C1_haveGlasses")
      if L1_1 == 1 then
        L1_1 = _util
        L1_1 = L1_1.AddConversation
        L1_1(843, -1, -1, _const.END_DIALOG, L0_0)
      end
    end
  end
end
