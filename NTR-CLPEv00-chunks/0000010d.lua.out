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
  L1_1 = "M3C3_LogsDestroyed"
  L0_0 = L0_0(L1_1)
  if L0_0 == 0 then
    L0_0 = _util
    L0_0 = L0_0.AddMonologue
    L1_1 = 1994
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
  L1_1 = L1_1("M3C3_LogsDestroyed")
  if L1_1 == 0 then
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("M3C3_BoulderDestroyed")
    if L1_1 == 1 then
      L1_1 = _id
      L1_1 = L1_1.Inventory_PuffleRed
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
          L1_1(1995)
        else
          L1_1 = _id
          L1_1 = L1_1.Inventory_PuffleYellow
          if L0_0 == L1_1 then
            L1_1 = _util
            L1_1 = L1_1.AddMonologue
            L1_1(1996)
          else
            L1_1 = _id
            L1_1 = L1_1.Inventory_PuffleGreen
            if L0_0 == L1_1 then
              L1_1 = _util
              L1_1 = L1_1.AddMonologue
              L1_1(2000)
            else
              L1_1 = _id
              L1_1 = L1_1.Inventory_PuffleBlue
              if L0_0 == L1_1 then
                L1_1 = _util
                L1_1 = L1_1.AddMonologue
                L1_1(1998)
              else
                L1_1 = _id
                L1_1 = L1_1.Inventory_PufflePurple
                if L0_0 == L1_1 then
                  L1_1 = _util
                  L1_1 = L1_1.AddMonologue
                  L1_1(1999)
                else
                  L1_1 = _id
                  L1_1 = L1_1.Inventory_PufflePink
                  if L0_0 == L1_1 then
                    L1_1 = _util
                    L1_1 = L1_1.AddMonologue
                    L1_1(1997)
                  end
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
  L1_1 = L1_1.Inventory_PuffleRed
  if L0_0 == L1_1 then
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("M3C3_hit")
    if L1_1 == 0 then
      L1_1 = _util
      L1_1 = L1_1.SetVar
      L1_1("M3C3_hit", 1)
      function L1_1()
        _util.DisableInput()
        _util.PlaySFX(14)
        _util.SwitchState("break", _util.GetSelf())
        repeat
          scriptWait()
        until not _util.IsAnimPlaying(_util.GetSelf())
        _util.SetVar("M3C3_LogsDestroyed", 1)
        _util.EnableSpyPodFunc(_const.FLAG_SNOWCAT)
        _util.DelItem(_id.M3C3_Logs)
        _util.SetExitLocked(_id.Doors_CaveIntDoor2WildCave, false)
        _util.EnableInput()
        _util.AddMonologue(2001)
      end
      scriptPlay(L1_1)
    end
  end
end
