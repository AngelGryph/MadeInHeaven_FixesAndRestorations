// BG2EE 2.6.6 altered the structure of the orphan1 dialog file, adding
// a new transition in the process and fixing the bug that if you opt to
// use a scroll, the scroll doesn't actually get used.  This makes the same
// change to oBG2.

ALTER_TRANS "orphan1"
BEGIN 3 END	// State(s)
BEGIN 2 END	// Transaction(s)
BEGIN
  "TRIGGER"
  ~Name("Jaheira", LastTalkedToBy(Myself))
   Class(LastTalkedToBy(Myself), CLERIC_ALL)
   OR(4)
     Name("Jaheira", LastTalkedToBy(Myself))
     HaveSpellParty(CLERIC_RAISE_DEAD)
     HaveSpellParty(CLERIC_MASS_RAISE_DEAD)
     HaveSpellParty(CLERIC_RESURRECTION)~
END

EXTEND_TOP "orphan1" 3 #2
  IF ~PartyHasItem("scrl63")
      OR(4)
        Class(LastTalkedToBy(Myself), CLERIC_ALL)
        Class(LastTalkedToBy(Myself), DRUID_ALL)
        Class(LastTalkedToBy(Myself), PALADIN_ALL)
        Class(LastTalkedToBy(Myself), RANGER_ALL)~
    REPLY @0
    DO ~ClearAllActions()
        TakePartyItemNum("scrl63", 1)
        DestroyItem("scrl63")
        StartCutSceneMode()
        FadeToColor([20.0], 0)
        Wait(2)
        MoveViewPoint([2402.1482], INSTANT)
        ActionOverride(LastTalkedToBy(Myself), JumpToPoint([2386.1386]))
        ActionOverride(LastTalkedToBy(Myself), Face(S))
        FadeFromColor([20.0], 0)
        Wait(1)
        ActionOverride(LastTalkedToBy(Myself), ForceSpellRES("jworphan","orphan2"))
        Wait(5)
        EndCutSceneMode()~
    EXIT
END


