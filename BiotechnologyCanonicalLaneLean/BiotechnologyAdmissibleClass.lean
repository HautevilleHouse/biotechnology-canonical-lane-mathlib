import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiotechnologyCanonicalLaneLean

structure BiotechnologyAdmittedObject where
  sequence : String
  organism : String
  functionality : Prop
  proof : functionality

structure AdmissibleClass where
  object : BiotechnologyAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.functionality ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BiotechnologyCanonicalLaneLean
end HautevilleHouse