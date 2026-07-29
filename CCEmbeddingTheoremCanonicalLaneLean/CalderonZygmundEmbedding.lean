import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CCEmbeddingTheoremCanonicalLaneLean

structure CalderonZygmundPackage where
  integralOperator : Type u
  kernelCondition : Prop
  boundednessOnLp : Prop
  weakTypeInequality : Prop

structure CalderonZygmundEmbeddingPackage (C : CalderonZygmundPackage) where
  singularIntegralBounded : Prop
  vectorValuedExtension : Prop
  weightedNormInequality : Prop

structure CalderonZygmundEmbeddingEvidence {C : CalderonZygmundPackage}
    (E : CalderonZygmundEmbeddingPackage C) where
  singularIntegralBoundedClosed : E.singularIntegralBounded
  vectorValuedExtensionClosed : E.vectorValuedExtension
  weightedNormInequalityClosed : E.weightedNormInequality

def CalderonZygmundEmbeddingClosed {C : CalderonZygmundPackage}
    (E : CalderonZygmundEmbeddingPackage C) : Prop :=
  E.singularIntegralBounded ∧ E.vectorValuedExtension ∧ E.weightedNormInequality

theorem calderon_zygmund_embedding_closed_from_evidence
    {C : CalderonZygmundPackage} (E : CalderonZygmundEmbeddingPackage C)
    (Ev : CalderonZygmundEmbeddingEvidence E) : CalderonZygmundEmbeddingClosed E := by
  exact And.intro Ev.singularIntegralBoundedClosed
    (And.intro Ev.vectorValuedExtensionClosed Ev.weightedNormInequalityClosed)

end CCEmbeddingTheoremCanonicalLaneLean
end HautevilleHouse
