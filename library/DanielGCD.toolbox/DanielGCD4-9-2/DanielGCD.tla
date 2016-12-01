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

GCD1 == \A m \in Nat \ {0} : GCD(m, m) = m
GCD2 == \A m, n \in Nat \ {0} : GCD(m, n) = GCD(n, m)
GCD3 == \A m, n \in Nat \ {0} : (n > m) => (GCD(m, n) = GCD(m, n - m))

=============================================================================
\* Modification History
\* Last modified Mon Nov 07 18:29:20 PST 2016 by Daniel
\* Created Wed Aug 24 18:02:30 PDT 2016 by Daniel
