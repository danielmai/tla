--------------------------- MODULE DanielDieHard ---------------------------
EXTENDS Integers

VARIABLES big, small
TypeOK == /\ big \in 0..5
          /\ small \in 0..3

Init == /\ big = 0
        /\ small = 0
        
Min(m,n) == IF m < n THEN m ELSE n
FillSmall == /\ small' = 3
             /\ big' = big
FillBig == /\ big' = 5
           /\ small' = small
EmptySmall == /\ small' = 0
              /\ big' = big
EmptyBig == /\ big' = 0
            /\ small' = small
SmallToBig ==
  LET poured == Min(big + small, 5) - big
  IN  /\ big' = big + poured
      /\ small' = small - poured
BigToSmall ==
  LET poured == Min(big + small, 3) - small
  IN  /\ big' = big - poured
      /\ small' = small + poured
Next == \/ FillSmall
        \/ FillBig
        \/ EmptySmall
        \/ EmptyBig
        \/ SmallToBig
        \/ BigToSmall

=============================================================================
\* Modification History
\* Last modified Wed Aug 24 18:09:14 PDT 2016 by Daniel
\* Created Wed Jul 27 15:34:04 PDT 2016 by Daniel
