---- MODULE MC ----
EXTENDS DanielGCD, TLC

\* CONSTANT definition @modelParameterDefinitions:0
def_ov_147857257550831000 ==
0..100
----
\* CONSTANT definition @modelParameterDefinitions:1
def_ov_147857257551832000 ==
0..100
----
\* Constant expression definition @modelExpressionEval
const_expr_147857257553033000 == 
<<GCD1, GCD2, GCD3>>
----

\* Constant expression ASSUME statement @modelExpressionEval
ASSUME PrintT(<<"$!@$!@$!@$!@$!",const_expr_147857257553033000>>)
----

=============================================================================
\* Modification History
\* Created Mon Nov 07 18:36:15 PST 2016 by Daniel
