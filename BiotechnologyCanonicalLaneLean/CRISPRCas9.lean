import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiotechnologyCanonicalLaneLean

structure CRISPRCas9Package where
  guideRnaDesign : Type u
  targetSiteSelection : Prop
  offTargetPrediction : Prop
  editingEfficiency : Prop
  deliveryMethod : Prop

structure CRISPRCas9Evidence (C : CRISPRCas9Package) where
  targetSiteSelectionClosed : C.targetSiteSelection
  offTargetPredictionClosed : C.offTargetPrediction
  editingEfficiencyClosed : C.editingEfficiency
  deliveryMethodClosed : C.deliveryMethod

def CRISPRCas9Closed (C : CRISPRCas9Package) : Prop :=
  C.targetSiteSelection ∧ C.offTargetPrediction ∧
  C.editingEfficiency ∧ C.deliveryMethod

theorem crispr_cas9_closed_from_evidence (C : CRISPRCas9Package)
    (E : CRISPRCas9Evidence C) : CRISPRCas9Closed C := by
  exact And.intro E.targetSiteSelectionClosed
    (And.intro E.offTargetPredictionClosed
      (And.intro E.editingEfficiencyClosed E.deliveryMethodClosed))

end BiotechnologyCanonicalLaneLean
end HautevilleHouse