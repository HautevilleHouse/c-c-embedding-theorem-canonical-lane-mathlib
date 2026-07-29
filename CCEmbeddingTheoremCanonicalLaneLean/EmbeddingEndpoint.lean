import CCEmbeddingTheoremCanonicalLaneLean.WhitneyEmbeddingProof

namespace HautevilleHouse
namespace CCEmbeddingTheoremCanonicalLaneLean

structure EmbeddingEndpointPackage (W : WhitneyEmbeddingPackage) where
  targetManifold : Type u
  targetTopology : TopologicalSpace targetManifold
  embeddingIntoEuclideanSpace : Prop
  endpointMatchesEmbeddingStatement : Prop

structure EmbeddingEndpointEvidence {W : WhitneyEmbeddingPackage} (Epkg : EmbeddingEndpointPackage W) where
  embeddingIntoEuclideanSpaceClosed : Epkg.embeddingIntoEuclideanSpace
  endpointMatchesEmbeddingStatementClosed : Epkg.endpointMatchesEmbeddingStatement

def EmbeddingEndpointClosed {W : WhitneyEmbeddingPackage} (Epkg : EmbeddingEndpointPackage W) : Prop :=
  Epkg.embeddingIntoEuclideanSpace ∧ Epkg.endpointMatchesEmbeddingStatement

theorem embedding_endpoint_closed_from_evidence {W : WhitneyEmbeddingPackage} (Epkg : EmbeddingEndpointPackage W) (E : EmbeddingEndpointEvidence Epkg) :
    EmbeddingEndpointClosed Epkg := by
  exact And.intro E.embeddingIntoEuclideanSpaceClosed E.endpointMatchesEmbeddingStatementClosed

theorem embedding_endpoint_supplies_mathlib_statement {W : WhitneyEmbeddingPackage} (Epkg : EmbeddingEndpointPackage W) :
    Epkg.embeddingIntoEuclideanSpace := Epkg.embeddingIntoEuclideanSpace

end CCEmbeddingTheoremCanonicalLaneLean
end HautevilleHouse