if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.ITEM_DROPPED)
end
if _util.GetVar("Tele2HQ") >= 2 then
  if _util.GetReason() == _const.TOUCHED then
    if _util.GetVar("m11_notepadOpen") == 0 then
      _util.SwitchState("open")
      _util.SetVar("m11_notepadOpen", 1)
      if _util.GetVar("m11_orangeBookSpawned") ~= 1 then
        _util.SetVar("m11_orangeBookSpawned", 1)
        _util.AddItem(10654)
      end
    else
      _util.SwitchState("")
      _util.SetVar("m11_notepadOpen", 0)
    end
    _util.AddPlayerThought(_text.M11_HQ_NOTEPAD_TOUCH)
  end
  if _util.GetReason() == _const.ITEM_DROPPED and _util.GetSource() == _id.Inventory_DecoderSpypod then
    _util.StartMiniGame(_const.DECODER, _text.M11_HQ_NOTEPAD_MESSAGE, 1)
  end
end
