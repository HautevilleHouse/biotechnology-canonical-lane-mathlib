import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiotechnologyCanonicalLaneLean

structure AdmissibleClass where
  object : BiotechnologyAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  BiotechnologyWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BiotechnologyCanonicalLaneLean
end HautevilleHouse
