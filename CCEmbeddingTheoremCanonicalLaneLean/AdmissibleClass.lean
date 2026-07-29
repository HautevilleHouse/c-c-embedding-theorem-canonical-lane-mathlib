import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CCEmbeddingTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : CCAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CCWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CCEmbeddingTheoremCanonicalLaneLean
end HautevilleHouse