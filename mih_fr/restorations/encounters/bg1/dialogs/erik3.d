BEGIN "erik3"

IF ~True()~
BEGIN intro
  SAY @0
  IF ~~
    DO ~ApplySpell(Myself, DOPPLEGANGER_CHANGE_DEFAULT_LESSER)~
    EXIT
END


