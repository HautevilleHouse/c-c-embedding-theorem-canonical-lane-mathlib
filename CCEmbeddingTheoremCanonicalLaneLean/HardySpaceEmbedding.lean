import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CCEmbeddingTheoremCanonicalLaneLean

structure HardySpacePackage where
  domain : Type u
  analyticFunctions : Type v
  supNormFinite : Prop
  boundaryValuesDefined : Prop

structure HardySpaceEmbeddingPackage (H : HardySpacePackage) where
  carlemanTransfer : Prop
  boundaryIntegralFinite : Prop
  analyticContinuationPossible : Prop

structure HardySpaceEmbeddingEvidence {H : HardySpacePackage} (E : HardySpaceEmbeddingPackage H) where
  carlemanTransferClosed : E.carlemanTransfer
  boundaryIntegralFiniteClosed : E.boundaryIntegralFinite
  analyticContinuationPossibleClosed : E.analyticContinuationPossible

def HardySpaceEmbeddingClosed {H : HardySpacePackage} (E : HardySpaceEmbeddingPackage H) : Prop :=
  E.carlemanTransfer ∧ E.boundaryIntegralFinite ∧ E.analyticContinuationPossible

theorem hardy_space_embedding_closed_from_evidence
    {H : HardySpacePackage} (E : HardySpaceEmbeddingPackage H)
    (Ev : HardySpaceEmbeddingEvidence E) : HardySpaceEmbeddingClosed E := by
  exact And.intro Ev.carlemanTransferClosed (And.intro Ev.boundaryIntegralFiniteClosed Ev.analyticContinuationPossibleClosed)

end CCEmbeddingTheoremCanonicalLaneLean
end HautevilleHouse
