// Bentley Mirrorshade reacts to the mines being cleared.

ADD_STATE_TRIGGER "%tutu_var%bently" 0
  ~GlobalLT("Chapter", "GLOBAL", %bg1_chapter_3%)~

ADD_STATE_TRIGGER "%tutu_var%bently" 3
  ~GlobalGT("Chapter", "GLOBAL", %bg1_chapter_2%)~

SET_WEIGHT "%tutu_var%bently" 3 #1


// Restore a minor line to an iron throne guard.

ADD_TRANS_ACTION "iron11"
BEGIN 6 END	// State(s)
BEGIN 0 END	// Transaction(s)
  ~Enemy()~

ALTER_TRANS "iron11"
BEGIN 1 END	// State(s)
BEGIN 4 END	// Transaction(s)
BEGIN
  "EPILOGUE"	~GOTO 6~
END


