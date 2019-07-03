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
  L0_0 = L0_0.GetConversationCount
  L0_0 = L0_0()
  if L0_0 == 0 then
    L1_1 = _util
    L1_1 = L1_1.AddMonologue
    L1_1(1154)
    L1_1 = _util
    L1_1 = L1_1.SetConversationCount
    L1_1(1)
  elseif L0_0 == 1 then
    L1_1 = _util
    L1_1 = L1_1.AddMonologue
    L1_1(1155)
    L1_1 = _util
    L1_1 = L1_1.SetConversationCount
    L1_1(0)
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
  L1_1 = L1_1.Inventory_PuffleRed
  if L0_0 == L1_1 then
    L1_1 = _util
    L1_1 = L1_1.SetSuccess
    L1_1(_util.GetSelf(), true)
    L1_1 = _util
    L1_1 = L1_1.SetVar
    L1_1("M2C3_hit", 0)
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
    function L1_1()
      _util.DisableInput()
      _util.PlaySFX(115)
      _util.SwitchState("off")
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_id.Object_Boulder)
      _util.AddItem(_id.Object_Geyser)
      _util.DelItem(_id.Object_Boulder)
      _util.EnableInput()
      _util.AddMonologue(1156)
    end
    if _util.GetVar("M2C3_hit") == 0 then
      _util.SetVar("M2C3_hit", 1)
      scriptPlay(L1_1)
    end
  end
end
