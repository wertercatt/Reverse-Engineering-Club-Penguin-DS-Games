if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.TOUCHED)
  _util.AddInterest(_const.ITEM_DROPPED)
end
if _util.GetActiveMission() == 1 and _util.GetActiveChapter() == 2 then
  if _util.GetReason() == _const.TOUCHED then
    if _util.GetVar("M1C2_spyPodCombined") == 0 then
      _util.AddMonologue(410)
    elseif _util.GetVar("M1C2_spyPodCombined") == 1 then
      _util.AddMonologue(411)
    end
  end
  if _util.GetReason() == _const.ITEM_DROPPED then
    if _util.GetSource() == _id.Inventory_PuffleRed then
      _util.AddMonologue(413)
    elseif _util.GetSource() == _id.Inventory_PuffleBlue then
      _util.AddMonologue(412)
    elseif _util.GetSource() == _id.M1C2_DecoderGadget then
      _util.AddMonologue(415)
    elseif _util.GetSource() == _id.M1C2_Antenna then
      _util.AddMonologue(414)
    elseif _util.GetSource() == _id.Inventory_DecoderSpypod then
      _util.AddMonologue(416)
    end
  end
end
if _util.GetActiveMission() == 1 and _util.GetActiveChapter() == 3 and _util.GetReason() == _const.TOUCHED then
  _util.AddMonologue(706)
end
if _util.GetActiveMission() == 2 and _util.GetActiveChapter() == 1 and _util.GetReason() == _const.TOUCHED then
  if _util.GetVar("M2C1_DotIntroComplete") == 0 then
    _util.AddMonologue(765)
  elseif _util.GetVar("M2C1_JetPackGuyIntroComplete") == 0 then
    _util.AddMonologue(766)
  elseif _util.GetVar("M2C1_dossierFound") == 0 then
    _util.AddMonologue(767)
  end
end
