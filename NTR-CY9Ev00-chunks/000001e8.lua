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
  L0_0 = _util
  L0_0 = L0_0.AddInterest
  L1_1 = _const
  L1_1 = L1_1.COLLIDED
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
  L3_3 = L3_3.AddMonologue
  L4_4 = _text
  L4_4 = L4_4.M6_CAVE_SNOW_TOUCH
  L5_5 = "DialogStrings"
  L3_3(L4_4, L5_5, _const.END_DIALOG, 0)
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
  L5_5 = L5_5.M6_HotOberry
  if L3_3 == L5_5 then
    L5_5 = _id
    L5_5 = L5_5.Inventory_PuffleBlack
    if L4_4 == L5_5 then
      function L5_5()
        _util.DisablePuffle(_id.Enable_PuffleBlack)
        _util.StartCutscene(_const.SUPERFLARE)
        repeat
          scriptWait()
        until _util.GetGameState() ~= _const.MISSION
        repeat
          scriptWait()
        until _util.GetGameState() == _const.MISSION
        _util.RemoveInventoryItem(_id.M6_HotOberry)
        _util.SetCursorPos(157, 72)
        _util.AddItem(_id.M6_SnowHole)
        _util.SetSpawn(1, _id.M6_SnowHole)
        _util.AddItem(_id.M6_CaveExit)
        _util.SetSpawn(1, _id.M6_CaveExit)
        _util.DelItem(_id.M6_doorOpen)
        _util.SetSpawn(0, _id.M6_doorOpen)
        _util.SetPuffle(_id.Inventory_NoPuffle)
        _util.MarkObjComplete(_text.M6_OBJ5)
        _util.AddObjective(_text.M6_OBJ6)
        if _util.GetObjective() == _text.M6_OBJ3 then
          _util.ClearObjective()
        end
      end
      scriptPlay(L5_5)
      _util.SetVar("EscapedFromCave", 1)
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
  else
    L5_5 = _id
    L5_5 = L5_5.M5_OberryBag
    if L3_3 == L5_5 then
      L5_5 = _util
      L5_5 = L5_5.AddMonologue
      L5_5(_text.M6_CAVE_SNOW_BERRY)
    else
      L5_5 = _id
      L5_5 = L5_5.Inventory_PuffleRed
      if L3_3 == L5_5 then
        L5_5 = _util
        L5_5 = L5_5.SetSuccess
        L5_5(_util.GetSelf(), true)
        L5_5 = _util
        L5_5 = L5_5.SetVar
        L5_5("M6BlastSnow", 0)
      end
    end
  end
end
L3_3 = _util
L3_3 = L3_3.GetReason
L3_3 = L3_3()
L4_4 = _const
L4_4 = L4_4.COLLIDED
if L3_3 == L4_4 then
  L3_3 = _util
  L3_3 = L3_3.GetSource
  L3_3 = L3_3()
  L4_4 = _id
  L4_4 = L4_4.Inventory_PuffleRed
  if L3_3 == L4_4 then
    function L4_4()
      _util.SetCursorPos(157, 72)
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_util.GetSelf())
      _util.AddItem(_id.M6_SnowHole)
      _util.SetSpawn(1, _id.M6_SnowHole)
      _util.AddItem(_id.M6_CaveExit)
      _util.SetSpawn(1, _id.M6_CaveExit)
      _util.DelItem(_id.M6_doorOpen)
      _util.SetSpawn(0, _id.M6_doorOpen)
      _util.MarkObjComplete(_text.M6_OBJ5)
      _util.AddObjective(_text.M6_OBJ6)
      if _util.GetObjective() == _text.M6_OBJ3 then
        _util.ClearObjective()
      end
    end
    L5_5 = _util
    L5_5 = L5_5.GetVar
    L5_5 = L5_5("M6BlastSnow")
    if L5_5 == 0 then
      L5_5 = _util
      L5_5 = L5_5.SetVar
      L5_5("M5BlastSnow", 1)
      L5_5 = scriptPlay
      L5_5(L4_4)
      L5_5 = _util
      L5_5 = L5_5.SetVar
      L5_5("EscapedFromCave", 1)
    end
  end
end
