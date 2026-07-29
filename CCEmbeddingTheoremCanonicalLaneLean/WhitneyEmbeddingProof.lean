import CCEmbeddingTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CCEmbeddingTheoremCanonicalLaneLean

structure WhitneyEmbeddingPackage where
  manifoldDimension : Nat
  euclideanDimension : Nat
  embeddingExists : Prop
  immersionExists : Prop
  injectivityCondition : Prop
  propernessCondition : Prop
  whitneyTheorem : embeddingExists ∧ immersionExists ∧ injectivityCondition ∧ propernessCondition

structure WhitneyEmbeddingEvidence (W : WhitneyEmbeddingPackage) where
  embeddingExistsClosed : W.embeddingExists
  immersionExistsClosed : W.immersionExists
  injectivityConditionClosed : W.injectivityCondition
  propernessConditionClosed : W.propernessCondition

def WhitneyEmbeddingClosed (W : WhitneyEmbeddingPackage) : Prop :=
  W.embeddingExists ∧ W.immersionExists ∧ W.injectivityCondition ∧ W.propernessCondition

theorem whitney_embedding_closed_from_evidence (W : WhitneyEmbeddingPackage) (E : WhitneyEmbeddingEvidence W) :
    WhitneyEmbeddingClosed W := by
  exact And.intro E.embeddingExistsClosed (And.intro E.immersionExistsClosed (And.intro E.injectivityConditionClosed E.propernessConditionClosed))

end CCEmbeddingTheoremCanonicalLaneLean
end HautevilleHouse