local L0_0, L1_1, L2_2
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.CREATED
if L0_0 == L1_1 then
  L0_0 = _util
  L0_0 = L0_0.AddInterest
  L1_1 = _const
  L1_1 = L1_1.ITEM_DROPPED
  L0_0(L1_1)
end
L0_0 = _util
L0_0 = L0_0.GetConversationCount
L0_0 = L0_0()
L1_1 = _util
L1_1 = L1_1.GetReason
L1_1 = L1_1()
L2_2 = _const
L2_2 = L2_2.TOUCHED
if L1_1 == L2_2 then
  L1_1 = _util
  L1_1 = L1_1.AddPlayerThought
  L2_2 = _text
  L2_2 = L2_2.C4_BLACK_PAINTBUCKET
  L1_1(L2_2)
end
L1_1 = _util
L1_1 = L1_1.GetReason
L1_1 = L1_1()
L2_2 = _const
L2_2 = L2_2.ITEM_DROPPED
if L1_1 == L2_2 then
  L1_1 = _util
  L1_1 = L1_1.GetSource
  L1_1 = L1_1()
  L2_2 = _id
  L2_2 = L2_2.C4_InventoryItem_WhiteBeard
  if L1_1 == L2_2 then
    L2_2 = _util
    L2_2 = L2_2.StartMiniGame
    L2_2(_const.MECHANO_DUSTER, _const.MECHANO_BEARD)
    function L2_2()
      repeat
        scriptWait()
      until _util.GetGameState() ~= _const.MISSION
      repeat
        scriptWait()
      until _util.GetGameState() == _const.MISSION
      if _util.GetMinigameOutput1() == 1 then
        _util.RemoveInventoryItem(_id.C4_InventoryItem_WhiteBeard)
        _util.AddInventoryItem(_id.C4_InventoryItem_BlackBeard)
        _util.SetVar("M10_HaveBeard", 1)
        _util.MarkSubObjComplete(_text.C4_OBJ3, _text.C4_3SUBOBJ3)
      end
    end
    scriptPlay(L2_2)
  end
end
