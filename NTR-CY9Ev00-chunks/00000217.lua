if _util.GetReason() == _const.TOUCHED and _util.GetExitLocked(_id.Doors_GiftShop2Town) == true and _util.GetActiveMission() == 7 and (_util.GetVar("HaveCornRookie") == 0 or _util.GetVar("FoundCornJPG") == 0) then
  _util.AddPlayerThought(_text.C2_SEARCH_CAMP_FOR_CLUES)
end
