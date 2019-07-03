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
  L0_0 = L0_0.GetVar
  L1_1 = "M9_kite"
  L0_0 = L0_0(L1_1)
  if L0_0 == 1 then
    L0_0 = _util
    L0_0 = L0_0.AddMonologue
    L1_1 = _text
    L1_1 = L1_1.M9_POST_GOOD
    L0_0(L1_1, "DialogStrings", _const.END_DIALOG, 0)
  else
    L0_0 = _util
    L0_0 = L0_0.AddMonologue
    L1_1 = _text
    L1_1 = L1_1.M9_POST_HIGH
    L0_0(L1_1, "DialogStrings", _const.END_DIALOG, 0)
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
  L1_1 = L1_1.M9_KiteReceiver
  if L0_0 == L1_1 then
    function L1_1()
      _util.DisableInput()
      _util.RemoveInventoryItem(_id.M9_KiteReceiver)
      _util.MarkObjComplete(_text.M9_OBJ_1)
      _util.AddMapAlert(2, 197, 49, 3, 60, 62)
      _util.RemoveMapAlert(2)
      _util.AddItem(_id.M9_KiteOnPost)
      _util.SwitchState("appear", _id.M9_KiteOnPost)
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_id.M9_KiteOnPost)
      _util.SwitchState("", _id.M9_KiteOnPost)
      _util.SetVar("M9_kite", 1)
      if _util.GetVar("M9_kite") == 1 and _util.GetVar("M9_duck") == 1 and _util.GetVar("M9_cart") == 1 then
        _util.SetupComNpc(_const.COM_GARY, _id.M9_GaryGR, 0)
        _util.LaunchCommunicator()
      end
      _util.EnableInput()
    end
    scriptPlay(L1_1)
  else
    L1_1 = _id
    L1_1 = L1_1.M9_KiteString
    if L0_0 == L1_1 then
      L1_1 = _util
      L1_1 = L1_1.AddMonologue
      L1_1(_text.M9_KITE_NEEDS_TRANS, "DialogStrings", _const.END_DIALOG, 0)
    end
  end
end
