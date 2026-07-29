import canonicalLaneMathlib.AdmissibleClass
import CCEmbeddingTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CCEmbeddingTheoremCanonicalLaneLean

structure EmbeddingDimensionPackage (A : AdmissibleClass) where
  dimensionBound : ℕ
  dimensionBoundProp : dimensionBound ≥ 1
  embeddingInDimensionExists : Prop
  sharpness : Prop

structure EmbeddingDimensionEvidence {A : AdmissibleClass} (P : EmbeddingDimensionPackage A) where
  dimensionBoundPropClosed : P.dimensionBoundProp
  embeddingInDimensionExistsClosed : P.embeddingInDimensionExists
  sharpnessClosed : P.sharpness

def EmbeddingDimensionClosed {A : AdmissibleClass} (P : EmbeddingDimensionPackage A) : Prop :=
  P.dimensionBoundProp ∧ P.embeddingInDimensionExists ∧ P.sharpness

theorem embedding_dimension_closed_from_evidence
    {A : AdmissibleClass} (P : EmbeddingDimensionPackage A)
    (E : EmbeddingDimensionEvidence P) : EmbeddingDimensionClosed P := by
  exact And.intro E.dimensionBoundPropClosed
    (And.intro E.embeddingInDimensionExistsClosed E.sharpnessClosed)

end CCEmbeddingTheoremCanonicalLaneLean
end HautevilleHouse