import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CCEmbeddingTheoremCanonicalLaneLean

structure EmbeddingInequality (n : ℕ) where
  dimension : ℕ
  sobolevExponentRange : Prop
  holderNormEstimate : Prop
  morreyInequality : Prop

def EmbeddingInequalityClosed (I : EmbeddingInequality n) : Prop :=
  I.sobolevExponentRange ∧ I.holderNormEstimate ∧ I.morreyInequality

structure EmbeddingInequalityEvidence (I : EmbeddingInequality n) where
  sobolevExponentRangeClosed : I.sobolevExponentRange
  holderNormEstimateClosed : I.holderNormEstimate
  morreyInequalityClosed : I.morreyInequality

theorem embedding_inequality_closed_from_evidence (n : ℕ) (I : EmbeddingInequality n) (E : EmbeddingInequalityEvidence I) :
    EmbeddingInequalityClosed I := by
  exact And.intro E.sobolevExponentRangeClosed
    (And.intro E.holderNormEstimateClosed E.morreyInequalityClosed)

end CCEmbeddingTheoremCanonicalLaneLean
end HautevilleHouse