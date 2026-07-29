import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiotechnologyCanonicalLaneLean

structure GeneExpressionPackage where
  transcriptQuantification : Prop
  differentialExpression : Prop
  regulatoryNetwork : Prop
  spatialLocalization : Prop

structure GeneExpressionEvidence (P : GeneExpressionPackage) where
  transcriptQuantificationClosed : P.transcriptQuantification
  differentialExpressionClosed : P.differentialExpression
  regulatoryNetworkClosed : P.regulatoryNetwork
  spatialLocalizationClosed : P.spatialLocalization

def GeneExpressionClosed (P : GeneExpressionPackage) : Prop :=
  P.transcriptQuantification ∧ P.differentialExpression ∧ P.regulatoryNetwork ∧ P.spatialLocalization

theorem gene_expression_closed_from_evidence (P : GeneExpressionPackage) (E : GeneExpressionEvidence P) : GeneExpressionClosed P := by
  exact And.intro E.transcriptQuantificationClosed (And.intro E.differentialExpressionClosed (And.intro E.regulatoryNetworkClosed E.spatialLocalizationClosed))

end BiotechnologyCanonicalLaneLean
end HautevilleHouse