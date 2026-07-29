import HautevilleHouse.BiotechnologyCanonicalLaneLean.BiotechnologyGateLemmas

namespace HautevilleHouse
namespace BiotechnologyCanonicalLaneLean

def ConstrainedBiotechnologyClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_biotechnology_endgame (A : AdmissibleClass) :
    ConstrainedBiotechnologyClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BiotechnologyCanonicalLaneLean
end HautevilleHouse