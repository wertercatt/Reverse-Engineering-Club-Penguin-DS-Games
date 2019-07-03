if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetVar("M6_TlatorBroken") == 1 then
    _util.AddPlayerThought(_text.M6_GADGETROOM_BROKENTRANSLATOR_TOUCH)
  else
    _util.AddPlayerThought(_text.M6_GADGETROOM_TRANSLATOR_TOUCH)
  end
end
