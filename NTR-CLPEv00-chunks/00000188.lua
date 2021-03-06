if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.TOUCHED)
  _util.AddInterest(_const.ITEM_DROPPED)
end
if _util.GetActiveMission() == 1 and _util.GetActiveChapter() == 2 then
  if _util.GetReason() == _const.TOUCHED then
    if _util.GetVar("M1C2_spyPodCombined") == 0 then
      _util.AddMonologue(422)
    elseif _util.GetVar("M1C2_spyPodCombined") == 1 then
      _util.AddMonologue(423)
    end
  end
  if _util.GetReason() == _const.ITEM_DROPPED then
    if _util.GetSource() == _id.Inventory_PuffleRed then
      _util.AddMonologue(425)
    elseif _util.GetSource() == _id.Inventory_PuffleBlue then
      _util.AddMonologue(424)
    elseif _util.GetSource() == _id.M1C2_DecoderGadget then
      _util.AddMonologue(427)
    elseif _util.GetSource() == _id.M1C2_Antenna then
      _util.AddMonologue(426)
    elseif _util.GetSource() == _id.Inventory_DecoderSpypod then
      _util.AddMonologue(428)
    end
  end
end
if _util.GetActiveMission() == 1 and _util.GetActiveChapter() == 3 and _util.GetReason() == _const.TOUCHED then
  _util.AddMonologue(721)
end
if _util.GetActiveMission() == 2 and _util.GetActiveChapter() == 1 and _util.GetReason() == _const.TOUCHED then
  if _util.GetVar("M2C1_DotIntroComplete") == 0 then
    _util.AddMonologue(783)
  elseif _util.GetVar("M2C1_JetPackGuyIntroComplete") == 0 then
    _util.AddMonologue(784)
  elseif _util.GetVar("M2C1_dossierFound") == 0 then
    _util.AddMonologue(785)
  end
end
