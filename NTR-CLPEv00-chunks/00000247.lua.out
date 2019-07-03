local L0_0, L1_1
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
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.TOUCHED
if L0_0 == L1_1 then
  L0_0 = _util
  L0_0 = L0_0.GetVar
  L1_1 = "M3C3_BoulderDestroyed"
  L0_0 = L0_0(L1_1)
  if L0_0 == 0 then
    L0_0 = _util
    L0_0 = L0_0.AddMonologue
    L1_1 = 2002
    L0_0(L1_1)
  end
end
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.ITEM_DROPPED
if L0_0 == L1_1 then
  L0_0 = _util
  L0_0 = L0_0.GetSource
  L0_0 = L0_0()
  L1_1 = _util
  L1_1 = L1_1.GetVar
  L1_1 = L1_1("M3C3_BoulderDestroyed")
  if L1_1 == 0 then
    L1_1 = _id
    L1_1 = L1_1.Inventory_PufflePurple
    if L0_0 == L1_1 then
      L1_1 = _util
      L1_1 = L1_1.SetSuccess
      L1_1(_util.GetSelf(), true)
      L1_1 = _util
      L1_1 = L1_1.SetVar
      L1_1("M3C3_hit", 0)
    else
      L1_1 = _id
      L1_1 = L1_1.Inventory_PuffleBlack
      if L0_0 == L1_1 then
        L1_1 = _util
        L1_1 = L1_1.AddMonologue
        L1_1(2003)
      else
        L1_1 = _id
        L1_1 = L1_1.Inventory_PuffleYellow
        if L0_0 == L1_1 then
          L1_1 = _util
          L1_1 = L1_1.AddMonologue
          L1_1(2004)
        else
          L1_1 = _id
          L1_1 = L1_1.Inventory_PuffleGreen
          if L0_0 == L1_1 then
            L1_1 = _util
            L1_1 = L1_1.AddMonologue
            L1_1(2008)
          else
            L1_1 = _id
            L1_1 = L1_1.Inventory_PuffleBlue
            if L0_0 == L1_1 then
              L1_1 = _util
              L1_1 = L1_1.AddMonologue
              L1_1(2006)
            else
              L1_1 = _id
              L1_1 = L1_1.Inventory_PuffleRed
              if L0_0 == L1_1 then
                L1_1 = _util
                L1_1 = L1_1.AddMonologue
                L1_1(2007)
              else
                L1_1 = _id
                L1_1 = L1_1.Inventory_PufflePink
                if L0_0 == L1_1 then
                  L1_1 = _util
                  L1_1 = L1_1.AddMonologue
                  L1_1(2005)
                end
              end
            end
          end
        end
      end
    end
  end
end
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.COLLIDED
if L0_0 == L1_1 then
  L0_0 = _util
  L0_0 = L0_0.GetSource
  L0_0 = L0_0()
  L1_1 = _id
  L1_1 = L1_1.Inventory_PufflePurple
  if L0_0 == L1_1 then
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("M3C3_hit")
    if L1_1 == 0 then
      L1_1 = _util
      L1_1 = L1_1.SetVar
      L1_1("M3C3_hit", 1)
      function L1_1()
        local L0_2, L1_3, L2_4
        L0_2 = _util
        L0_2 = L0_2.DisableInput
        L0_2()
        L0_2 = _util
        L0_2 = L0_2.PlaySFX
        L1_3 = 84
        L0_2(L1_3)
        L0_2 = _util
        L0_2 = L0_2.SwitchState
        L1_3 = "bubble"
        L2_4 = _util
        L2_4 = L2_4.GetSelf
        L2_4 = L2_4()
        L0_2(L1_3, L2_4, L2_4())
        L0_2 = 90
        L1_3 = 90
        L2_4 = _util
        L2_4 = L2_4.GetY
        L2_4 = L2_4(_util.GetSelf())
        L2_4 = L2_4 - L0_2
        _util.MoveObject(_util.GetSelf(), _util.GetX(_util.GetSelf()), L2_4, L1_3)
        repeat
          scriptWait()
        until _util.GetY(_util.GetSelf()) == L2_4
        _util.SetVar("M3C3_BoulderDestroyed", 1)
        _util.DelItem(_id.M3C3_Boulder)
        _util.AddItem(_id.M3C3_Boulder2)
        _util.EnableInput()
        _util.AddMonologue(2009)
      end
      scriptPlay(L1_1)
    end
  end
end
