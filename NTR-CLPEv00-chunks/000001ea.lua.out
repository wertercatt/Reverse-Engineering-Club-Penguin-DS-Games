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
    L1_1 = L1_1.AddConversation
    L1_1(4167, 4168, -1, _const.CHANGE_DIALOG, 1)
  elseif L0_0 == 1 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(4169, 4170, -1, _const.CHANGE_DIALOG, 2)
  elseif L0_0 == 2 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(4171, 4172, -1, _const.END_DIALOG, 3)
  elseif L0_0 == 3 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(4173, _const.END_DIALOG, 3)
  elseif L0_0 == 4 then
    function L1_1()
      _util.DisplayPopUp(626, "UI/Smilie", false)
      repeat
        scriptWait()
      until _util.IsPopUpVisible() == false
      _util.AddSmileys(20, _util.GetX(_util.GetSelf()), _util.GetX(_util.GetSelf()))
      _util.AddDialog(4174, _const.CHANGE_DIALOG, 5)
    end
    scriptPlay(L1_1)
  elseif L0_0 == 5 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(4175, 4176, -1, _const.CHANGE_DIALOG, 6)
  elseif L0_0 == 6 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(4177, _const.CHANGE_DIALOG, 7)
  elseif L0_0 == 7 then
    function L1_1()
      _util.SetConversationCount(8)
      _util.SetVar("FPM08_missionComplete", 1)
      _util.SetVar("FPMission_Started", 0)
      _util.RemoveMapAlert(_const.FREEPLAY8START)
      _util.AddCoins(50)
      _util.DisplayPopUp(627, "UI/coin", false)
      repeat
        scriptWait()
      until _util.IsPopUpVisible() == false
      _util.SetObjective(625)
      _util.MarkFreePlayMission(_const.FPM08)
      _util.StartCutscene(_const.FPM08OUTRO)
    end
    scriptPlay(L1_1)
  elseif L0_0 == 8 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(4178, _const.END_DIALOG, 8)
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
  L1_1 = L1_1.Inventory_Mitten
  if L0_0 == L1_1 then
    function L1_1()
      _util.SetVar("FPM08_GaveMitten", 1)
      _util.RemoveInventoryItem(_id.Inventory_Mitten)
      _util.AddItem(_id.FPM08_LostMittenHappy_SportShop)
      _util.ActivateNpc(_id.FPM08_LostMittenHappy_SportShop, 4)
      _util.DelItem(_id.FPM08_LostMitten_SportShop)
    end
    scriptPlay(L1_1)
  end
end
