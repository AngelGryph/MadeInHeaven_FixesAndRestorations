// Half of the time, the "badass merchant" won't sell anything
// because the dialog ends early.  Let's remedy that.

ADD_TRANS_TRIGGER "%tutu_var%mercha" 1
  "False()"

EXTEND_TOP "%tutu_var%mercha" 1
  COPY_TRANS "%tutu_var%mercha" 0
END


