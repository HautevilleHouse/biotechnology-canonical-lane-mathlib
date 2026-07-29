import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiotechnologyCanonicalLaneLean

structure DNATranscriptionPackage where
  rnaPolymerase : Type u
  transcriptionFactors : Type v
  promoterRegion : Type w
  preInitiationComplexFormed : Prop
  elongationProceeds : Prop
  terminationAccurate : Prop
  mRNACapping : Prop
  splicing : Prop

structure DNATranscriptionEvidence (D : DNATranscriptionPackage) where
  preInitiationComplexFormedClosed : D.preInitiationComplexFormed
  elongationProceedsClosed : D.elongationProceeds
  terminationAccurateClosed : D.terminationAccurate
  mRNACappingClosed : D.mRNACapping
  splicingClosed : D.splicing

def DNATranscriptionClosed (D : DNATranscriptionPackage) : Prop :=
  D.preInitiationComplexFormed ∧ D.elongationProceeds ∧ D.terminationAccurate ∧ D.mRNACapping ∧ D.splicing

theorem dna_transcription_closed_from_evidence (D : DNATranscriptionPackage) (E : DNATranscriptionEvidence D) : DNATranscriptionClosed D := by
  exact And.intro E.preInitiationComplexFormedClosed
    (And.intro E.elongationProceedsClosed
      (And.intro E.terminationAccurateClosed
        (And.intro E.mRNACappingClosed E.splicingClosed)))

end BiotechnologyCanonicalLaneLean
end HautevilleHouse
