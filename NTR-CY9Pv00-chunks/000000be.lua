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
  L3_3 = _util
  L3_3 = L3_3.GetVar
  L4_4 = "cageEscaped"
  L3_3 = L3_3(L4_4)
  if L3_3 == 0 then
    L3_3 = _util
    L3_3 = L3_3.AddPlayerThought
    L4_4 = _text
    L4_4 = L4_4.M6_HERB_CAVE_PULLEY
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
      L5_5 = _util
      L5_5 = L5_5.GetVar
      L5_5 = L5_5("M6_waterFlow")
      if L5_5 == 1 then
        function L5_5()
          _util.DisableInput()
          _util.SetNextRoom(16)
          _util.StartCutscene(_const.CAGELIFT)
          repeat
            scriptWait()
          until _util.GetGameState() ~= _const.MISSION
          repeat
            scriptWait()
          until _util.GetGameState() == _const.MISSION
          _util.SetVar("cageEscaped", 1)
          _util.MarkObjComplete(_text.M6_OBJ4)
          _util.AddObjective(_text.M6_OBJ5)
          _util.AddSubObjective(_text.M6_OBJ5, _text.M6_5SUBOBJ1)
          _util.EnableInput()
        end
        scriptPlay(L5_5)
      else
        function L5_5()
          _util.DisableInput()
          _util.HidePuffle()
          _util.SwitchState("fail")
          repeat
            scriptWait()
          until not _util.IsAnimPlaying()
          _util.SwitchState("")
          _util.ShowPuffle()
          _util.EnableInput(true)
        end
        scriptPlay(L5_5)
      end
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
