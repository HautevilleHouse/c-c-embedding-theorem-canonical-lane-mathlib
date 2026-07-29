import canonicalLaneMathlib.AdmissibleClass
import CCEmbeddingTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CCEmbeddingTheoremCanonicalLaneLean

structure CurvatureConditionPackage (M : EmbeddingAdmittedObject) where
  sectionalCurvatureBound : Prop
  ricciCurvatureBound : Prop
  scalarCurvatureBound : Prop
  positiveCurvature : Prop

structure CurvatureConditionEvidence (M : EmbeddingAdmittedObject)
    (C : CurvatureConditionPackage M) where
  sectionalCurvatureBoundClosed : C.sectionalCurvatureBound
  ricciCurvatureBoundClosed : C.ricciCurvatureBound
  scalarCurvatureBoundClosed : C.scalarCurvatureBound
  positiveCurvatureClosed : C.positiveCurvature

def CurvatureConditionClosed (M : EmbeddingAdmittedObject)
    (C : CurvatureConditionPackage M) : Prop :=
  C.sectionalCurvatureBound ∧ C.ricciCurvatureBound ∧
  C.scalarCurvatureBound ∧ C.positiveCurvature

theorem curvature_condition_closed_from_evidence (M : EmbeddingAdmittedObject)
    (C : CurvatureConditionPackage M) (E : CurvatureConditionEvidence M C) :
    CurvatureConditionClosed M C := by
  exact And.intro E.sectionalCurvatureBoundClosed
    (And.intro E.ricciCurvatureBoundClosed
      (And.intro E.scalarCurvatureBoundClosed E.positiveCurvatureClosed))

end CCEmbeddingTheoremCanonicalLaneLean
end HautevilleHouse