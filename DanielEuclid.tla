---------------------------- MODULE DanielEuclid ----------------------------
EXTENDS Integers, DanielGCD, TLC
CONSTANTS M, N

\* \ is the set difference operator
ASSUME /\ M \in Nat \ {0}
       /\ N \in Nat \ {0}

(*****************************************************
--fair algorithm Euclid {
    \* variables x = M, y = N ;
    variables x \in 1..N, y \in 1..N, x0 = x, y0 = y ; (* page 39 to test Euclid's algorithm for values 1..N *)
    { while (x # y) { if (x < y) { y := y - x }
                      else       { x := x - y }
                    };
      assert (x # y) /\ (x = GCD(x0, y0))
    }
} 
******************************************************)
\* BEGIN TRANSLATION
VARIABLES x, y, x0, y0, pc

vars == << x, y, x0, y0, pc >>

Init == (* Global variables *)
        /\ x \in 1..N
        /\ y \in 1..N
        /\ x0 = x
        /\ y0 = y
        /\ pc = "Lbl_1"

Lbl_1 == /\ pc = "Lbl_1"
         /\ IF x # y
               THEN /\ IF x < y
                          THEN /\ y' = y - x
                               /\ x' = x
                          ELSE /\ x' = x - y
                               /\ y' = y
                    /\ pc' = "Lbl_1"
               ELSE /\ pc' = "Done"
                    /\ UNCHANGED << x, y >>
         /\ UNCHANGED << x0, y0 >>

Next == Lbl_1
           \/ (* Disjunct to prevent deadlock on termination *)
              (pc = "Done" /\ UNCHANGED vars)

Spec == Init /\ [][Next]_vars

Termination == <>(pc = "Done")

\* END TRANSLATION

PartialCorrectness == (pc = "Done") =>  (x = y) /\ (x = GCD(M, N))

=============================================================================
\* Modification History
\* Last modified Wed Sep 28 18:01:22 PDT 2016 by Daniel
\* Created Wed Aug 31 17:24:26 PDT 2016 by Daniel

\*
\* Question 4.2 (page 34)
\* Use set notation to write this assumption more compactly.
\* Answer:
\* ASSUME {M, N} \subseteq Nat \ {0}
\*

\*
\* Question 4.3 (page 34)
\* How many other ways can you write the set of positive integers in TLA+?
\* Answer:
\* ASSUME N \in {x \in Nat : x > 0}
\* ASSUME N \in {x \in Int : x > 0}
\* ASSUME N \in { x + 1 : x \in Nat}
