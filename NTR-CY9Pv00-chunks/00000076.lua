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
  function L1_1()
    if _util.IsCommandCoachActive() or _util.HasSnakePiece(_id.SNAKE_PIECE_5) == false then
      _util.DisplayPopUp(_text.M8_ITEM_SNAKEPIECE, "UI/Zoom/snakeGadget")
      _util.UnlockSnakePiece(_id.SNAKE_PIECE_5)
      _util.DelItem(_util.GetSelf())
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
  scriptPlay(L1_1)
end
