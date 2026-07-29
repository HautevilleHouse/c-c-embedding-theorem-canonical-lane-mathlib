import canonicalLaneMathlib.AdmissibleClass
import CCEmbeddingTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CCEmbeddingTheoremCanonicalLaneLean

structure EuclideanSpace where
  dimension : ℕ
  innerProduct : Type u
  isEuclidean : Prop

structure RiemannianManifold where
  carrier : Type u
  metric : Type v
  smoothAtlas : Type w
  riemannianStructure : Prop
  curvatureBounded : Prop

structure EmbeddingPair where
  source : RiemannianManifold
  target : EuclideanSpace
  embeddingMap : source.carrier → target.innerProduct
  isIsometric : Prop
  isSmooth : Prop
  curvatureCompatibility : Prop

end CCEmbeddingTheoremCanonicalLaneLean
end HautevilleHouse