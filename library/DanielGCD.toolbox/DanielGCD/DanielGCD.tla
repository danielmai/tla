----------------------------- MODULE DanielGCD -----------------------------
EXTENDS Integers

Divides(p, n)  == \E q \in Int : n = q * p
DivisorsOf(n) == {p \in Int : Divides(p, n)}
SetMax(S) ==
    CHOOSE i \in S :  \A j \in S : i >= j
GCD(m, n) ==
    SetMax(DivisorsOf(m) \cap DivisorsOf(n))
=============================================================================
\* Modification History
\* Last modified Wed Aug 31 17:15:24 PDT 2016 by Daniel
\* Created Wed Aug 24 18:02:30 PDT 2016 by Daniel
