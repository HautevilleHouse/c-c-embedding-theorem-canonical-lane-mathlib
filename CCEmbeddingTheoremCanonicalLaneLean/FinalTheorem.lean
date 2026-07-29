import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CCEmbeddingTheoremCanonicalLaneLean

def ConstrainedCCEmbeddingClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_cc_embedding_endgame (A : AdmissibleClass) :
    ConstrainedCCEmbeddingClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CCEmbeddingTheoremCanonicalLaneLean
end HautevilleHouse