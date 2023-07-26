// Bentley Mirrorshade reacts to the mines being cleared.

ADD_STATE_TRIGGER "%tutu_var%bently" 0
  ~GlobalLT("Chapter", "GLOBAL", %bg1_chapter_3%)~

ADD_STATE_TRIGGER "%tutu_var%bently" 3
  ~GlobalGT("Chapter", "GLOBAL", %bg1_chapter_2%)~

SET_WEIGHT "%tutu_var%bently" 3 #1



