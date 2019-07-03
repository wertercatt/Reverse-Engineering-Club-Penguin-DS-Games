local L0_0, L1_1, L2_2
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
L0_0 = L0_0.GetConversationCount
L0_0 = L0_0()
L1_1 = _util
L1_1 = L1_1.GetReason
L1_1 = L1_1()
L2_2 = _const
L2_2 = L2_2.TOUCHED
if L1_1 == L2_2 then
  L1_1 = _util
  L1_1 = L1_1.GetVar
  L2_2 = "windmillfixed"
  L1_1 = L1_1(L2_2)
  if L1_1 == 0 then
    L1_1 = _util
    L1_1 = L1_1.AddPlayerThought
    L2_2 = _text
    L2_2 = L2_2.C3_TM_WINDMILL
    L1_1(L2_2)
  else
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L2_2 = "windmillfixed"
    L1_1 = L1_1(L2_2)
    if L1_1 == 1 then
      L1_1 = _util
      L1_1 = L1_1.AddPlayerThought
      L2_2 = _text
      L2_2 = L2_2.C3_WINDMILL_NEEDWELDING
      L1_1(L2_2)
    end
  end
end
L1_1 = _util
L1_1 = L1_1.GetReason
L1_1 = L1_1()
L2_2 = _const
L2_2 = L2_2.ITEM_DROPPED
if L1_1 == L2_2 then
  L1_1 = _util
  L1_1 = L1_1.GetSource
  L1_1 = L1_1()
  L2_2 = _id
  L2_2 = L2_2.C3_CombinedPropeller
  if L1_1 == L2_2 then
    L2_2 = _util
    L2_2 = L2_2.SetVar
    L2_2("windmillfixed", 1)
    L2_2 = _util
    L2_2 = L2_2.AddItem
    L2_2(_id.C3_FixedPropeller)
    L2_2 = _util
    L2_2 = L2_2.GetVar
    L2_2 = L2_2("RevealedDot")
    if L2_2 == 0 then
      L2_2 = _util
      L2_2 = L2_2.AddPlayerThought
      L2_2(_text.C3_SAVE_DOT_FIRST)
    end
  else
    L2_2 = _id
    L2_2 = L2_2.Inventory_PuffleBlack
    if L1_1 == L2_2 then
      L2_2 = _util
      L2_2 = L2_2.GetVar
      L2_2 = L2_2("windmillfixed")
      if L2_2 == 1 then
        L2_2 = _util
        L2_2 = L2_2.GetVar
        L2_2 = L2_2("RevealedDot")
        if L2_2 == 1 then
          L2_2 = _util
          L2_2 = L2_2.SetSuccess
          L2_2(_util.GetSelf(), true)
          L2_2 = _util
          L2_2 = L2_2.SetVar
          L2_2("windmillfixed", 2)
          L2_2 = _util
          L2_2 = L2_2.MarkSubObjComplete
          L2_2(_text.C3_OBJ4, _text.C3_OBJ5)
        end
      end
    else
      L2_2 = _id
      L2_2 = L2_2.Inventory_PuffleBlack
      if L1_1 == L2_2 then
        L2_2 = _util
        L2_2 = L2_2.GetVar
        L2_2 = L2_2("windmillfixed")
        if L2_2 == 1 then
          L2_2 = _util
          L2_2 = L2_2.AddPlayerThought
          L2_2(_text.C3_SAVE_DOT_FIRST)
        end
      end
    end
  end
end
L1_1 = _util
L1_1 = L1_1.GetReason
L1_1 = L1_1()
L2_2 = _const
L2_2 = L2_2.COLLIDED
if L1_1 == L2_2 then
  L1_1 = _util
  L1_1 = L1_1.GetSource
  L1_1 = L1_1()
  L2_2 = _id
  L2_2 = L2_2.Inventory_PuffleBlack
  if L1_1 == L2_2 then
    function L2_2()
      local L0_3, L1_4
      L0_3 = 0
      repeat
        L0_3 = L0_3 + 1
        L1_4 = scriptWait
        L1_4()
      until L0_3 >= 60
      L1_4 = _util
      L1_4 = L1_4.DelItem
      L1_4(_id.C3_FixedPropeller)
      L1_4 = _util
      L1_4 = L1_4.ChangeBaseAnim
      L1_4("MissionObjects/M3/windmillOn", _id.C3_WindMillStand)
      function L1_4()
        local L0_5, L1_6
        L0_5 = _util
        L0_5 = L0_5.ChangeBaseAnim
        L1_6 = "MissionObjects/M3/cageDoor"
        L0_5(L1_6, _id.C3_DotsCage, "Open")
        repeat
          L0_5 = scriptWait
          L0_5()
          L0_5 = _util
          L0_5 = L0_5.SetCursorPos
          L1_6 = 261
          L0_5(L1_6, 115)
          L0_5 = _util
          L0_5 = L0_5.IsAnimPlaying
          L1_6 = _id
          L1_6 = L1_6.C3_DotsCage
          L0_5 = L0_5(L1_6)
        until not L0_5
        L0_5 = _util
        L0_5 = L0_5.SetCursorPos
        L1_6 = 261
        L0_5(L1_6, 115)
        L0_5 = _util
        L0_5 = L0_5.ChangeBaseAnim
        L1_6 = "NPC/M3/Dot/DotFree"
        L0_5(L1_6, _id.C3_TM_Dot, "rescued")
        L0_5 = _util
        L0_5 = L0_5.ChangeBaseAnim
        L1_6 = "NPC/M3/Puffle/PinkPuffle"
        L0_5(L1_6, _id.C3_PinkPuffle, "rescued")
        L0_5 = _util
        L0_5 = L0_5.DisableInput
        L0_5()
        repeat
          repeat
            L0_5 = scriptWait
            L0_5()
            L0_5 = _util
            L0_5 = L0_5.SetCursorPos
            L1_6 = 261
            L0_5(L1_6, 115)
            L0_5 = _util
            L0_5 = L0_5.IsAnimPlaying
            L1_6 = _id
            L1_6 = L1_6.C3_TM_Dot
            L0_5 = L0_5(L1_6)
          until not L0_5
          L0_5 = _util
          L0_5 = L0_5.IsAnimPlaying
          L1_6 = _id
          L1_6 = L1_6.C3_PinkPuffle
          L0_5 = L0_5(L1_6)
        until not L0_5
        L0_5 = _util
        L0_5 = L0_5.ChangeBaseAnim
        L1_6 = "NPC/M3/Dot/DotFree"
        L0_5(L1_6, _id.C3_TM_Dot)
        L0_5 = _util
        L0_5 = L0_5.ChangeBaseAnim
        L1_6 = "NPC/M3/Puffle/PinkPuffle"
        L0_5(L1_6, _id.C3_PinkPuffle, "happy")
        repeat
          repeat
            L0_5 = scriptWait
            L0_5()
            L0_5 = _util
            L0_5 = L0_5.SetCursorPos
            L1_6 = 261
            L0_5(L1_6, 115)
            L0_5 = _util
            L0_5 = L0_5.IsAnimPlaying
            L1_6 = _id
            L1_6 = L1_6.C3_TM_Dot
            L0_5 = L0_5(L1_6)
          until not L0_5
          L0_5 = _util
          L0_5 = L0_5.IsAnimPlaying
          L1_6 = _id
          L1_6 = L1_6.C3_PinkPuffle
          L0_5 = L0_5(L1_6)
        until not L0_5
        L0_5 = _util
        L0_5 = L0_5.RemoveInventoryItem
        L1_6 = _id
        L1_6 = L1_6.C3_CombinedPropeller
        L0_5(L1_6)
        L0_5 = _util
        L0_5 = L0_5.GetX
        L1_6 = _id
        L1_6 = L1_6.C3_PinkPuffle
        L0_5 = L0_5(L1_6)
        L1_6 = _util
        L1_6 = L1_6.GetY
        L1_6 = L1_6(_id.C3_PinkPuffle)
        _util.DelItem(_id.C3_PinkPuffle)
        _util.SetPuffle(_id.Inventory_PufflePink)
        _util.EnablePuffle(_id.Enable_PufflePink)
        _util.EnableInput(true)
        movePuffle(L0_5, L1_6, _util.GetPuffleX(), _util.GetPuffleY(), 30, true, 75)
        _util.ActivateNpc(_id.C3_TM_Dot, 4)
      end
      scriptPlay(L1_4)
    end
    scriptPlay(L2_2)
  end
end
