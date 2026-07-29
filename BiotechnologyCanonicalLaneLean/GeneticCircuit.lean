import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiotechnologyCanonicalLaneLean

structure GeneticCircuitPackage where
  promoterStrength : Prop
  repressorBinding : Prop
  feedbackLoopStability : Prop
  circuitRobustness : Prop

structure GeneticCircuitEvidence (G : GeneticCircuitPackage) where
  promoterStrengthClosed : G.promoterStrength
  repressorBindingClosed : G.repressorBinding
  feedbackLoopStabilityClosed : G.feedbackLoopStability
  circuitRobustnessClosed : G.circuitRobustness

def GeneticCircuitClosed (G : GeneticCircuitPackage) : Prop :=
  G.promoterStrength ∧ G.repressorBinding ∧ G.feedbackLoopStability ∧ G.circuitRobustness

theorem genetic_circuit_closed_from_evidence (G : GeneticCircuitPackage) (E : GeneticCircuitEvidence G) : GeneticCircuitClosed G := by
  exact And.intro E.promoterStrengthClosed (And.intro E.repressorBindingClosed (And.intro E.feedbackLoopStabilityClosed E.circuitRobustnessClosed))

end BiotechnologyCanonicalLaneLean
end HautevilleHouse