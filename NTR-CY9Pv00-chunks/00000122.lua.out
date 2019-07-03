local L0_0, L1_1
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.CREATED
if L0_0 == L1_1 then
end
L0_0 = _util
L0_0 = L0_0.GetConversationCount
L0_0 = L0_0()
L1_1 = _util
L1_1 = L1_1.GetReason
L1_1 = L1_1()
if L1_1 == _const.TOUCHED then
  if L0_0 == 0 then
    L1_1 = _util
    L1_1 = L1_1.ActivateNpc
    L1_1(_id.C3_CR_Director, 1)
  elseif L0_0 == 1 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.C3_CR_DIRECTOR_1, _const.CHANGE_NPC, _id.C3_CR_Gary, 14)
  elseif L0_0 == 2 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.C3_CR_DIRECTOR_2, _const.CHANGE_DIALOG, -1, 3)
  elseif L0_0 == 3 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.C3_CR_DIRECTOR_3)
    L1_1 = _util
    L1_1 = L1_1.AddPlayerOption
    L1_1(_text.C3_CR_DIRECTOR_3A, _const.CHANGE_NPC, _id.C3_CR_Dot, 2)
    L1_1 = _util
    L1_1 = L1_1.AddPlayerOption
    L1_1(_text.C3_CR_DIRECTOR_3B, _const.CHANGE_DIALOG, -1, 1)
  elseif L0_0 == 4 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.C3_CR_DIRECTOR_4, _const.CHANGE_DIALOG, -1, 5)
  elseif L0_0 == 5 then
    function L1_1()
      _util.DisableInput()
      _util.PushCamera(_id.C3_CR_Dot)
      _util.AddItem(_id.C3_CR_DotEffect)
      _util.ChangeBaseAnim("NPC/M3/Dot/DotTeleport", _id.C3_CR_Dot)
      _util.ChangeBaseAnim("NPC/M3/Dot/effect", _id.C3_CR_DotEffect)
      _util.ChangeBaseAnim("NPC/M3/Puffle/commandRoom/pink", _id.C3_CR_PinkPuffle, "jump")
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_id.C3_CR_Dot) and not _util.IsAnimPlaying(_id.C3_CR_DotEffect) and not _util.IsAnimPlaying(_id.C3_CR_PinkPuffle)
      _util.PopCamera(_id.C3_CR_Dot)
      _util.DelItem(_id.C3_CR_Dot)
      _util.DelItem(_id.C3_CR_DotEffect)
      _util.DelItem(_id.C3_CR_PinkPuffle)
      _util.DelItem(_id.C3_CR_Rookie)
      _util.DelItem(_id.C3_CR_JPG)
      _util.DelItem(_id.C3_CR_YellowPuffle)
      _util.DelItem(_id.C3_CR_PurplePuffle)
      _util.DelItem(_id.C3_CR_BlackNBluePuffle)
      _util.ActivateNpc(_id.C3_CR_Gary, 15)
    end
    scriptPlay(L1_1)
  elseif L0_0 == 6 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.C3_CR_DIRECTOR_5, _const.CHANGE_NPC, _id.C3_CR_Gary, 16)
  elseif L0_0 == 7 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.C3_CR_GARY_16, _const.END_DIALOG, -1, 7)
  elseif L0_0 == 8 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.C3_CR_DIRECTOR_6)
    L1_1 = _util
    L1_1 = L1_1.AddPlayerOption
    L1_1(_text.C3_CR_DIRECTOR_6A, _const.CHANGE_NPC, _id.C3_CR_Gary, 18)
    L1_1 = _util
    L1_1 = L1_1.AddPlayerOption
    L1_1(_text.C3_CR_DIRECTOR_6B, _const.CHANGE_NPC, _id.C3_CR_Gary, 18)
  elseif L0_0 == 9 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.C3_CR_DIRECTOR_7, _const.CHANGE_DIALOG, -1, 10)
    L1_1 = _util
    L1_1 = L1_1.MarkObjComplete
    L1_1(_text.C3_OBJ1)
    L1_1 = _util
    L1_1 = L1_1.AddObjective
    L1_1(_text.C3_OBJ4)
    L1_1 = _util
    L1_1 = L1_1.AddSubObjective
    L1_1(_text.C3_OBJ4, _text.C3_4SUBOBJ1)
  elseif L0_0 == 10 then
    L1_1 = _util
    L1_1 = L1_1.SetExitLocked
    L1_1(_id.CommandRoomToLobby, false)
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.C3_CR_DIRECTOR_8, _const.END_DIALOG, -1, 10)
  end
end
