----------------------------- MODULE DanielGCD -----------------------------
EXTENDS Integers

Divides(p, n) == \E q \in Int : n = q * p  (********************************)
                                           (* For integers p and n, equals *)
                                           (* TRUE iff p divides n --      *)
                                           (* which I think is really      *)
                                           (* neat, don't you?             *)
                                           (********************************)
DivisorsOf(n) == {p \in Int : Divides(p, n)}
SetMax(S) ==
    CHOOSE i \in S :  \A j \in S : i >= j
GCD(m, n) ==
    SetMax(DivisorsOf(m) \cap DivisorsOf(n))

\*
\* Question 4.1 (page 31)
\* How can you easily find pairs of numbers whose gcd you know in order to test the definition?
\*

=============================================================================
\* Modification History
\* Last modified Wed Sep 14 07:28:31 PDT 2016 by Daniel
\* Created Wed Aug 24 18:02:30 PDT 2016 by Daniel
