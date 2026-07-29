import HautevilleHouse.BiotechnologyCanonicalLaneLean.BiotechnologyAdmissibleClass

namespace HautevilleHouse
namespace BiotechnologyCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.functionality

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.proof

end BiotechnologyCanonicalLaneLean
end HautevilleHouse