import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CCEmbeddingTheoremCanonicalLaneLean

structure CauchyRiemannPDEPackage where
  complexManifold : Type u
  complexStructure : Prop
  cauchyRiemannOperator : Type v
  integrabilityCondition : Prop
  smoothDependence : Prop

structure CauchyRiemannPDEEvidence (C : CauchyRiemannPDEPackage) where
  complexStructureClosed : C.complexStructure
  integrabilityConditionClosed : C.integrabilityCondition
  smoothDependenceClosed : C.smoothDependence

def CauchyRiemannPDEClosed (C : CauchyRiemannPDEPackage) : Prop :=
  C.complexStructure ∧ C.integrabilityCondition ∧ C.smoothDependence

theorem cauchy_riemann_pde_closed_from_evidence (C : CauchyRiemannPDEPackage)
    (E : CauchyRiemannPDEEvidence C) : CauchyRiemannPDEClosed C := by
  exact And.intro E.complexStructureClosed
    (And.intro E.integrabilityConditionClosed E.smoothDependenceClosed)

end CCEmbeddingTheoremCanonicalLaneLean
end HautevilleHouse