import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiotechnologyCanonicalLaneLean

structure PhylogeneticTreePackage where
  multipleSequenceAlignment : Type u
  evolutionaryModel : Prop
  treeConstruction : Prop
  bootstrapSupport : Prop
  molecularClockTest : Prop

structure PhylogeneticTreeEvidence (P : PhylogeneticTreePackage) where
  evolutionaryModelClosed : P.evolutionaryModel
  treeConstructionClosed : P.treeConstruction
  bootstrapSupportClosed : P.bootstrapSupport
  molecularClockTestClosed : P.molecularClockTest

def PhylogeneticTreeClosed (P : PhylogeneticTreePackage) : Prop :=
  P.evolutionaryModel ∧ P.treeConstruction ∧
  P.bootstrapSupport ∧ P.molecularClockTest

theorem phylogenetic_tree_closed_from_evidence (P : PhylogeneticTreePackage)
    (E : PhylogeneticTreeEvidence P) : PhylogeneticTreeClosed P := by
  exact And.intro E.evolutionaryModelClosed
    (And.intro E.treeConstructionClosed
      (And.intro E.bootstrapSupportClosed E.molecularClockTestClosed))

end BiotechnologyCanonicalLaneLean
end HautevilleHouse