import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CCEmbeddingTheoremCanonicalLaneLean

structure TianPropernessEnergyPackage {C : CauchyRiemannPDEPackage}
    {K : KaehlerMetricPackage C} (M : ComplexMongeAmperePackage K) where
  energyFunctional : Type u
  propernessCondition : Prop
  jFlowLowerBound : Prop
  coercivityConstant : Prop

structure TianPropernessEnergyEvidence {C : CauchyRiemannPDEPackage}
    {K : KaehlerMetricPackage C} {M : ComplexMongeAmperePackage K}
    (T : TianPropernessEnergyPackage M) where
  propernessConditionClosed : T.propernessCondition
  jFlowLowerBoundClosed : T.jFlowLowerBound
  coercivityConstantClosed : T.coercivityConstant

def TianPropernessEnergyClosed {C : CauchyRiemannPDEPackage}
    {K : KaehlerMetricPackage C} {M : ComplexMongeAmperePackage K}
    (T : TianPropernessEnergyPackage M) : Prop :=
  T.propernessCondition ∧ T.jFlowLowerBound ∧ T.coercivityConstant

theorem tian_properness_energy_closed_from_evidence {C : CauchyRiemannPDEPackage}
    {K : KaehlerMetricPackage C} {M : ComplexMongeAmperePackage K}
    (T : TianPropernessEnergyPackage M) (E : TianPropernessEnergyEvidence T) :
    TianPropernessEnergyClosed T := by
  exact And.intro E.propernessConditionClosed
    (And.intro E.jFlowLowerBoundClosed E.coercivityConstantClosed)

end CCEmbeddingTheoremCanonicalLaneLean
end HautevilleHouse