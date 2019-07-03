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
    L1_1(3865, 3866, -1, _const.CHANGE_DIALOG, 1)
  elseif L0_0 == 1 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(3867, 3868, -1, _const.CHANGE_DIALOG, 2)
  elseif L0_0 == 2 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(3869, _const.END_DIALOG, 3)
  elseif L0_0 == 3 then
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("FPM08_Jacket_Found")
    if L1_1 == 0 then
      L1_1 = _util
      L1_1 = L1_1.AddConversation
      L1_1(3870, 3871, -1, _const.CHANGE_DIALOG, 4)
    end
  elseif L0_0 == 4 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(3872, _const.END_DIALOG, 3)
  elseif L0_0 == 3 then
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("FPM08_Jacket_Found")
    if L1_1 == 1 then
      L1_1 = _util
      L1_1 = L1_1.AddConversation
      L1_1(3873, 3874, -1, _const.CHANGE_DIALOG, 14)
    end
  elseif L0_0 == 14 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(3875, _const.END_DIALOG, 3)
  elseif L0_0 == 5 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(3876, 3877, -1, _const.CHANGE_DIALOG, 6)
    L1_1 = _util
    L1_1 = L1_1.IncVar
    L1_1("FPM08_NPCs_Helped")
  elseif L0_0 == 6 then
    function L1_1()
      _util.SetConversationCount(7)
      _util.DisplayPopUp(493, "UI/Smilie", false)
      repeat
        scriptWait()
      until _util.IsPopUpVisible() == false
      if _util.GetVar("FPM08_NPCs_Helped") == 3 then
        _util.AddItem(_id.FPM08_LostMitten_Plaza)
        _util.AddDialog(3878, _const.CHANGE_NPC, _id.FPM08_LostMitten_Plaza, 0)
      else
        _util.AddDialog(3878, _const.END_DIALOG, 7)
      end
    end
    scriptPlay(L1_1)
  elseif L0_0 == 7 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(3879, _const.END_DIALOG, 7)
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
  L1_1 = L1_1.FPM08_Jacket
  if L0_0 == L1_1 then
    function L1_1()
      _util.RemoveInventoryItem(_id.FPM08_Jacket)
      _util.AddItem(_id.FPM08_LostJacketHappyNPC)
      _util.ActivateNpc(_id.FPM08_LostJacketHappyNPC, 5)
      _util.DelItem(_id.FPM08_LostJacketNPC)
    end
    scriptPlay(L1_1)
  end
end
