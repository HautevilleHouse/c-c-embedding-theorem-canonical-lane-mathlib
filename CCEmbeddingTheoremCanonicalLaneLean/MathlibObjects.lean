import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace CCEmbeddingTheoremCanonicalLaneLean

structure CCEuclideanSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  norm : carrier → ℝ
  innerProduct : carrier → carrier → ℝ

structure CCAdmittedObject where
  source : CCEuclideanSpace
  target : CCEuclideanSpace
  mapping : source.carrier → target.carrier
  isEmbedding : Prop
  isClosed : Prop
  conclusion : isEmbedding

structure CCEndgameState where
  object : CCAdmittedObject

def CCWitnessClosed (O : CCAdmittedObject) : Prop :=
  O.isEmbedding

end CCEmbeddingTheoremCanonicalLaneLean
end HautevilleHouse