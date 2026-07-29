import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiotechnologyCanonicalLaneLean

structure DNASequencingPackage where
  readLength : Nat
  coverageDepth : Nat
  baseCallAccuracy : Prop
  assemblyContinuity : Prop

structure DNASequencingEvidence (P : DNASequencingPackage) where
  baseCallAccuracyClosed : P.baseCallAccuracy
  assemblyContinuityClosed : P.assemblyContinuity

def DNASequencingClosed (P : DNASequencingPackage) : Prop :=
  P.baseCallAccuracy ∧ P.assemblyContinuity

theorem dnasequencing_closed_from_evidence (P : DNASequencingPackage)
    (E : DNASequencingEvidence P) : DNASequencingClosed P := by
  exact And.intro E.baseCallAccuracyClosed E.assemblyContinuityClosed

end BiotechnologyCanonicalLaneLean
end HautevilleHouse