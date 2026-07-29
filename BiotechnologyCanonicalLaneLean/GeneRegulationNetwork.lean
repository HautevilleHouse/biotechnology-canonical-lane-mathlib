import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiotechnologyCanonicalLaneLean

structure GeneRegulationNetworkPackage where
  transcriptionFactors : Type u
  promoters : Type v
  enhancers : Type w
  geneExpressionProfile : Prop
  feedbackLoops : Prop
  regulatoryMotifs : Prop
  networkRobustness : Prop

structure GeneRegulationNetworkEvidence (G : GeneRegulationNetworkPackage) where
  geneExpressionProfileClosed : G.geneExpressionProfile
  feedbackLoopsClosed : G.feedbackLoops
  regulatoryMotifsClosed : G.regulatoryMotifs
  networkRobustnessClosed : G.networkRobustness

def GeneRegulationNetworkClosed (G : GeneRegulationNetworkPackage) : Prop :=
  G.geneExpressionProfile ∧ G.feedbackLoops ∧ G.regulatoryMotifs ∧ G.networkRobustness

theorem gene_regulation_network_closed_from_evidence (G : GeneRegulationNetworkPackage) (E : GeneRegulationNetworkEvidence G) : GeneRegulationNetworkClosed G := by
  exact And.intro E.geneExpressionProfileClosed
    (And.intro E.feedbackLoopsClosed
      (And.intro E.regulatoryMotifsClosed E.networkRobustnessClosed))

end BiotechnologyCanonicalLaneLean
end HautevilleHouse
