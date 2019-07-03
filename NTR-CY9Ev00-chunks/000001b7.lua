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
if L3_3 == _const.TOUCHED then
  L3_3 = _util
  L3_3 = L3_3.GetVar
  L3_3 = L3_3("hotOn")
  if L3_3 == 0 then
    function L3_3()
      _util.DisableInput()
      _util.ChangeBaseAnim("Location/CoffeeMachine/cocaDialCold", _id.M5_ColdKnob, "2Hot")
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_util.GetSelf())
      _util.ChangeBaseAnim("Location/CoffeeMachine/cocaDialHot", _id.M5_ColdKnob)
      _util.SetVar("hotOn", 1)
      _util.EnableInput()
    end
    scriptPlay(L3_3)
  end
end
