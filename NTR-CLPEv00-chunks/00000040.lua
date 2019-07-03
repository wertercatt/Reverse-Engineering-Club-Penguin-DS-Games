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
  L1_1 = _util
  L1_1 = L1_1.GetVar
  L1_1 = L1_1("KnowWhoNeedsTheSoup")
  if L1_1 == 1 then
    function L1_1()
      _util.SwitchState("opening", _util.GetSelf())
      repeat
        scriptWait()
      until _util.IsAnimPlaying(_util.GetSelf()) == false
      _util.SwitchState("open", _util.GetSelf())
      _util.AddInventoryItem(_id.M1C3_Soup)
      _util.SetVar("M1C3_haveSoup", 1)
      repeat
        scriptWait()
      until _util.IsPopUpVisible() == true
      _util.DelItem(_util.GetSelf())
    end
    scriptPlay(L1_1)
  elseif L0_0 == 0 then
    function L1_1()
      _util.SwitchState("opening", _util.GetSelf())
      repeat
        scriptWait()
      until _util.IsAnimPlaying(_util.GetSelf()) == false
      _util.AddMonologue(643, "DialogStrings", _const.CHANGE_DIALOG, 1)
    end
    scriptPlay(L1_1)
  elseif L0_0 == 1 then
    L1_1 = _util
    L1_1 = L1_1.SetConversationCount
    L1_1(0)
    L1_1 = _util
    L1_1 = L1_1.SwitchState
    L1_1("", _util.GetSelf())
  end
end
