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
    L1_1(4126, 4127, -1, _const.CHANGE_DIALOG, 1)
  elseif L0_0 == 1 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(4128, 4129, -1, _const.CHANGE_DIALOG, 2)
  elseif L0_0 == 2 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(4130, 4131, -1, _const.CHANGE_DIALOG, 3)
  elseif L0_0 == 3 then
    L1_1 = _util
    L1_1 = L1_1.SetVar
    L1_1("FPM08_SSClerkAskedHelp", 1)
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(4132, _const.END_DIALOG, 4)
  elseif L0_0 == 4 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(4133, _const.END_DIALOG, 4)
  elseif L0_0 == 5 then
    function L1_1()
      _util.SetConversationCount(6)
      _util.DisplayPopUp(626, "UI/Smilie", false)
      repeat
        scriptWait()
      until _util.IsPopUpVisible() == false
      _util.AddSmileys(5, _util.GetX(_util.GetSelf()), _util.GetY(_util.GetSelf()))
      if _util.GetVar("FPM08_NPCs_Helped") == 3 then
        _util.AddItem(_id.FPM08_LostMitten_SportShop)
        _util.AddDialog(4134, _const.CHANGE_NPC, _id.FPM08_LostMitten_SportShop, 0)
      else
        _util.AddDialog(4134, _const.END_DIALOG, 6)
      end
    end
    scriptPlay(L1_1)
  elseif L0_0 == 6 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(4135, _const.END_DIALOG, 6)
  end
end
