local L0_0, L1_1
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.CREATED
if L0_0 == L1_1 then
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
    L1_1(3854, 3855, -1, _const.CHANGE_DIALOG, 1)
  elseif L0_0 == 1 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(3856, 3857, -1, _const.CHANGE_DIALOG, 2)
  elseif L0_0 == 2 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(3858, _const.END_DIALOG, 3)
  elseif L0_0 == 3 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(3859, _const.END_DIALOG, 3)
  elseif L0_0 == 4 then
    function L1_1()
      _util.SetConversationCount(5)
      _util.DisplayPopUp(493, "UI/Smilie", false)
      repeat
        scriptWait()
      until _util.IsPopUpVisible() == false
      if _util.GetVar("FPM08_NPCs_Helped") == 3 then
        _util.AddItem(_id.FPM08_LostMitten_IceRink)
        _util.AddDialog(3860, _const.CHANGE_NPC, _id.FPM08_LostMitten_IceRink, 0)
      else
        _util.AddDialog(3860, _const.END_DIALOG, 5)
      end
    end
    scriptPlay(L1_1)
  elseif L0_0 == 5 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(3861, _const.END_DIALOG, 5)
  end
end
