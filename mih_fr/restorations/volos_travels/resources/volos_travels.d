ADD_STATE_TRIGGER "volo" 0
  ~AreaCheck("%Nashkel_BelchingDragonTavern%")~

ADD_STATE_TRIGGER "volo" 1
  ~AreaCheck("%Nashkel_BelchingDragonTavern%")~

ADD_STATE_TRIGGER "volose" 6
  ~ReactionLT(LastTalkedToBy(Myself), NEUTRAL_LOWER)~
