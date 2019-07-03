local L0_0
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
if L0_0 == _const.CREATED then
end
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
if L0_0 == _const.TOUCHED then
  L0_0 = _util
  L0_0 = L0_0.GetVar
  L0_0 = L0_0("vert3Location")
  if L0_0 <= 3 then
    function L0_0()
      local L0_1, L1_2, L2_3, L3_4, L4_5
      L0_1 = _util
      L0_1 = L0_1.GetVar
      L1_2 = "vert3Location"
      L0_1 = L0_1(L1_2)
      L0_1 = L0_1 == 2 and L0_1 <= 1
      if not L0_1 then
        L1_2 = _util
        L1_2 = L1_2.DisableInput
        L1_2()
        L1_2 = _util
        L1_2 = L1_2.GetX
        L2_3 = _util
        L2_3 = L2_3.GetSelf
        L4_5 = L2_3()
        L1_2 = L1_2(L2_3, L3_4, L4_5, L2_3())
        L2_3 = _util
        L2_3 = L2_3.GetY
        L3_4 = _util
        L3_4 = L3_4.GetSelf
        L4_5 = L3_4()
        L2_3 = L2_3(L3_4, L4_5, L3_4())
        L2_3 = L2_3 - 20
        L3_4 = _util
        L3_4 = L3_4.GetY
        L4_5 = _id
        L4_5 = L4_5.TroughVert3Bot
        L3_4 = L3_4(L4_5)
        L3_4 = L3_4 - 20
        L4_5 = 5
        _util.MoveObject(_util.GetSelf(), L1_2, L2_3, L4_5, 1)
        _util.MoveObject(_id.TroughVert3Bot, L1_2, L3_4, L4_5, 1)
        repeat
          scriptWait()
        until _util.GetY(_util.GetSelf()) == L2_3 and _util.GetY(_id.TroughVert3Bot) == L3_4
        _util.IncVar("vert3Location")
        _util.EnableInput()
      else
        L1_2 = _util
        L1_2 = L1_2.PlaySFX
        L2_3 = 195
        L1_2(L2_3)
        L1_2 = _util
        L1_2 = L1_2.AddPlayerThought
        L2_3 = _text
        L2_3 = L2_3.M9_MINESHACK_TROUGH_FAIL
        L1_2(L2_3)
      end
    end
    scriptPlay(L0_0)
  else
    L0_0 = _util
    L0_0 = L0_0.PlaySFX
    L0_0(195)
    L0_0 = _util
    L0_0 = L0_0.AddPlayerThought
    L0_0(_text.M9_MINESHACK_TROUGH_FAIL)
  end
end
