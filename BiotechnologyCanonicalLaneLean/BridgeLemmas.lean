import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BiotechnologyCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BiotechnologyCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  BiotechWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end BiotechnologyCanonicalLaneLean
end HautevilleHouse