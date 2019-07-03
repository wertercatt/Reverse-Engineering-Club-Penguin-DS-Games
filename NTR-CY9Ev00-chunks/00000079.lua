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
  L1_1 = L1_1.AddPlayerThought
  L2_2 = _text
  L2_2 = L2_2.C3_TM_BOULDER
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
  L2_2 = L2_2.Inventory_PufflePurple
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
  L2_2 = L2_2.Inventory_PufflePurple
  if L1_1 == L2_2 then
    L2_2 = _util
    L2_2 = L2_2.GetVar
    L2_2 = L2_2("FreePurplePuffle")
    if L2_2 == 1 then
      L2_2 = _util
      L2_2 = L2_2.GetVar
      L2_2 = L2_2("UseScissors")
      if L2_2 >= 1 then
        L2_2 = _util
        L2_2 = L2_2.GetVar
        L2_2 = L2_2("MoveBoulder", 1)
        if L2_2 then
          function L2_2()
            _util.DisableInput()
            _util.ChangeBaseAnim("MissionObjects/M3/rockDebrisClear", _id.C3_Boulder)
            _util.MarkSubObjComplete(_text.C3_OBJ4, _text.C3_4SUBOBJ4)
            if _util.GetVar("SavedJPG", 1) then
            end
            repeat
              scriptWait()
            until not _util.IsAnimPlaying(_id.C3_Boulder)
            _util.AddItem(_id.C3_BoulderRaised)
            _util.SetExitLocked(_id.TallestMtDoorToRookie, false)
            _util.EnableInput(true)
            _util.DelItem(_id.C3_Boulder)
          end
          scriptPlay(L2_2)
        end
      end
    end
  end
end
