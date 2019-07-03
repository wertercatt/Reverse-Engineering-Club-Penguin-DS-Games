if _util.GetReason() == _const.TOUCHED and _util.GetActiveMission() == 8 and _util.GetVar("FoundAllBPPieces") < 4 then
  _util.AddPlayerThought(_text.C2_SEARCH_CAMP_FOR_CLUES)
end
