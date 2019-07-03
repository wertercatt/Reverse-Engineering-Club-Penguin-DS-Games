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
  L0_0 = L0_0("vert1Location")
  if L0_0 > 0 then
    function L0_0()
      local L0_1, L1_2, L2_3
      L0_1 = _util
      L0_1 = L0_1.GetVar
      L1_2 = "vert1Location"
      L0_1 = L0_1(L1_2)
      if L0_1 == 3 then
        L0_1 = _util
        L0_1 = L0_1.GetVar
        L1_2 = "hor1Location"
        L0_1 = L0_1(L1_2)
      else
        if not (L0_1 <= 2) then
          L0_1 = _util
          L0_1 = L0_1.GetVar
          L1_2 = "vert1Location"
          L0_1 = L0_1(L1_2)
          if L0_1 == 2 then
            L0_1 = _util
            L0_1 = L0_1.GetVar
            L1_2 = "hor2Location"
            L0_1 = L0_1(L1_2)
          elseif not (L0_1 <= 2) then
            L0_1 = _util
            L0_1 = L0_1.GetVar
            L1_2 = "vert1Location"
            L0_1 = L0_1(L1_2)
          end
      end
      else
        if L0_1 == 1 then
          L0_1 = _util
          L0_1 = L0_1.DisableInput
          L0_1()
          L0_1 = _util
          L0_1 = L0_1.GetX
          L1_2 = _util
          L1_2 = L1_2.GetSelf
          L2_3 = L1_2()
          L0_1 = L0_1(L1_2, L2_3, L1_2())
          L1_2 = _util
          L1_2 = L1_2.GetY
          L2_3 = _util
          L2_3 = L2_3.GetSelf
          L2_3 = L2_3()
          L1_2 = L1_2(L2_3, L2_3())
          L1_2 = L1_2 + 27
          L2_3 = 5
          _util.MoveObject(_util.GetSelf(), L0_1, L1_2, L2_3, 1)
          _util.MoveObject(_id.TroughVert1Top, L0_1, L1_2, L2_3, 1)
          repeat
            scriptWait()
          until _util.GetY(_util.GetSelf()) == L1_2 and _util.GetY(_id.TroughVert1Top) == L1_2
          _util.DecVar("vert1Location")
          _util.EnableInput()
          if _util.GetVar("vert1Location") == 0 and _util.GetVar("vert2Location") == 5 then
            _util.DisableInput()
            repeat
              scriptWait()
            until 0 + 1 >= 30
            _util.SwitchState("flip", _id.Trough_Trough)
            repeat
              scriptWait()
            until not _util.IsAnimPlaying(_id.Trough_Trough)
            _util.SetVar("M9_canFixMine", 2)
            _util.SetSpawn(1, _id.M9_TroughDown)
            _util.SetSpawn(0, _id.M9_TroughUp)
            _util.EnableInput()
            _util.ChangeRoom(86)
          end
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
