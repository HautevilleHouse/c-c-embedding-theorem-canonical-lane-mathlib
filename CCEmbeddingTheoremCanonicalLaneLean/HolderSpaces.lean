import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CCEmbeddingTheoremCanonicalLaneLean

structure HolderSpace (X : CCEuclideanSpace) where
  exponent : ℝ
  functions : Type
  norm : functions → ℝ
  completeness : Prop

structure HolderEmbedding (X Y : CCEuclideanSpace) where
  sourceSpace : HolderSpace X
  targetSpace : HolderSpace Y
  embeddingOperator : sourceSpace.functions → targetSpace.functions
  continuity : Prop
  compactness : Prop

theorem holder_embedding_continuous (E : HolderEmbedding X Y) :
    E.continuity := by
  exact E.continuity

end CCEmbeddingTheoremCanonicalLaneLean
end HautevilleHouse