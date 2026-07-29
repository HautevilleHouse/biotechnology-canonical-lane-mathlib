import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiotechnologyCanonicalLaneLean

structure GenomeAssemblyPackage where
  contigCoverage : Prop
  readMapping : Prop
  deBruijnGraph : Prop
  consensusAccuracy : Prop

structure GenomeAssemblyEvidence (P : GenomeAssemblyPackage) where
  contigCoverageClosed : P.contigCoverage
  readMappingClosed : P.readMapping
  deBruijnGraphClosed : P.deBruijnGraph
  consensusAccuracyClosed : P.consensusAccuracy

def GenomeAssemblyClosed (P : GenomeAssemblyPackage) : Prop :=
  P.contigCoverage ∧ P.readMapping ∧ P.deBruijnGraph ∧ P.consensusAccuracy

theorem genome_assembly_closed_from_evidence (P : GenomeAssemblyPackage) (E : GenomeAssemblyEvidence P) : GenomeAssemblyClosed P := by
  exact And.intro E.contigCoverageClosed (And.intro E.readMappingClosed (And.intro E.deBruijnGraphClosed E.consensusAccuracyClosed))

end BiotechnologyCanonicalLaneLean
end HautevilleHouse