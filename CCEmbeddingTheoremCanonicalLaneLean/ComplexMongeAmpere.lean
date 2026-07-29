import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CCEmbeddingTheoremCanonicalLaneLean

structure ComplexMongeAmperePackage {C : CauchyRiemannPDEPackage}
    (K : KaehlerMetricPackage C) where
  mongeAmpereEquation : Prop
  hessianBound : Prop
  solutionExistence : Prop
  regularity : Prop

structure ComplexMongeAmpereEvidence {C : CauchyRiemannPDEPackage}
    {K : KaehlerMetricPackage C} (M : ComplexMongeAmperePackage K) where
  mongeAmpereEquationClosed : M.mongeAmpereEquation
  hessianBoundClosed : M.hessianBound
  solutionExistenceClosed : M.solutionExistence
  regularityClosed : M.regularity

def ComplexMongeAmpereClosed {C : CauchyRiemannPDEPackage}
    {K : KaehlerMetricPackage C} (M : ComplexMongeAmperePackage K) : Prop :=
  M.mongeAmpereEquation ∧ M.hessianBound ∧ M.solutionExistence ∧ M.regularity

theorem complex_monge_ampere_closed_from_evidence {C : CauchyRiemannPDEPackage}
    {K : KaehlerMetricPackage C} (M : ComplexMongeAmperePackage K)
    (E : ComplexMongeAmpereEvidence M) : ComplexMongeAmpereClosed M := by
  exact And.intro E.mongeAmpereEquationClosed
    (And.intro E.hessianBoundClosed
      (And.intro E.solutionExistenceClosed E.regularityClosed))

end CCEmbeddingTheoremCanonicalLaneLean
end HautevilleHouse