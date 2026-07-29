import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CCEmbeddingTheoremCanonicalLaneLean

structure CCAdmittedObject where
  sourceManifold : Type u
  targetManifold : Type v
  embedding : sourceManifold → targetManifold
  conditionsSatisfied : Prop
  conclusion : conditionsSatisfied

def CCWitnessClosed (O : CCAdmittedObject) : Prop :=
  O.conditionsSatisfied

end CCEmbeddingTheoremCanonicalLaneLean
end HautevilleHouse