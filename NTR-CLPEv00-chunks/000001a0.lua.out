local L0_0, L1_1
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
  L0_0 = _util
  L0_0 = L0_0.AddInterest
  L1_1 = _const
  L1_1 = L1_1.COLLIDED
  L0_0(L1_1)
end
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.TOUCHED
if L0_0 == L1_1 then
  L0_0 = _util
  L0_0 = L0_0.GetConversationCount
  L0_0 = L0_0()
  L1_1 = _util
  L1_1 = L1_1.GetVar
  L1_1 = L1_1("robostatus")
  if L1_1 == 5 then
    if L0_0 == 0 then
      L1_1 = _util
      L1_1 = L1_1.AddDialog
      L1_1(3411, _const.CHANGE_NPC, _id.M5C1_SuperRobot_TM1, 10)
      L1_1 = _util
      L1_1 = L1_1.SetConversationCount
      L1_1(0)
    elseif L0_0 == 100 then
      L1_1 = _util
      L1_1 = L1_1.AddDialog
      L1_1(3402, _const.CHANGE_NPC, _id.M5C1_SuperRobot_TM1, 101)
      L1_1 = _util
      L1_1 = L1_1.SetConversationCount
      L1_1(0)
    end
  else
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("robostatus")
    if L1_1 == 6 then
      if L0_0 == 0 then
        L1_1 = _util
        L1_1 = L1_1.AddDialog
        L1_1(3461, _const.END_DIALOG, 0)
      end
    else
      L1_1 = _util
      L1_1 = L1_1.GetVar
      L1_1 = L1_1("robostatus")
      if L1_1 == 7 then
        if L0_0 == 0 then
          L1_1 = _util
          L1_1 = L1_1.AddDialog
          L1_1(3479, _const.END_DIALOG, 0)
        elseif L0_0 == 203 then
          L1_1 = _util
          L1_1 = L1_1.AddMonologue
          L1_1(3493, "DialogStrings", _const.END_DIALOG, 0)
        elseif L0_0 == 204 then
          L1_1 = _util
          L1_1 = L1_1.AddMonologue
          L1_1(3486, "DialogStrings", _const.END_DIALOG, 0)
        end
      else
        L1_1 = _util
        L1_1 = L1_1.GetVar
        L1_1 = L1_1("robostatus")
        if L1_1 == 8 and L0_0 == 0 then
          L1_1 = _util
          L1_1 = L1_1.AddDialog
          L1_1(3500, _const.END_DIALOG, 0)
        end
      end
    end
  end
end
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.ITEM_DROPPED
if L0_0 == L1_1 then
  L0_0 = _util
  L0_0 = L0_0.GetSource
  L0_0 = L0_0()
  L1_1 = _util
  L1_1 = L1_1.SetVar
  L1_1("garyCollided", 0)
  L1_1 = _util
  L1_1 = L1_1.GetVar
  L1_1 = L1_1("robostatus")
  if L1_1 == 7 then
    L1_1 = _id
    L1_1 = L1_1.Inventory_PufflePink
    if L0_0 == L1_1 then
      L1_1 = _util
      L1_1 = L1_1.AddMonologue
      L1_1(3484)
    else
      L1_1 = _id
      L1_1 = L1_1.Inventory_PuffleGreen
      if L0_0 == L1_1 then
        L1_1 = _util
        L1_1 = L1_1.SetSuccess
        L1_1(_util.GetSelf(), true)
      else
        L1_1 = _id
        L1_1 = L1_1.Inventory_PuffleRed
        if L0_0 == L1_1 then
          L1_1 = _util
          L1_1 = L1_1.AddMonologue
          L1_1(3489)
        else
          L1_1 = _id
          L1_1 = L1_1.Inventory_PuffleBlue
          if L0_0 == L1_1 then
            L1_1 = _util
            L1_1 = L1_1.AddMonologue
            L1_1(3491)
          else
            L1_1 = _id
            L1_1 = L1_1.Inventory_PuffleBlack
            if L0_0 == L1_1 then
              L1_1 = _util
              L1_1 = L1_1.AddMonologue
              L1_1(3490)
            else
              L1_1 = _id
              L1_1 = L1_1.Inventory_MechanoDuster
              if L0_0 == L1_1 then
                L1_1 = _util
                L1_1 = L1_1.AddMonologue
                L1_1(3488)
              else
                L1_1 = _id
                L1_1 = L1_1.Inventory_PuffleYellow
                if L0_0 == L1_1 then
                  L1_1 = _util
                  L1_1 = L1_1.SetSuccess
                  L1_1(_util.GetSelf(), true)
                else
                  L1_1 = _id
                  L1_1 = L1_1.Inventory_PufflePurple
                  if L0_0 == L1_1 then
                    L1_1 = _util
                    L1_1 = L1_1.SetSuccess
                    L1_1(_util.GetSelf(), true)
                  end
                end
              end
            end
          end
        end
      end
    end
  else
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("robostatus")
    if L1_1 == 8 then
      L1_1 = _util
      L1_1 = L1_1.AddDialog
      L1_1(3500, _const.END_DIALOG, 0)
    end
  end
end
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.COLLIDED
if L0_0 == L1_1 then
  L0_0 = _util
  L0_0 = L0_0.GetSource
  L0_0 = L0_0()
  L1_1 = _util
  L1_1 = L1_1.GetVar
  L1_1 = L1_1("garyCollided")
  if L1_1 == 0 then
    L1_1 = _util
    L1_1 = L1_1.SetVar
    L1_1("garyCollided", 1)
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("robostatus")
    if L1_1 == 7 then
      L1_1 = _id
      L1_1 = L1_1.Inventory_PuffleGreen
      if L0_0 == L1_1 then
        L1_1 = _util
        L1_1 = L1_1.AddDialog
        L1_1(3485, _const.CHANGE_DIALOG, 204)
      else
        L1_1 = _id
        L1_1 = L1_1.Inventory_PuffleYellow
        if L0_0 == L1_1 then
          L1_1 = _util
          L1_1 = L1_1.AddDialog
          L1_1(3485, _const.CHANGE_DIALOG, 203)
        else
          L1_1 = _id
          L1_1 = L1_1.Inventory_PufflePurple
          if L0_0 == L1_1 then
            function L1_1()
              _util.PlaySFX(84)
              _util.SetSpawn(0, _id.M5C1_SuperRobot_TM3)
              _util.SetSpawn(0, _id.M5C1_Gary_TM2)
              _util.SetSpawn(1, _id.M5C1_SuperRobot_TM4)
              _util.SetSpawn(1, _id.M5C1_GaryFree)
              _util.SetVar("robostatus", 8)
              _util.StartCutscene(_const.M5C1TALL3)
            end
            scriptPlay(L1_1)
          end
        end
      end
    end
  end
end
