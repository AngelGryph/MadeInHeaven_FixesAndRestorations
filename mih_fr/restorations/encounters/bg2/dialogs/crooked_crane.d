// Tiiro

REPLACE_STATE_TRIGGER "croth01" ~Global("TakenBlame", "GLOBAL", 0)~

ADD_TRANS_ACTION "croth01"
BEGIN 23 END	// State(s)
BEGIN 0 END	// Transaction(s)
 ~ActionOverride("crothf02",Enemy())~

ADD_TRANS_ACTION "croth01"
BEGIN 23 END	// State(s)
BEGIN 0 END	// Transaction(s)
 ~SetGlobalTimer("BonnieClydeTimer", "GLOBAL", ONE_DAY)~


// Rilmi

REPLACE_STATE_TRIGGER "crthf03" 0 ~Global("BonnieClyde", "GLOBAL", 0)~

REPLACE_STATE_TRIGGER "crthf03" 7 ~Global("BonnieClyde", "GLOBAL", 2)~

ALTER_TRANS "crthf03"
BEGIN 13 END	// State(s)
BEGIN 0 END	// Transaction(s)
BEGIN
  "EPILOGUE" ~GOTO 14~
END


