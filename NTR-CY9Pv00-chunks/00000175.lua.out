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
  L2_2 = "iceDumped"
  L1_1 = L1_1(L2_2)
  if L1_1 == 0 then
    L1_1 = _util
    L1_1 = L1_1.SetVar
    L2_2 = "iceDumped"
    L1_1(L2_2, 1)
    function L1_1()
      _util.DisableInput()
      _util.ChangeBaseAnim("MissionObjects/M2/bucket_flip", _id.C2_Bucket)
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_id.C2_Bucket)
      _util.ChangeBaseAnim("MissionObjects/M2/bucket_flipped", _id.C2_Bucket)
      _util.EnableInput(true)
    end
    L2_2 = scriptPlay
    L2_2(L1_1)
  else
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L2_2 = "iceDumped"
    L1_1 = L1_1(L2_2)
    if L1_1 == 1 then
      L1_1 = _util
      L1_1 = L1_1.AddPlayerThought
      L2_2 = _text
      L2_2 = L2_2.C2_BUCKET_ICE
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
  L2_2 = L2_2.Inventory_PuffleYellow
  if L1_1 == L2_2 then
    L2_2 = _util
    L2_2 = L2_2.GetVar
    L2_2 = L2_2("iceDumped")
    if L2_2 == 1 then
      L2_2 = _util
      L2_2 = L2_2.SetVar
      L2_2("iceDumped", 2)
      L2_2 = _util
      L2_2 = L2_2.SetSuccess
      L2_2(_util.GetSelf(), true)
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
  L2_2 = L2_2.Inventory_PuffleYellow
  if L1_1 == L2_2 then
    function L2_2()
      _util.DisableInput()
      _util.ChangeBaseAnim("MissionObjects/M2/bucket_iceBreak", _id.C2_Bucket)
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_id.C2_Bucket)
      _util.ChangeBaseAnim("MissionObjects/M2/bucket_noice", _id.C2_Bucket)
      _util.AddItem(_id.C2_BP_PieceC)
      _util.EnableInput(true)
    end
    scriptPlay(L2_2)
  end
end
