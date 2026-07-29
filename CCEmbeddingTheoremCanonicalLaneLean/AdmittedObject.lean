import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CCEmbeddingTheoremCanonicalLaneLean

structure AdmittedObject where
  sourceManifold : Type u
  targetSpace : Type v
  embeddingExists : Prop
  embeddingExistsTerm : embeddingExists

end CCEmbeddingTheoremCanonicalLaneLean
end HautevilleHouse