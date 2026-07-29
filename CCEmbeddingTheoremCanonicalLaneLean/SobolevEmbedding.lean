import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CCEmbeddingTheoremCanonicalLaneLean

structure SobolevSpace (p : ℝ) where
  exponent : ℝ
  integrabilityCondition : Prop
  domainSmoothness : Prop

def SobolevEmbedding (p q : ℝ) : Prop :=
  (p < q) → (SobolevSpace p).integrabilityCondition → (SobolevSpace q).integrabilityCondition

structure SobolevEmbeddingEvidence (p q : ℝ) where
  embeddingClosed : SobolevEmbedding p q
  exponentConstraint : p < q

def SobolevEmbeddingClosed (p q : ℝ) : Prop :=
  SobolevEmbedding p q ∧ p < q

theorem sobolev_embedding_closed_from_evidence (p q : ℝ) (E : SobolevEmbeddingEvidence p q) :
    SobolevEmbeddingClosed p q := by
  exact And.intro E.embeddingClosed E.exponentConstraint

end CCEmbeddingTheoremCanonicalLaneLean
end HautevilleHouse