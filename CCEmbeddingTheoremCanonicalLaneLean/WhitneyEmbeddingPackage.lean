import CCEmbeddingTheoremCanonicalLaneLean.EmbeddingDimensionPackage

namespace HautevilleHouse
namespace CCEmbeddingTheoremCanonicalLaneLean

structure WhitneyEmbeddingPackage {A : AdmissibleClass}
    (D : EmbeddingDimensionPackage A) where
  genericPositionCondition : Prop
  dimensionSufficient : D.dimensionBound ≥ 0
  embeddingConstructed : Prop

structure WhitneyEmbeddingEvidence {A : AdmissibleClass}
    {D : EmbeddingDimensionPackage A} (W : WhitneyEmbeddingPackage D) where
  genericPositionConditionClosed : W.genericPositionCondition
  dimensionSufficientClosed : W.dimensionSufficient
  embeddingConstructedClosed : W.embeddingConstructed

def WhitneyEmbeddingClosed {A : AdmissibleClass}
    {D : EmbeddingDimensionPackage A} (W : WhitneyEmbeddingPackage D) : Prop :=
  W.genericPositionCondition ∧ W.dimensionSufficient ∧ W.embeddingConstructed

theorem whitney_embedding_closed_from_evidence
    {A : AdmissibleClass} {D : EmbeddingDimensionPackage A}
    (W : WhitneyEmbeddingPackage D) (E : WhitneyEmbeddingEvidence W) :
    WhitneyEmbeddingClosed W := by
  refine And.intro E.genericPositionConditionClosed ?_
  exact And.intro E.dimensionSufficientClosed E.embeddingConstructedClosed

end CCEmbeddingTheoremCanonicalLaneLean
end HautevilleHouse