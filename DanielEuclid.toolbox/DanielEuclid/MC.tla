---- MODULE MC ----
EXTENDS DanielEuclid, TLC

\* CONSTANT definitions @modelParameterConstants:0M
const_147571823960226000 == 
342
----

\* CONSTANT definitions @modelParameterConstants:1N
const_147571823961327000 == 
180
----

\* CONSTANT definition @modelParameterDefinitions:0
def_ov_147571823962528000 ==
-1000..1000
----
\* Constant expression definition @modelExpressionEval
const_expr_147571823963629000 == 
<<Divides(2,4), Divides(4,6)>>
----

\* Constant expression ASSUME statement @modelExpressionEval
ASSUME PrintT(<<"$!@$!@$!@$!@$!",const_expr_147571823963629000>>)
----

\* SPECIFICATION definition @modelBehaviorSpec:0
spec_147571823964630000 ==
Spec
----
\* INVARIANT definition @modelCorrectnessInvariants:0
inv_147571823965731000 ==
PartialCorrectness
----
=============================================================================
\* Modification History
\* Created Wed Oct 05 18:43:59 PDT 2016 by Daniel
