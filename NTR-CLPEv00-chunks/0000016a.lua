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
  L1_1 = L1_1("FP01_introRory")
  if L1_1 == 1 then
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("FP01_haveWrench")
    if L1_1 == 0 then
      if L0_0 == 0 then
        L1_1 = _util
        L1_1 = L1_1.AddMonologue
        L1_1(3653, "DialogStrings", _const.END_DIALOG, 1)
        L1_1 = _util
        L1_1 = L1_1.SwitchState
        L1_1("tap1", _util.GetSelf())
      elseif L0_0 == 1 then
        L1_1 = _util
        L1_1 = L1_1.AddMonologue
        L1_1(3654, "DialogStrings", _const.END_DIALOG, 2)
        L1_1 = _util
        L1_1 = L1_1.SwitchState
        L1_1("tap2", _util.GetSelf())
      elseif L0_0 == 2 then
        function L1_1()
          _util.SwitchState("tap3", _util.GetSelf())
          _util.SetVar("FP01_haveWrench", 1)
          _util.AddInventoryItem(_id.FP01_Wrench)
          repeat
            scriptWait()
          until _util.IsPopUpVisible() == false
          _util.SwitchState("", _util.GetSelf())
        end
        scriptPlay(L1_1)
        _util.SetConversationCount(0)
      end
    end
  else
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("FP01_haveWrench")
    if L1_1 == 1 then
      L1_1 = _util
      L1_1 = L1_1.AddMonologue
      L1_1(3656)
    end
  end
end
