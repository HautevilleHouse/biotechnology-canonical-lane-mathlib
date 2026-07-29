import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiotechnologyCanonicalLaneLean

structure DrugDesignPackage where
  targetProtein : Type u
  compoundLibrary : Type v
  molecularDocking : Prop
  admetPrediction : Prop
  bindingAffinity : Prop
  selectivityProfile : Prop

structure DrugDesignEvidence (D : DrugDesignPackage) where
  molecularDockingClosed : D.molecularDocking
  admetPredictionClosed : D.admetPrediction
  bindingAffinityClosed : D.bindingAffinity
  selectivityProfileClosed : D.selectivityProfile

def DrugDesignClosed (D : DrugDesignPackage) : Prop :=
  D.molecularDocking ∧ D.admetPrediction ∧
  D.bindingAffinity ∧ D.selectivityProfile

theorem drug_design_closed_from_evidence (D : DrugDesignPackage)
    (E : DrugDesignEvidence D) : DrugDesignClosed D := by
  exact And.intro E.molecularDockingClosed
    (And.intro E.admetPredictionClosed
      (And.intro E.bindingAffinityClosed E.selectivityProfileClosed))

end BiotechnologyCanonicalLaneLean
end HautevilleHouse