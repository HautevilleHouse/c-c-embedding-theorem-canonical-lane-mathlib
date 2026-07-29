import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CCEmbeddingTheoremCanonicalLaneLean

structure CoronaPackage where
  domainBoundary : Type u
  innerFunctionData : Type v
  factorizationPossible : Prop
  globalBound : Prop

structure CoronaTheoremPackage (C : CoronaPackage) where
  boundedHolomorphicFactorization : Prop
  carlesonMeasureCondition : Prop
  decompositionConstructed : Prop

structure CoronaTheoremEvidence {C : CoronaPackage} (T : CoronaTheoremPackage C) where
  boundedHolomorphicFactorizationClosed : T.boundedHolomorphicFactorization
  carlesonMeasureConditionClosed : T.carlesonMeasureCondition
  decompositionConstructedClosed : T.decompositionConstructed

def CoronaTheoremClosed {C : CoronaPackage} (T : CoronaTheoremPackage C) : Prop :=
  T.boundedHolomorphicFactorization ∧ T.carlesonMeasureCondition ∧ T.decompositionConstructed

theorem corona_theorem_closed_from_evidence
    {C : CoronaPackage} (T : CoronaTheoremPackage C)
    (E : CoronaTheoremEvidence T) : CoronaTheoremClosed T := by
  exact And.intro E.boundedHolomorphicFactorizationClosed
    (And.intro E.carlesonMeasureConditionClosed E.decompositionConstructedClosed)

end CCEmbeddingTheoremCanonicalLaneLean
end HautevilleHouse
