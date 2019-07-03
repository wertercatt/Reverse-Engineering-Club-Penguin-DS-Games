local L0_0, L1_1
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.CREATED
if L0_0 == L1_1 then
end
L0_0 = _util
L0_0 = L0_0.GetConversationCount
L0_0 = L0_0()
L1_1 = _util
L1_1 = L1_1.GetReason
L1_1 = L1_1()
if L1_1 == _const.TOUCHED then
  function L1_1()
    _util.DisableInput()
    repeat
      scriptWait()
    until 0 + 1 > 30
    if _util.GetVar("ChartFlip") == 0 then
      _util.ChangeBaseAnim("Location/HerbertsBaseWorkshop/touch/chart2")
      _util.SetVar("ChartFlip", 1)
    elseif _util.GetVar("ChartFlip") == 1 then
      _util.ChangeBaseAnim("Location/HerbertsBaseWorkshop/touch/chart3")
      _util.SetVar("ChartFlip", 2)
    elseif _util.GetVar("ChartFlip") == 2 then
      _util.ChangeBaseAnim("Location/HerbertsBaseWorkshop/touch/chart1")
      _util.SetVar("ChartFlip", 0)
    end
    _util.EnableInput(true)
    _util.AddPlayerThought(_text.C2_HBWORKSHOP_FLIPCHART)
  end
  scriptPlay(L1_1)
end
