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
  L0_0 = L0_0.AddMonologue
  L1_1 = 1694
  L0_0(L1_1, "DialogStrings", _const.END_DIALOG, 0)
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
    L1_1 = L1_1.AddMonologue
    L1_1(1695, "DialogStrings", _const.END_DIALOG, 0)
  else
    L1_1 = _id
    L1_1 = L1_1.Inventory_PuffleBlack
    if L0_0 == L1_1 then
      L1_1 = _util
      L1_1 = L1_1.AddMonologue
      L1_1(1696, "DialogStrings", _const.END_DIALOG, 0)
    else
      L1_1 = _id
      L1_1 = L1_1.Inventory_PuffleYellow
      if L0_0 == L1_1 then
        L1_1 = _util
        L1_1 = L1_1.SetVar
        L1_1("iceblock_hit", 0)
        L1_1 = _util
        L1_1 = L1_1.SetSuccess
        L1_1(_util.GetSelf(), true)
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
  L1_1 = L1_1.Inventory_PuffleYellow
  if L0_0 == L1_1 then
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("iceblock_hit")
    if L1_1 == 0 then
      L1_1 = _util
      L1_1 = L1_1.SetVar
      L1_1("iceblock_hit", 1)
      L1_1 = _util
      L1_1 = L1_1.GetVar
      L1_1 = L1_1("M3C2_iceBreaking")
      if L1_1 == 0 then
        function L1_1()
          _util.DisableInput()
          _util.PushCamera(_id.M3C2_JetpackMtn)
          _util.PlaySFX(174)
          _util.SwitchState("disable", _id.M3C2_JetpackMtn)
          _util.SwitchState("crack", _id.M3C2_Iceblock)
          repeat
            scriptWait()
          until not _util.IsAnimPlaying(_id.M3C2_JetpackMtn) and not _util.IsAnimPlaying(_id.M3C2_Iceblock)
          _util.AddItem(_id.M3C2_JetpackNoTap)
          _util.DelItem(_id.M3C2_JetpackMtn)
          _util.AddItem(_id.M3C2_IceblockCrack)
          _util.DelItem(_id.M3C2_Iceblock)
          _util.EnableInput()
          _util.SetVar("M3C2_iceBreaking", 1)
          _util.PopCamera(_id.M3C2_JetpackMtn)
          _util.AddMonologue(1697, "DialogStrings", _const.CHANGE_NPC, _id.M3C2_YodelingPH_TallestM, 200)
        end
        scriptPlay(L1_1)
      else
        L1_1 = _util
        L1_1 = L1_1.GetVar
        L1_1 = L1_1("M3C2_iceBreaking")
        if L1_1 == 1 then
          function L1_1()
            _util.DisableInput()
            _util.PlaySFX(174)
            _util.SwitchState("shatter", _id.M3C2_IceblockCrack)
            repeat
              scriptWait()
            until not _util.IsAnimPlaying(_id.M3C2_IceblockCrack)
            _util.AddItem(_id.M3C2_PHHat)
            _util.EnableInput()
            _util.ActivateNpc(_id.M3C2_YodelingPH_TallestM, 110)
            _util.DelItem(_id.M3C2_IceblockCrack)
          end
          _util.IncVar("M3C2_iceBreaking")
          _util.SetVar("M3C2_ice", 1)
          scriptPlay(L1_1)
        end
      end
    end
  end
end
