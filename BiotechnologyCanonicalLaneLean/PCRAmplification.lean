import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiotechnologyCanonicalLaneLean

structure PCRAmplificationPackage where
  templateDNA : Type u
  primers : Type v
  dnaPolymerase : Type w
  denaturation : Prop
  annealing : Prop
  extension : Prop
  cycleEfficiency : Prop
  specificity : Prop

structure PCRAmplificationEvidence (P : PCRAmplificationPackage) where
  denaturationClosed : P.denaturation
  annealingClosed : P.annealing
  extensionClosed : P.extension
  cycleEfficiencyClosed : P.cycleEfficiency
  specificityClosed : P.specificity

def PCRAmplificationClosed (P : PCRAmplificationPackage) : Prop :=
  P.denaturation ∧ P.annealing ∧ P.extension ∧ P.cycleEfficiency ∧ P.specificity

theorem pcr_amplification_closed_from_evidence (P : PCRAmplificationPackage) (E : PCRAmplificationEvidence P) : PCRAmplificationClosed P := by
  exact And.intro E.denaturationClosed
    (And.intro E.annealingClosed
      (And.intro E.extensionClosed
        (And.intro E.cycleEfficiencyClosed E.specificityClosed)))

end BiotechnologyCanonicalLaneLean
end HautevilleHouse
