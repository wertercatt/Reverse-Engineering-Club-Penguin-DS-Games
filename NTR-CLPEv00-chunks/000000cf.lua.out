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
  L1_1 = L1_1.TOUCHED
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
  if L0_0 == 100 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(738, _const.CHANGE_DIALOG, 101)
  elseif L0_0 == 101 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(739, _const.CHANGE_NPC, _id.M2C1_Dot_CR, 100)
  elseif L0_0 == 102 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(743, _const.CHANGE_DIALOG, 103)
  elseif L0_0 == 103 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(744)
    L1_1 = _util
    L1_1 = L1_1.AddDialogButton
    L1_1(745, _const.CHANGE_DIALOG, 104)
  elseif L0_0 == 104 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(746, _const.CHANGE_DIALOG, 105)
  elseif L0_0 == 105 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(747, _const.CHANGE_NPC, _id.M2C1_Dot_CR, 102)
  elseif L0_0 == 106 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(749)
    L1_1 = _util
    L1_1 = L1_1.AddDialogButton
    L1_1(750, _const.CHANGE_DIALOG, 107)
    L1_1 = _util
    L1_1 = L1_1.AddDialogButton
    L1_1(751, _const.CHANGE_DIALOG, 108)
    L1_1 = _util
    L1_1 = L1_1.SetVar
    L1_1("directorDone", 1)
  elseif L0_0 == 107 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(752, -1, -1, _const.CHANGE_DIALOG, 109)
  elseif L0_0 == 108 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(753, -1, -1, _const.CHANGE_DIALOG, 109)
  elseif L0_0 == 109 then
    function L1_1()
      _util.DisableInput()
      _util.AddItem(_id.Object_DossierUp)
      _util.PushCamera(_id.Object_DossierUp)
      _util.PlaySFX(111)
      _util.SwitchState("open", _id.Object_DossierUp)
      _util.SwitchState("opening", _id.Object_CommandTable)
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_id.Object_DossierUp)
      _util.PopCamera(_id.Object_DossierUp)
      _util.DelItem(_id.Object_DossierUp)
      _util.AddItem(_id.Inventory_Dossier)
      _util.SetConversationCount(110)
      _util.EnableInput()
      _util.ActivateNpc(_id.ScreenOn_CR, 23)
    end
    scriptPlay(L1_1)
  end
end
