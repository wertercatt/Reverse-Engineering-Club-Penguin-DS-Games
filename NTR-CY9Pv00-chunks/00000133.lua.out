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
if L1_1 == L2_2 and L0_0 == 0 then
  L1_1 = _util
  L1_1 = L1_1.AddPlayerThought
  L2_2 = _text
  L2_2 = L2_2.C3_TM_PUFFLE_BUBBLE
  L1_1(L2_2)
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
  L2_2 = L2_2.Inventory_PuffleBlue
  if L1_1 == L2_2 then
    L2_2 = _util
    L2_2 = L2_2.SetSuccess
    L2_2(_util.GetSelf(), true)
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
  L2_2 = L2_2.Inventory_PuffleBlue
  if L1_1 == L2_2 then
    function L2_2()
      _util.DisableInput()
      _util.ChangeBaseAnim("MissionObjects/M3/pufBubble", _id.C3_PurplePuffleInBalloon, "break")
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_id.C3_PurplePuffleInBalloon)
      _util.ChangeBaseAnim("MissionObjects/M3/pufBubble", _id.C3_PurplePuffleInBalloon, "free")
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_util.GetSelf())
      _util.SetPuffle(_id.Inventory_PufflePurple)
      _util.EnablePuffle(_id.Enable_PufflePurple)
      _util.SetVar("FreePurplePuffle", 1)
      _util.EnableInput(true)
      _util.DelItem(_id.C3_PurplePuffleInBalloon)
      movePuffle(_util.GetX(), _util.GetY(), _util.GetPuffleX(), _util.GetPuffleY(), 30, true, 75)
    end
    scriptPlay(L2_2)
  end
end
