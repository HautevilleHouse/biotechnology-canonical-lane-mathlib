import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiotechnologyCanonicalLaneLean

structure EnzymeKineticsPackage where
  enzyme : Type u
  substrate : Type v
  product : Type w
  michaelisConstant : ℝ
  catalyticRate : ℝ
  inhibitionModel : Prop
  steadyStateAssumed : Prop
  turnoverNumber : ℝ

structure EnzymeKineticsEvidence (E : EnzymeKineticsPackage) where
  michaelisConstantClosed : E.michaelisConstant > 0
  catalyticRateClosed : E.catalyticRate > 0
  inhibitionModelClosed : E.inhibitionModel
  steadyStateAssumedClosed : E.steadyStateAssumed
  turnoverNumberClosed : E.turnoverNumber > 0

def EnzymeKineticsClosed (E : EnzymeKineticsPackage) : Prop :=
  E.michaelisConstant > 0 ∧ E.catalyticRate > 0 ∧ E.inhibitionModel ∧ E.steadyStateAssumed ∧ E.turnoverNumber > 0

theorem enzyme_kinetics_closed_from_evidence (E : EnzymeKineticsPackage) (Ev : EnzymeKineticsEvidence E) : EnzymeKineticsClosed E := by
  exact And.intro Ev.michaelisConstantClosed
    (And.intro Ev.catalyticRateClosed
      (And.intro Ev.inhibitionModelClosed
        (And.intro Ev.steadyStateAssumedClosed Ev.turnoverNumberClosed)))

end BiotechnologyCanonicalLaneLean
end HautevilleHouse
