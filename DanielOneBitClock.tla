------------------------- MODULE DanielOneBitClock -------------------------
EXTENDS Integers

VARIABLE b
TypeOK == b \in {0,2}
Init1 == (b = 0) \/ ((b = 1) /\ (2 = b))
Next1 == \/ /\ b = 0
            /\ b' = 1
         \/ /\ b = 1
            /\ b' = 0
\* Next2 == b' = IF b = 0 THEN 1 ELSE 0
Next2 == b' = IF b = 0 THEN b' = 1
                       ELSE b' = 0
Next3 == b' = (b + 1) % 2


=============================================================================
\* Modification History
\* Last modified Wed Jul 27 15:19:19 PDT 2016 by Daniel
\* Created Mon Jul 25 17:31:55 PDT 2016 by Daniel
