----------------------- MODULE DanielPCalOneBitClock -----------------------
EXTENDS Integers
(***************************************************************************
--algorithm Clock {
    variable b \in {0, 1};
    \*{ while (TRUE) { if (b = 0) b := 1 else b := 0
    \*               }
    \*}
    { while (TRUE) { b := (b + 1) % 2
                   }
    }
}
 ***************************************************************************)
\* BEGIN TRANSLATION
VARIABLE b

vars == << b >>

Init == (* Global variables *)
        /\ b \in {0, 1}

Next == b' = (b + 1) % 2

Spec == Init /\ [][Next]_vars

\* END TRANSLATION

=============================================================================
\* Modification History
\* Last modified Wed Jul 27 15:26:51 PDT 2016 by Daniel
\* Created Wed Jul 27 15:19:16 PDT 2016 by Daniel
