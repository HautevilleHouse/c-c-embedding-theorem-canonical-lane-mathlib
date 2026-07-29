import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CCEmbeddingTheoremCanonicalLaneLean

structure CarlesonMeasurePackage where
  measureSpace : Type u
  carlesonCondition : Prop
  vanishingCondition : Prop
  dyadicStructure : Prop

structure CarlesonMeasureEmbeddingPackage (C : CarlesonMeasurePackage) where
  carlesonEmbeddingInequality : Prop
  littlewoodPaleyCharacterization : Prop
  bmoCarlesonDuality : Prop

structure CarlesonMeasureEmbeddingEvidence {C : CarlesonMeasurePackage}
    (E : CarlesonMeasureEmbeddingPackage C) where
  carlesonEmbeddingInequalityClosed : E.carlesonEmbeddingInequality
  littlewoodPaleyCharacterizationClosed : E.littlewoodPaleyCharacterization
  bmoCarlesonDualityClosed : E.bmoCarlesonDuality

def CarlesonMeasureEmbeddingClosed {C : CarlesonMeasurePackage}
    (E : CarlesonMeasureEmbeddingPackage C) : Prop :=
  E.carlesonEmbeddingInequality ∧ E.littlewoodPaleyCharacterization ∧ E.bmoCarlesonDuality

theorem carleson_measure_embedding_closed_from_evidence
    {C : CarlesonMeasurePackage} (E : CarlesonMeasureEmbeddingPackage C)
    (Ev : CarlesonMeasureEmbeddingEvidence E) : CarlesonMeasureEmbeddingClosed E := by
  exact And.intro Ev.carlesonEmbeddingInequalityClosed
    (And.intro Ev.littlewoodPaleyCharacterizationClosed Ev.bmoCarlesonDualityClosed)

end CCEmbeddingTheoremCanonicalLaneLean
end HautevilleHouse
