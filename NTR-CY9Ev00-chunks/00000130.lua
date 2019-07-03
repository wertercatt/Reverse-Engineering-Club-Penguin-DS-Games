local L0_0
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
if L0_0 == _const.CREATED then
end
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
if L0_0 == _const.TOUCHED then
  function L0_0()
    if _util.IsCommandCoachActive() or _util.HasSnakePiece(_id.SNAKE_PIECE_2) == false then
      _util.DisplayPopUp(_text.M8_ITEM_SNAKEPIECE, "UI/Zoom/snakeGadget")
      _util.UnlockSnakePiece(_id.SNAKE_PIECE_2)
      _util.DelItem(_id.M6_SnakePiece)
      _util.DisableInput()
      repeat
        scriptWait()
      until 120 - 1 == 0
      startCorrectSnakePieceCutscene()
      repeat
        scriptWait()
      until _util.GetGameState() ~= _const.MISSION
      repeat
        scriptWait()
      until _util.GetGameState() == _const.MISSION
      _util.EnableInput()
    else
      _util.DisplayPopUp(_text.M8_ITEM_SNAKEPIECE, "UI/Zoom/snakeGadget")
      _util.DelItem(_util.GetSelf())
      _util.AddPlayerThought(_text.ALREADY_HAVE_SNAKE)
      repeat
        scriptWait()
      until _util.GetGameState() ~= _const.MISSION
      repeat
        scriptWait()
      until _util.GetGameState() == _const.MISSION
    end
  end
  scriptPlay(L0_0)
end
