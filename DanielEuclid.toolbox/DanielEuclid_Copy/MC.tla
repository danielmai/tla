---- MODULE MC ----
EXTENDS DanielEuclid, TLC

\* CONSTANT definitions @modelParameterConstants:0M
const_147511116765013000 == 
5
----

\* CONSTANT definitions @modelParameterConstants:1N
const_147511116766114000 == 
10
----

\* CONSTANT definition @modelParameterDefinitions:0
def_ov_147511116767215000 ==
1..N
----
\* SPECIFICATION definition @modelBehaviorSpec:0
spec_147511116768316000 ==
Spec
----
\* INVARIANT definition @modelCorrectnessInvariants:0
inv_147511116769417000 ==
(pc = "Done") => (x = y) /\ (x = GCD(x0, y0))
----
\* PROPERTY definition @modelCorrectnessProperties:0
prop_147511116770518000 ==
Termination
----
=============================================================================
\* Modification History
\* Created Wed Sep 28 18:06:07 PDT 2016 by Daniel
