local L0_0, L1_1, L2_2, L3_3, L4_4
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
L4_4 = _const
L4_4 = L4_4.TOUCHED
if L3_3 == L4_4 then
  L3_3 = _util
  L3_3 = L3_3.GetVar
  L4_4 = "milkFixed"
  L3_3 = L3_3(L4_4)
  if L3_3 == 0 then
    L3_3 = _util
    L3_3 = L3_3.AddMonologue
    L4_4 = _text
    L4_4 = L4_4.M5_COFFEESHOP_PIPE_TOUCH
    L3_3(L4_4, "DialogStrings", _const.END_DIALOG, 0)
  end
end
L3_3 = _util
L3_3 = L3_3.GetReason
L3_3 = L3_3()
L4_4 = _const
L4_4 = L4_4.ITEM_DROPPED
if L3_3 == L4_4 then
  L3_3 = _util
  L3_3 = L3_3.GetSource
  L3_3 = L3_3()
  L4_4 = _id
  L4_4 = L4_4.Inventory_WrenchTool
  if L3_3 == L4_4 then
    function L4_4()
      _util.StartMiniGame(_const.WRENCH, 1)
      repeat
        scriptWait()
      until _util.GetGameState() ~= _const.MISSION
      repeat
        scriptWait()
      until _util.GetGameState() == _const.MISSION
      if _util.GetMinigameOutput1() == 1 then
        _util.DisableInput()
        _util.SetVar("milkFixed", 1)
        _util.SwitchState("2Fix", _id.M5_MilkPipe)
        _util.PlaySFX(185)
        repeat
          scriptWait()
        until not _util.IsAnimPlaying(_id.M5_MilkPipe)
        _util.AddItem(62886)
        _util.DelItem(_util.GetSelf())
        _util.EnableInput()
      end
    end
    scriptPlay(L4_4)
  else
    L4_4 = _util
    L4_4 = L4_4.AddMonologue
    L4_4(_text.M5_COFFEESHOP_MACHINE_WRONG, "DialogStrings", _const.END_DIALOG, 0)
  end
end
