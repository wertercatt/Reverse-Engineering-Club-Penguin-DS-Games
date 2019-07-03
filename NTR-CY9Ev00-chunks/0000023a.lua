if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  _util.SetVar("LifePreserv", 1)
  if _util.GetVar("WhaleFloat") == 1 and _util.GetVar("OctoFloat") == 1 then
    _util.SetVar("FoundAllInflatibles", 1)
  end
  _util.MarkSubObjComplete(_text.C4_OBJ2, _text.C4_SUBOBJ2_1D)
end
