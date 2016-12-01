--------------------------- MODULE DanielEuclid2 ---------------------------
VARIABLE b
Init1 == (b = 0) \/ (b = 1)

Next1 == \/ /\ b = 0
            /\ b' = 1
         \/ /\ b = 1
            /\ b' = 0
=============================================================================
\* Modification History
\* Last modified Wed Nov 02 18:20:58 PDT 2016 by Daniel
\* Created Wed Nov 02 18:14:58 PDT 2016 by Daniel
