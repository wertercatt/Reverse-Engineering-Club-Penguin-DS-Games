local L0_0, L1_1, L2_2, L3_3
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.CREATED
if L0_0 == L1_1 then
end
L0_0 = _util
L0_0 = L0_0.GetActiveMission
L0_0 = L0_0()
L1_1 = _util
L1_1 = L1_1.GetActiveChapter
L1_1 = L1_1()
L2_2 = _util
L2_2 = L2_2.GetConversationCount
L2_2 = L2_2()
L3_3 = _util
L3_3 = L3_3.GetReason
L3_3 = L3_3()
if L3_3 == _const.TOUCHED and L2_2 == 0 then
  function L3_3()
    _util.DisableInput()
    _util.CloseInventory()
    _util.SwitchState("push", _id.M9_MineCartReceiver)
    repeat
      scriptWait()
    until not _util.IsAnimPlaying(_id.M9_MineCartReceiver)
    _util.EnableInput()
    _util.SetVar("M9_cart", 1)
    _util.MarkObjComplete(_text.M9_OBJ_2)
    _util.RemoveMapAlert(0)
    _util.AddMapAlert(2, 461, 145, 5, 156, 82)
    if _util.GetVar("M9_kite") == 1 and _util.GetVar("M9_duck") == 1 and _util.GetVar("M9_cart") == 1 then
      _util.SetupComNpc(_const.COM_GARY, _id.M9_GaryGR, 0)
      _util.LaunchCommunicator()
    end
    _util.DelItem(_util.GetSelf())
  end
  scriptPlay(L3_3)
end
