import canonicalLaneMathlib.AdmissibleClass

/-!
# G-Space Package
-/

namespace HautevilleHouse
namespace DirectMethodsGSpacesBusemannLemmaCanonicalLaneLean

structure GSpacePackage where
  carrierSet : Type u
  metric : carrierSet → carrierSet → ℝ
  metricPositiveDefinite : Prop
  metricSymmetric : Prop
  metricTriangleInequality : Prop
  metricCompleteness : Prop
  metricStrictConvexity : Prop

def GSpaceClosed (G : GSpacePackage) : Prop :=
  G.metricPositiveDefinite ∧ G.metricSymmetric ∧ G.metricTriangleInequality ∧
  G.metricCompleteness ∧ G.metricStrictConvexity

end DirectMethodsGSpacesBusemannLemmaCanonicalLaneLean
end HautevilleHouse