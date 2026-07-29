import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiotechnologyCanonicalLaneLean

structure GeneEditingPackage where
  targetRecognition : Prop
  endonucleaseActivity : Prop
  repairTemplate : Prop
  offTargetMinimization : Prop

structure GeneEditingEvidence (P : GeneEditingPackage) where
  targetRecognitionClosed : P.targetRecognition
  endonucleaseActivityClosed : P.endonucleaseActivity
  repairTemplateClosed : P.repairTemplate
  offTargetMinimizationClosed : P.offTargetMinimization

def GeneEditingClosed (P : GeneEditingPackage) : Prop :=
  P.targetRecognition ∧ P.endonucleaseActivity ∧ P.repairTemplate ∧ P.offTargetMinimization

theorem gene_editing_closed_from_evidence (P : GeneEditingPackage) (E : GeneEditingEvidence P) : GeneEditingClosed P := by
  exact And.intro E.targetRecognitionClosed (And.intro E.endonucleaseActivityClosed (And.intro E.repairTemplateClosed E.offTargetMinimizationClosed))

end BiotechnologyCanonicalLaneLean
end HautevilleHouse