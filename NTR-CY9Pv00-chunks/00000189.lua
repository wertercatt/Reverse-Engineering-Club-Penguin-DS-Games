if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.ITEM_DROPPED)
end
if _util.GetVar("Tele2HQ") ~= 2 then
  if _util.GetReason() == _const.TOUCHED then
    _util.AddMonologue(_text.HQ_CODE_BOARD, "DialogStrings", _const.END_DIALOG, 0)
  end
  if _util.GetReason() == _const.ITEM_DROPPED and _util.GetSource() == _id.Inventory_DecoderSpypod then
    if _util.GetActiveMission() == 2 then
      _util.StartMiniGame(_const.DECODER, _text.DECODER_HINT_M2, 1)
    elseif _util.GetActiveMission() == 3 then
      _util.StartMiniGame(_const.DECODER, _text.DECODER_HINT_M3, 1)
    elseif _util.GetActiveMission() == 4 then
      _util.StartMiniGame(_const.DECODER, _text.DECODER_HINT_M4, 1)
    elseif _util.GetActiveMission() == 5 then
      _util.StartMiniGame(_const.DECODER, _text.DECODER_HINT_M5, 1)
    elseif _util.GetActiveMission() == 6 then
      _util.StartMiniGame(_const.DECODER, _text.DECODER_HINT_M6, 1)
    elseif _util.GetActiveMission() == 7 then
      _util.StartMiniGame(_const.DECODER, _text.DECODER_HINT_M7, 1)
    else
      _util.StartMiniGame(_const.DECODER, _text.GENERIC_DECODER_HQ, 1)
    end
  end
end
