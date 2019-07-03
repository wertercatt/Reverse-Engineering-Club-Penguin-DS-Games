local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
L0_0 = _util
L0_0 = L0_0.GetActiveMission
L0_0 = L0_0()
L1_1 = _util
L1_1 = L1_1.GetActiveChapter
L1_1 = L1_1()
L2_2 = 33723
L3_3 = 52
L4_4 = _util
L4_4 = L4_4.GetReason
L4_4 = L4_4()
L5_5 = _const
L5_5 = L5_5.CREATED
if L4_4 == L5_5 then
  L4_4 = _util
  L4_4 = L4_4.AddInterest
  L5_5 = _const
  L5_5 = L5_5.ITEM_DROPPED
  L4_4(L5_5)
end
L4_4 = _util
L4_4 = L4_4.GetReason
L4_4 = L4_4()
L5_5 = _const
L5_5 = L5_5.TOUCHED
if L4_4 == L5_5 then
  L4_4 = _util
  L4_4 = L4_4.AddMonologue
  L5_5 = _text
  L5_5 = L5_5.M5_ANALYZER_PINKFUR_TOUCH
  L4_4(L5_5, "DialogStrings", _const.END_DIALOG, 0)
end
L4_4 = _util
L4_4 = L4_4.GetReason
L4_4 = L4_4()
L5_5 = _const
L5_5 = L5_5.ITEM_DROPPED
if L4_4 == L5_5 then
  L4_4 = _util
  L4_4 = L4_4.GetSource
  L4_4 = L4_4()
  L5_5 = _id
  L5_5 = L5_5.Inventory_CombTool
  if L4_4 == L5_5 then
    function L5_5()
      _util.DisableInput()
      _util.SwitchState("Analyze", _util.GetSelf())
      repeat
        scriptWait()
      until 100 - 1 == 0
      _util.PlaySFX(207)
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_util.GetSelf())
      _util.PlaySFX(208)
      _util.AddItem(_id.M5_Analyz_Puffle)
      _util.SwitchState("pinkPuffle", _id.M5_Analyz_Puffle)
      repeat
        scriptWait()
      until 10 - 1 == 0
      _util.PlaySFX(209)
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_id.M5_Analyz_Puffle)
      _util.SwitchState("", _id.M5_Analyz_Puffle)
      _util.SetVar("M5_Gary_FixedFurAnalyzer", 1)
      _util.SetVar("pinkFurAnalyzed", 1)
      _util.ClearObjective()
      _util.AddItem(63421)
      _util.SetSpawn(0, _id.M5_Analyzer1)
      _util.SetSpawn(1, _id.M5_Analyzer2)
      _util.EnableInput()
      _util.DelItem(_util.GetSelf())
    end
    scriptPlay(L5_5)
  else
    L5_5 = _util
    L5_5 = L5_5.AddMonologue
    L5_5(_text.M5_ANALYZER_PINKFUR_WRONGDROP, "DialogStrings", _const.END_DIALOG, 0)
  end
end
