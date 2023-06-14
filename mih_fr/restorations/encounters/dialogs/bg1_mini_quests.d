// Corianna the petrified ranger

REPLACE_STATE_TRIGGER "corian" 0
  ~NumTimesTalkedTo(0) ReactionLT(LastTalkedToBy(Myself), FRIENDLY_LOWER)~

ADD_TRANS_ACTION "corian"
BEGIN 0 END	// State(s)
BEGIN 0 END	// Transaction(s)
  ~AddexperienceParty(300) EscapeArea()~


REPLACE_STATE_TRIGGER "corian" 1
  ~NumTimesTalkedTo(0)~

ADD_TRANS_ACTION "corian"
BEGIN 1 END	// State(s)
BEGIN 0 END	// Transaction(s)
  ~AddexperienceParty(300) GiveItem("potn38", LastTalkedToBy(Myself)) EscapeArea()~


// Quoningar the meditating priest

REPLACE_STATE_TRIGGER "quonin" 0
  ~ReactionLT(LastTalkedToBy(Myself), NEUTRAL_LOWER)~


REPLACE_STATE_TRIGGER "quonin" 1
  ~Global("HelpQuoningar", "GLOBAL", 0)~

ADD_TRANS_ACTION "quonin"
BEGIN 1 END	// State(s)
BEGIN 0 END	// Transaction(s)
  ~SetGlobal("HelpQuoningar", "GLOBAL", 1)~

ALTER_TRANS "quonin"
BEGIN 1 END	// State(s)
BEGIN 0 END	// Transaction(s)
BEGIN
  "UNSOLVED_JOURNAL" ~@2~
END


REPLACE_STATE_TRIGGER "quonin" 2
  ~Global("HelpQuoningar", "GLOBAL", 1) !PartyHasItem("potn37")~


REPLACE_STATE_TRIGGER "quonin" 3
  ~Global("HelpQuoningar", "GLOBAL", 1) PartyHasItem("potn37") !Dead("bassilus")~

ADD_TRANS_ACTION "quonin"
BEGIN 3 END	// State(s)
BEGIN 0 END	// Transaction(s)
  ~EraseJournalEntry(@2) SetGlobal("HelpQuoningar", "GLOBAL", 2) TakePartyItemNum("potn37", 1) GiveItem("hamm02", LastTalkedToBy(Myself))~

ALTER_TRANS "quonin"
BEGIN 3 END	// State(s)
BEGIN 0 END	// Transaction(s)
BEGIN
  "SOLVED_JOURNAL" ~@3~
END


REPLACE_STATE_TRIGGER "quonin" 4
  ~Global("HelpQuoningar", "GLOBAL", 1) PartyHasItem("potn37") Dead("bassilus")~

ADD_TRANS_ACTION "quonin"
BEGIN 4 END	// State(s)
BEGIN 0 END	// Transaction(s)
  ~EraseJournalEntry(@2) SetGlobal("HelpQuoningar", "GLOBAL", 2) TakePartyItemNum("potn37", 1) GiveItem("potn33", LastTalkedToBy(Myself))~

ALTER_TRANS "quonin"
BEGIN 4 END	// State(s)
BEGIN 0 END	// Transaction(s)
BEGIN
  "SOLVED_JOURNAL" ~@4~
END

REPLACE_STATE_TRIGGER "quonin" 5
  ~True()~


// Shilo Chen and the Ogre Magi

REPLACE_STATE_TRIGGER "shilo" 0
  ~ReactionLT(LastTalkedToBy(Myself), NEUTRAL_LOWER)~


REPLACE_STATE_TRIGGER "shilo" 1
  ~Global("HelpShiloChen", "GLOBAL", 0)~

ALTER_TRANS "shilo"
BEGIN 1 END	// State(s)
BEGIN 0 END	// Transaction(s)
BEGIN
  "ACTION" ~SetGlobal("HelpShiloChen", "GLOBAL", 1)~
  "UNSOLVED_JOURNAL" ~@5~
END


REPLACE_STATE_TRIGGER "shilo" 2
  ~Global("HelpShiloChen", "GLOBAL", 1)~


REPLACE_STATE_TRIGGER "shilo" 3
  ~Global("HelpShiloChen", "GLOBAL", 2)~

ALTER_TRANS "shilo"
BEGIN 3 END	// State(s)
BEGIN 0 END	// Transaction(s)
BEGIN
  "ACTION" ~EraseJournalEntry(@5) EraseJournalEntry(@6) SetGlobal("HelpShiloChen", "GLOBAL", 3) GiveItem("brac17", LastTalkedToBy(Myself)) EscapeArea()~
  "SOLVED_JOURNAL" ~@7~
END


