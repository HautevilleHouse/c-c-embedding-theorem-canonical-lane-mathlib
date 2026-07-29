import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CCEmbeddingTheoremCanonicalLaneLean

structure BMOPackage where
  domain : Type u
  meanOscillation : Prop
  boundedMeanOscillation : Prop
  sharpNormDefined : Prop

structure BMOEmbeddingPackage (B : BMOPackage) where
  johnNirenbergInequality : Prop
  feffermanDuality : Prop
  carlesonEmbedding : Prop

structure BMOEmbeddingEvidence {B : BMOPackage} (E : BMOEmbeddingPackage B) where
  johnNirenbergInequalityClosed : E.johnNirenbergInequality
  feffermanDualityClosed : E.feffermanDuality
  carlesonEmbeddingClosed : E.carlesonEmbedding

def BMOEmbeddingClosed {B : BMOPackage} (E : BMOEmbeddingPackage B) : Prop :=
  E.johnNirenbergInequality ∧ E.feffermanDuality ∧ E.carlesonEmbedding

theorem bmo_embedding_closed_from_evidence
    {B : BMOPackage} (E : BMOEmbeddingPackage B)
    (Ev : BMOEmbeddingEvidence E) : BMOEmbeddingClosed E := by
  exact And.intro Ev.johnNirenbergInequalityClosed (And.intro Ev.feffermanDualityClosed Ev.carlesonEmbeddingClosed)

end CCEmbeddingTheoremCanonicalLaneLean
end HautevilleHouse
