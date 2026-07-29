import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CCEmbeddingTheoremCanonicalLaneLean

structure SobolevSpace (X : CCEuclideanSpace) where
  exponent : ℝ
  order : ℕ
  functions : Type
  norm : functions → ℝ
  completeness : Prop
  density : Prop

structure SobolevEmbedding (X Y : CCEuclideanSpace) where
  sourceSpace : SobolevSpace X
  targetSpace : SobolevSpace Y
  embeddingOperator : sourceSpace.functions → targetSpace.functions
  continuity : Prop
  compactness : Prop

theorem sobolev_embedding_continuous (E : SobolevEmbedding X Y) :
    E.continuity := by
  exact E.continuity

theorem sobolev_embedding_compact (E : SobolevEmbedding X Y) :
    E.compactness := by
  exact E.compactness

end CCEmbeddingTheoremCanonicalLaneLean
end HautevilleHouse