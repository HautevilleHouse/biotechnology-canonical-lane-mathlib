import HautevilleHouse.BiotechnologyCanonicalLaneLean.BiotechnologyBridgeLemmas

namespace HautevilleHouse
namespace BiotechnologyCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end BiotechnologyCanonicalLaneLean
end HautevilleHouse