BEGIN "artemis"

IF ~NumTimesTalkedTo(0)~
BEGIN artemis_drizzt_1
  SAY #55646
  IF ~~
    EXTERN "c6drizz2" drizzt_artemis_1
END

IF ~~
BEGIN artemis_drizzt_2
  SAY #55738
  IF ~~
    EXTERN "c6drizz2" drizzt_artemis_2
END


APPEND "c6drizz2"

IF ~~
BEGIN drizzt_artemis_1
  SAY #55737
  IF ~~
    EXTERN "artemis" artemis_drizzt_2
END

IF ~~
BEGIN drizzt_artemis_2
  SAY #55739
  IF ~~
    EXIT
END

END	// APPEND "c6drizzt2"


