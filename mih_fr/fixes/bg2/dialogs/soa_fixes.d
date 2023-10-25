// Simyaz's dialog in the Underdark after the mind flayer's lair has a
// condition that is impossible to meet; you cannot have a reaction
// greater than FRIENDLY_UPPER.

REPLACE_TRIGGER_TEXT "udsimyaz"
  ~ReactionGT(LastTalkedToBy,FRIENDLY_UPPER)~ ~Reaction(LastTalkedToBy,FRIENDLY_UPPER)~


