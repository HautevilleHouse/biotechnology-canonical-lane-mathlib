import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiotechnologyCanonicalLaneLean

structure MetabolicPathwaysPackage where
  reactionNetwork : Type u
  fluxBalanceAnalysis : Prop
  stoichiometricMatrix : Prop
  pathwayEnrichment : Prop
  thermodynamicsFeasibility : Prop

structure MetabolicPathwaysEvidence (M : MetabolicPathwaysPackage) where
  fluxBalanceAnalysisClosed : M.fluxBalanceAnalysis
  stoichiometricMatrixClosed : M.stoichiometricMatrix
  pathwayEnrichmentClosed : M.pathwayEnrichment
  thermodynamicsFeasibilityClosed : M.thermodynamicsFeasibility

def MetabolicPathwaysClosed (M : MetabolicPathwaysPackage) : Prop :=
  M.fluxBalanceAnalysis ∧ M.stoichiometricMatrix ∧
  M.pathwayEnrichment ∧ M.thermodynamicsFeasibility

theorem metabolic_pathways_closed_from_evidence (M : MetabolicPathwaysPackage)
    (E : MetabolicPathwaysEvidence M) : MetabolicPathwaysClosed M := by
  exact And.intro E.fluxBalanceAnalysisClosed
    (And.intro E.stoichiometricMatrixClosed
      (And.intro E.pathwayEnrichmentClosed E.thermodynamicsFeasibilityClosed))

end BiotechnologyCanonicalLaneLean
end HautevilleHouse