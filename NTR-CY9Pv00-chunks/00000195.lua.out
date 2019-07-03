local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
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
  if L2_2 == 0 then
  end
  L3_3 = _util
  L3_3 = L3_3.GetVar
  L4_4 = "M6_pulledLever"
  L3_3 = L3_3(L4_4)
  if L3_3 == 0 then
    L3_3 = _util
    L3_3 = L3_3.AddPlayerThought
    L4_4 = _text
    L4_4 = L4_4.M6_HERB_CAVE_LEVER
    L3_3(L4_4)
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
  L4_4 = _util
  L4_4 = L4_4.GetPuffle
  L4_4 = L4_4()
  L5_5 = _id
  L5_5 = L5_5.M5_OberryBag
  if L3_3 == L5_5 then
    L5_5 = _id
    L5_5 = L5_5.Inventory_PuffleBlack
    if L4_4 == L5_5 then
      function L5_5()
        _util.SetVar("M6_pulledLever", 1)
        _util.HidePuffle()
        _util.DisableInput()
        _util.SwitchState("up2down", _util.GetSelf())
        repeat
          scriptWait()
        until 0 + 1 > 180
        if _util.GetVar("M6_troughDown") == 0 then
          _util.SwitchState("up2upWater", _id.M6_TroughUp)
          repeat
            scriptWait()
          until not _util.IsAnimPlaying(_id.M6_TroughUp)
          _util.AddItem(_id.M6_TroughWaterUp)
          _util.DelItem(_id.M6_TroughUp)
        else
          _util.SwitchState("down2downWater", _id.M6_TroughDown)
          repeat
            scriptWait()
          until not _util.IsAnimPlaying(_id.M6_TroughDown)
          _util.AddItem(_id.M6_TroughWaterDown)
          _util.DelItem(_id.M6_TroughDown)
          _util.SetVar("M6_waterFlow", 1)
        end
        repeat
          scriptWait()
        until not _util.IsAnimPlaying(_util.GetSelf())
        _util.AddItem(_id.M6_leverDown)
        _util.EnableInput()
        _util.ShowPuffle()
        _util.DelItem(_util.GetSelf())
      end
      scriptPlay(L5_5)
    else
      L5_5 = _id
      L5_5 = L5_5.Inventory_NoPuffle
      if L4_4 == L5_5 then
        L5_5 = _util
        L5_5 = L5_5.AddPlayerThought
        L5_5(_text.M3_NOPUFFLE_OBERRYDROP)
      else
        L5_5 = _util
        L5_5 = L5_5.AddPlayerThought
        L5_5(_text.M3_WRONGPUFFLE_OBERRYDROP)
      end
    end
  end
end
