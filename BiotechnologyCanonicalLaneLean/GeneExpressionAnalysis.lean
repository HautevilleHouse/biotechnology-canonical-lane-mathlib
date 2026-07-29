import HautevilleHouse.BiotechnologyCanonicalLaneLean.BiotechnologyAdmissibleClass

namespace HautevilleHouse
namespace BiotechnologyCanonicalLaneLean

structure GeneExpressionProfile where
  geneId : String
  expressionLevel : Float
  condition : String

structure GeneExpressionAnalysisPackage where
  profiles : List GeneExpressionProfile
  normalizationApplied : Prop
  differentialExpressionComputed : Prop

structure GeneExpressionAnalysisEvidence (G : GeneExpressionAnalysisPackage) where
  normalizationAppliedClosed : G.normalizationApplied
  differentialExpressionComputedClosed : G.differentialExpressionComputed

def GeneExpressionAnalysisClosed (G : GeneExpressionAnalysisPackage) : Prop :=
  G.normalizationApplied ∧ G.differentialExpressionComputed

theorem gene_expression_analysis_closed_from_evidence
    (G : GeneExpressionAnalysisPackage) (E : GeneExpressionAnalysisEvidence G) :
    GeneExpressionAnalysisClosed G := by
  exact And.intro E.normalizationAppliedClosed E.differentialExpressionComputedClosed

end BiotechnologyCanonicalLaneLean
end HautevilleHouse