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
  L1_1 = "puffleHappy"
  L0_0 = L0_0(L1_1)
  if L0_0 == 0 then
    L0_0 = _util
    L0_0 = L0_0.AddMonologue
    L1_1 = 1093
    L0_0(L1_1)
  else
    L0_0 = _util
    L0_0 = L0_0.GetVar
    L1_1 = "puffleHappy"
    L0_0 = L0_0(L1_1)
    if L0_0 == 1 then
      L0_0 = _util
      L0_0 = L0_0.ActivateNpc
      L1_1 = _id
      L1_1 = L1_1.M2C2_PuffleHandler
      L0_0(L1_1, 4)
    end
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
  L1_1 = _id
  L1_1 = L1_1.Inventory_PuffleBlack
  if L0_0 == L1_1 then
    L1_1 = _util
    L1_1 = L1_1.SetSuccess
    L1_1(_util.GetSelf(), true)
    L1_1 = _util
    L1_1 = L1_1.SetVar
    L1_1("M2C2_hit", 0)
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
  L1_1 = L1_1.Inventory_PuffleBlack
  if L0_0 == L1_1 then
    function L1_1()
      local L0_2
      L0_2 = 0
      repeat
        scriptWait()
        L0_2 = L0_2 + 1
      until L0_2 == 35
      _util.PlaySFX(91)
      _util.SetVar("keyWelded", 1)
      _util.AddItem(_id.Inventory_KeyWelded)
      _util.DelItem(_id.Inventory_KeyBroken)
      _util.SetObjective(798)
      _util.AddMonologue(1065)
    end
    if _util.GetVar("M2C2_hit") == 0 then
      _util.SetVar("M2C2_hit", 1)
      scriptPlay(L1_1)
    end
  end
end
