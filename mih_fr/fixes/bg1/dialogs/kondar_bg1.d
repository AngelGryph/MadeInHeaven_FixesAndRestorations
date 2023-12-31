// Priest of Oghma, priest quarters ch6

EXTEND_BOTTOM "poghm9" 0 1 2
  IF ~HasItemEquipedReal("sw1h03", LastTalkedToBy(Myself))~
    REPLY ~Now this is odd, Kondar has begun glowing the moment I approached you.  What is going on in here!?~
    GOTO 3
END
    

// Shistal, Candlekeep library

EXTEND_BOTTOM "shista" 0
  IF ~HasItemEquipedReal("sw1h03", LastTalkedToBy(Myself))~
    REPLY ~Well, well...  A monk behaving oddly and not recognizing me, and Kondar is glowing and throbbing.  It's not hard to add two and two here, you know...~
    GOTO 8
END

 
// False Elminster encounter in the catacombs.

APPEND "elmins4"

IF ~~
BEGIN kondar
  SAY ~Thsss, wretched blade!  Cunning, fleshling!  But you shall still die here!~
    COPY_TRANS "elmins4" 5
END

END // APPEND "elmins4"


EXTEND_BOTTOM "elmins4" 0
  IF ~HasItemEquipedReal("sw1h03", LastTalkedToBy(Myself))~
    REPLY ~Save yourself the trouble, wretched creature.  Kondar's glow has revealed your true nature!~
    GOTO kondar
END


