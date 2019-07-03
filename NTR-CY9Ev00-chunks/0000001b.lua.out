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
  L0_0 = L0_0("vert2Location")
  if L0_0 > 2 then
    function L0_0()
      local L0_1, L1_2, L2_3, L3_4
      L0_1 = _util
      L0_1 = L0_1.GetVar
      L1_2 = "vert2Location"
      L0_1 = L0_1(L1_2)
      if L0_1 == 5 then
        L0_1 = _util
        L0_1 = L0_1.GetVar
        L1_2 = "hor2Location"
        L0_1 = L0_1(L1_2)
      else
        if not (L0_1 <= 2) then
          L0_1 = _util
          L0_1 = L0_1.DisableInput
          L0_1()
          L0_1 = _util
          L0_1 = L0_1.GetX
          L1_2 = _util
          L1_2 = L1_2.GetSelf
          L3_4 = L1_2()
          L0_1 = L0_1(L1_2, L2_3, L3_4, L1_2())
          L1_2 = _util
          L1_2 = L1_2.GetY
          L2_3 = _util
          L2_3 = L2_3.GetSelf
          L3_4 = L2_3()
          L1_2 = L1_2(L2_3, L3_4, L2_3())
          L1_2 = L1_2 + 20
          L2_3 = _util
          L2_3 = L2_3.GetY
          L3_4 = _id
          L3_4 = L3_4.TroughVert2Top
          L2_3 = L2_3(L3_4)
          L2_3 = L2_3 + 20
          L3_4 = 5
          _util.MoveObject(_id.TroughVert2Top, L0_1, L2_3, L3_4, 1)
          _util.MoveObject(_util.GetSelf(), L0_1, L1_2, L3_4, 1)
          repeat
            scriptWait()
          until _util.GetY(_util.GetSelf()) == L1_2 and _util.GetY(_id.TroughVert2Top) == L2_3
          _util.DecVar("vert2Location")
          _util.EnableInput()
      end
      else
        L0_1 = _util
        L0_1 = L0_1.PlaySFX
        L1_2 = 195
        L0_1(L1_2)
        L0_1 = _util
        L0_1 = L0_1.AddPlayerThought
        L1_2 = _text
        L1_2 = L1_2.M9_MINESHACK_TROUGH_FAIL
        L0_1(L1_2)
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
