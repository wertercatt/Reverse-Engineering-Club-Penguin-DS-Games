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
  if L0_0 == 100 then
    L1_1 = _util
    L1_1 = L1_1.PlaySFX
    L1_1(139)
    function L1_1()
      local L0_2, L1_3, L2_4
      L0_2 = _util
      L0_2 = L0_2.DisableInput
      L0_2()
      L0_2 = _util
      L0_2 = L0_2.PushCamera
      L0_2()
      L0_2 = 425
      L1_3 = 90
      L2_4 = 80
      _util.MoveObject(_util.GetSelf(), L0_2, L1_3, L2_4)
      repeat
        scriptWait()
      until _util.GetX(_util.GetSelf()) == L0_2
      _util.PopCamera()
      _util.EnableInput()
      _util.SetCursorPos(_util.GetX(_util.GetSelf()), _util.GetY(_util.GetSelf()))
      _util.PlaySFX(139)
      _util.AddDialog(2708, _const.CHANGE_DIALOG, 101)
    end
    scriptPlay(L1_1)
  elseif L0_0 == 101 then
    L1_1 = _util
    L1_1 = L1_1.AddMonologue
    L1_1(2709, "DialogStrings", _const.CHANGE_DIALOG, 102)
  elseif L0_0 == 102 then
    L1_1 = _util
    L1_1 = L1_1.PlaySFX
    L1_1(139)
    function L1_1()
      local L0_5, L1_6, L2_7
      L0_5 = _util
      L0_5 = L0_5.DisableInput
      L0_5()
      L0_5 = _util
      L0_5 = L0_5.PushCamera
      L0_5()
      L0_5 = 430
      L1_6 = 0
      L2_7 = 50
      _util.MoveObject(_util.GetSelf(), L0_5, L1_6, L2_7)
      repeat
        scriptWait()
      until _util.GetX(_util.GetSelf()) == L0_5
      _util.PopCamera()
      _util.EnableInput()
      _util.AddItem(_id.M4C3_JBot_WC)
      _util.ActivateNpc(_id.M4C3_JBot_WC, 200)
      _util.DelItem(_id.M4C3_JBOT_WC_Talk)
    end
    scriptPlay(L1_1)
  elseif L0_0 == 200 then
    L1_1 = _util
    L1_1 = L1_1.PlaySFX
    L1_1(31)
    function L1_1()
      local L0_8, L1_9, L2_10
      L0_8 = _util
      L0_8 = L0_8.SetCursorPos
      L1_9 = _util
      L1_9 = L1_9.GetX
      L2_10 = _id
      L2_10 = L2_10.M4C3_SBot_WC
      L1_9 = L1_9(L2_10)
      L2_10 = _util
      L2_10 = L2_10.GetY
      L2_10 = L2_10(_id.M4C3_SBot_WC)
      L0_8(L1_9, L2_10, L2_10(_id.M4C3_SBot_WC))
      L0_8 = _util
      L0_8 = L0_8.DisableInput
      L0_8()
      L0_8 = _util
      L0_8 = L0_8.PushCamera
      L0_8()
      L0_8 = 192
      L1_9 = 80
      L2_10 = 50
      _util.MoveObject(_util.GetSelf(), L0_8, L1_9, L2_10)
      repeat
        scriptWait()
      until _util.GetX(_util.GetSelf()) == L0_8 and _util.GetY(_util.GetSelf()) == L1_9
      _util.PopCamera()
      _util.EnableInput()
      _util.AddItem(_id.M4C3_JBOT_WC_Active)
      _util.ActivateNpc(_id.M4C3_JBOT_WC_Active, 300)
      _util.DelItem(_id.M4C3_JBot_WC)
      _util.DelItem(_id.M4C3_SBot_WC)
      _util.DelItem(_id.M4C3_SBot_WC_Open)
    end
    scriptPlay(L1_1)
  elseif L0_0 == 300 then
    L1_1 = _util
    L1_1 = L1_1.PlaySFX
    L1_1(31)
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(2710, 2711, -1, _const.CHANGE_NPC, _id.M4C3_JBOT_WC_Active, 400)
  elseif L0_0 == 400 then
    L1_1 = _util
    L1_1 = L1_1.PlaySFX
    L1_1(139)
    function L1_1()
      local L0_11, L1_12, L2_13
      L0_11 = _util
      L0_11 = L0_11.SetCursorPos
      L1_12 = _util
      L1_12 = L1_12.GetX
      L2_13 = _util
      L2_13 = L2_13.GetSelf
      L2_13 = L2_13()
      L1_12 = L1_12(L2_13, L2_13())
      L2_13 = _util
      L2_13 = L2_13.GetY
      L2_13 = L2_13(_util.GetSelf())
      L0_11(L1_12, L2_13, L2_13(_util.GetSelf()))
      L0_11 = _util
      L0_11 = L0_11.DisableInput
      L0_11()
      L0_11 = _util
      L0_11 = L0_11.PushCamera
      L0_11()
      L0_11 = 598
      L1_12 = -20
      L2_13 = 90
      _util.MoveObject(_util.GetSelf(), L0_11, L1_12, L2_13)
      repeat
        scriptWait()
      until _util.GetX(_util.GetSelf()) == L0_11
      _util.PopCamera()
      _util.EnableInput()
      _util.AddItem(_id.M4C3_JPG_WC)
      _util.PlaySFX(139)
      _util.AddMonologue(2712, "DialogStrings", _const.CHANGE_NPC, _id.M4C3_JPG_WC, 100)
      _util.DelItem(_id.M4C3_JBOT_WC_Active)
    end
    scriptPlay(L1_1)
  end
end
