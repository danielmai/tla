---- MODULE MC ----
EXTENDS DanielGCD, TLC

\* CONSTANT definition @modelParameterDefinitions:0
def_ov_14726889761724000 ==
-1000..1000
----
\* Constant expression definition @modelExpressionEval
const_expr_14726889761835000 == 
GCD(72, 364)
----

\* Constant expression ASSUME statement @modelExpressionEval
ASSUME PrintT(<<"$!@$!@$!@$!@$!",const_expr_14726889761835000>>)
----

=============================================================================
\* Modification History
\* Created Wed Aug 31 17:16:16 PDT 2016 by Daniel
