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
  L4_4 = L4_4.M5_CleanFur
  if L3_3 == L4_4 then
    L4_4 = _util
    L4_4 = L4_4.GetVar
    L4_4 = L4_4("M5_toldGaryFoundFur")
    if L4_4 == 1 then
      function L4_4()
        _util.MarkObjComplete(_text.M5_OBJ3)
        _util.DisableInput()
        _util.CloseInventory()
        _util.RemoveInventoryItem(_id.M5_CleanFur)
        _util.DelItem(_id.M5_Analyz_DFur)
        _util.AddItem(_id.M5_CleanAnalyze)
        _util.AddItem(_id.M5_Analyz_CFur)
        _util.SetVar("furAnalyzed", 1)
        _util.SwitchState("Analyze", _id.M5_CleanAnalyze)
        _util.SwitchState("polarBear", _id.M5_Analyz_CFur)
        _util.PlaySFX(208)
        repeat
          scriptWait()
        until not _util.IsAnimPlaying(_id.M5_Analyz_CFur)
        _util.SwitchState("", _id.M5_Analyz_CFur)
        _util.SetSpawn(0, _id.M5_Analyzer3)
        _util.SetSpawn(1, _id.M5_Analyzer4)
        _util.DelItem(_id.M5_CleanAnalyze)
        _util.EnableInput()
      end
      scriptPlay(L4_4)
    end
  else
    L4_4 = _id
    L4_4 = L4_4.M5_CleanFur
    if L3_3 == L4_4 then
      L4_4 = _util
      L4_4 = L4_4.GetVar
      L4_4 = L4_4("M5_toldGaryFoundFur")
      if L4_4 == 0 then
        L4_4 = _util
        L4_4 = L4_4.AddPlayerThought
        L4_4(_text.M5_GADGETROOM_ANALYZER_TOUCH)
      end
    else
      L4_4 = _id
      L4_4 = L4_4.M5_DirtyFur
      if L3_3 == L4_4 then
        function L4_4()
          _util.DisableInput()
          _util.CloseInventory()
          _util.RemoveInventoryItem(_id.M5_DirtyFur)
          _util.DelItem(_id.M5_Analyz_Puffle)
          _util.SetVar("dirtyFurAnalyzed", 1)
          _util.MarkSubObjComplete(_text.M5_OBJ0, _text.M5_0SUBOBJ1)
          _util.MarkObjComplete(_text.M5_OBJ0)
          _util.AddItem(_id.M5_DirtyAnalyze)
          _util.AddItem(_id.M5_Analyz_DFur)
          _util.SwitchState("Analyze", _id.M5_DirtyAnalyze)
          _util.SwitchState("dirtyFur", _id.M5_Analyz_DFur)
          _util.PlaySFX(208)
          repeat
            scriptWait()
          until not _util.IsAnimPlaying(_id.M5_Analyz_DFur)
          _util.SwitchState("", _id.M5_Analyz_DFur)
          _util.SetSpawn(0, _id.M5_Analyzer2)
          _util.SetSpawn(1, _id.M5_Analyzer3)
          _util.DelItem(_id.M5_DirtyFur)
          _util.EnableInput()
        end
        scriptPlay(L4_4)
      end
    end
  end
end
