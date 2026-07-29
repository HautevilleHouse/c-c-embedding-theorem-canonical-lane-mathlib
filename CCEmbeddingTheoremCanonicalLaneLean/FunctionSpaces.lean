import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CCEmbeddingTheoremCanonicalLaneLean

structure FunctionSpace where
  domain : Type
  regularity : Prop
  normStructure : Prop

def FunctionSpaceClosed (F : FunctionSpace) : Prop :=
  F.regularity ∧ F.normStructure

structure FunctionSpaceEvidence (F : FunctionSpace) where
  regularityClosed : F.regularity
  normStructureClosed : F.normStructure

theorem function_space_closed_from_evidence (F : FunctionSpace) (E : FunctionSpaceEvidence F) :
    FunctionSpaceClosed F := by
  exact And.intro E.regularityClosed E.normStructureClosed

end CCEmbeddingTheoremCanonicalLaneLean
end HautevilleHouse