// It's possible to have the Blessed Bracers when encountering the boy in
// Saradush whose father just died, but the dialog does not offer the option
// to actually use it.  Let's add it.

EXTEND_TOP "orphan1" 3 #3
  IF ~HasItemEquiped("brac23", LastTalkedToBy(Myself))~
    REPLY @0
    DO ~ClearAllActions()
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


// When the party first talks to Karthis al-Hezzar, they can ask about either
// the haunted glade or the fire giants.  But when they talk to him again,
// they can only ask about the haunted glade even though they should still be
// able to ask about the fire giants.  This adds that option.

EXTEND_TOP "hgkar01" 8 #1
  IF ~~
    REPLY #73162
    GOTO 14
END


