// Small fix for the "badass merchant"

ADD_TRANS_TRIGGER "%tutu_var%mercha" 1
    "False()"

EXTEND_TOP "mercha" 1
  COPY_TRANS "mercha" 0
END


// Dialog for new trader for STO4907

BEGIN "mh#elftr"

IF ~NumTimesTalkedTo(0)~
BEGIN intro
  SAY @0
    = @1
    = @2
  IF ~~
    REPLY @3
    GOTO store
  IF ~~
    REPLY @4
    GOTO bye
END

IF ~NumTimesTalkedToGT(0)~
BEGIN return
  SAY @5
  IF ~~
    REPLY @3
    GOTO store
  IF ~~
    REPLY @4
    GOTO bye
END

IF ~~
BEGIN store
  SAY @6
  IF ~~
    DO ~StartStore("STO4907", LastTalkedToBy(Myself))~
    EXIT
END

IF ~~
BEGIN bye
  SAY @7
  IF ~~
    EXIT
END


