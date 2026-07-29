import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CCEmbeddingTheoremCanonicalLaneLean

structure CauciRiemannAnalyticFoundation where
  cauchyRiemann : CauchyRiemannPDEPackage
  cauchyRiemannEvidence : CauchyRiemannPDEEvidence cauchyRiemann
  kaehler : KaehlerMetricPackage cauchyRiemann
  kaehlerEvidence : KaehlerMetricEvidence kaehler
  mongeAmpere : ComplexMongeAmperePackage kaehler
  mongeAmpereEvidence : ComplexMongeAmpereEvidence mongeAmpere
  tianProperness : TianPropernessEnergyPackage mongeAmpere
  tianPropernessEvidence : TianPropernessEnergyEvidence tianProperness

def CauciRiemannAnalyticFoundationClosed (A : CauciRiemannAnalyticFoundation) : Prop :=
  CauchyRiemannPDEClosed A.cauchyRiemann ∧
  KaehlerMetricClosed A.kaehler ∧
  ComplexMongeAmpereClosed A.mongeAmpere ∧
  TianPropernessEnergyClosed A.tianProperness

theorem cauci_riemann_analytic_foundation_closed_from_evidence
    (A : CauciRiemannAnalyticFoundation) :
    CauciRiemannAnalyticFoundationClosed A := by
  exact And.intro (cauchy_riemann_pde_closed_from_evidence A.cauchyRiemann A.cauchyRiemannEvidence)
    (And.intro (kaehler_metric_closed_from_evidence A.kaehler A.kaehlerEvidence)
      (And.intro (complex_monge_ampere_closed_from_evidence A.mongeAmpere A.mongeAmpereEvidence)
        (tian_properness_energy_closed_from_evidence A.tianProperness A.tianPropernessEvidence)))

end CCEmbeddingTheoremCanonicalLaneLean
end HautevilleHouse