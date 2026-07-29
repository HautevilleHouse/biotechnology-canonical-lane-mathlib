import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiotechnologyCanonicalLaneLean

structure CRISPRPackage where
  targetSpecificity : Prop
  editingEfficiency : Prop
  offTargetMinimization : Prop
  repairMechanism : Prop

structure CRISPREvidence (C : CRISPRPackage) where
  targetSpecificityClosed : C.targetSpecificity
  editingEfficiencyClosed : C.editingEfficiency
  offTargetMinimizationClosed : C.offTargetMinimization
  repairMechanismClosed : C.repairMechanism

def CRISPRClosed (C : CRISPRPackage) : Prop :=
  C.targetSpecificity ∧ C.editingEfficiency ∧ C.offTargetMinimization ∧ C.repairMechanism

theorem crispr_closed_from_evidence (C : CRISPRPackage) (E : CRISPREvidence C) : CRISPRClosed C := by
  exact And.intro E.targetSpecificityClosed (And.intro E.editingEfficiencyClosed (And.intro E.offTargetMinimizationClosed E.repairMechanismClosed))

end BiotechnologyCanonicalLaneLean
end HautevilleHouse