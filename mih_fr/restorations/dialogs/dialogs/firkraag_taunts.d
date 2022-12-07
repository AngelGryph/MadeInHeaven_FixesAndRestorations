REPLACE_STATE_TRIGGER "firkra03" 0
  ~Global("FirkraagTaunt", "GLOBAL", 0)
   Or(2)
     !Class(Player1, PALADIN)
     Kit(Player1, BLACKGUARD)~

REPLACE_STATE_TRIGGER "firkra03" 1
  ~Global("FirkraagTaunt", "GLOBAL", 0)
   Class(Player1, PALADIN)
   !Kit(Player1, BLACKGUARD)~

REPLACE_STATE_TRIGGER "firkra03" 3
  ~Global("FirkraagTaunt", "GLOBAL", 2)
   Or(2)
     !Class(Player1, PALADIN)
     Kit(Player1, BLACKGUARD)~

REPLACE_STATE_TRIGGER "firkra03" 2
  ~Global("FirkraagTaunt", "GLOBAL", 2)
   Class(Player1, PALADIN)
   !Kit(Player1, BLACKGUARD)~

ADD_TRANS_ACTION "firkra03"
BEGIN 0 1 END	// States
BEGIN 0 END	// Transactions
  ~SetGlobal("FirkraagTaunt", "GLOBAL", 1) DestroySelf()~

ADD_TRANS_ACTION "firkra03"
BEGIN 2 3 END	// States
BEGIN 0 END	// Transactions
  ~SetGlobal("FirkraagTaunt", "GLOBAL", 3) DestroySelf()~


