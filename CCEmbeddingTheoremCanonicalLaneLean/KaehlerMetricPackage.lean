import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CCEmbeddingTheoremCanonicalLaneLean

structure KaehlerMetricPackage (C : CauchyRiemannPDEPackage) where
  metricTensor : Type u
  kaehlerCondition : Prop
  firstChernClass : Type v
  ricciCurvatureComputed : Prop
  scalarCurvatureComputed : Prop

structure KaehlerMetricEvidence {C : CauchyRiemannPDEPackage}
    (K : KaehlerMetricPackage C) where
  kaehlerConditionClosed : K.kaehlerCondition
  ricciCurvatureComputedClosed : K.ricciCurvatureComputed
  scalarCurvatureComputedClosed : K.scalarCurvatureComputed

def KaehlerMetricClosed {C : CauchyRiemannPDEPackage}
    (K : KaehlerMetricPackage C) : Prop :=
  K.kaehlerCondition ∧ K.ricciCurvatureComputed ∧ K.scalarCurvatureComputed

theorem kaehler_metric_closed_from_evidence {C : CauchyRiemannPDEPackage}
    (K : KaehlerMetricPackage C) (E : KaehlerMetricEvidence K) :
    KaehlerMetricClosed K := by
  exact And.intro E.kaehlerConditionClosed
    (And.intro E.ricciCurvatureComputedClosed E.scalarCurvatureComputedClosed)

end CCEmbeddingTheoremCanonicalLaneLean
end HautevilleHouse