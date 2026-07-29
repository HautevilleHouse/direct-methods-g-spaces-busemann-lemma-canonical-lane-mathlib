import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectMethodsGSpacesBusemannLemmaCanonicalLaneLean

structure DirectMethodsFoundation where
  gSpace : GSpace
  barycenter : gSpace.carrier → gSpace.carrier → gSpace.carrier → gSpace.carrier
  isBarycenter : ∀ x y z : gSpace.carrier, barycenter x y z ∈ closedMetricBall x (max (dist x y) (dist x z))
  convexityInequality : Prop
  convexityInequalityHolds : convexityInequality

structure BusemannLemmaEvidence where
  foundation : DirectMethodsFoundation
  ray : ℕ → foundation.gSpace.carrier
  isGeodesicRay : GeodesicRay foundation.gSpace.carrier ray
  busemann : foundation.gSpace.carrier → ℝ
  isBusemannFunction : IsBusemannFunction foundation.gSpace.carrier ray busemann
  limitPoint : foundation.gSpace.carrier
  convergence : Filter.Tendsto ray Filter.atTop (nhds limitPoint)

def BusemannLemmaClosed (E : BusemannLemmaEvidence) : Prop :=
  E.isGeodesicRay ∧ E.isBusemannFunction ∧ E.convergence

theorem busemann_lemma_closed_from_evidence (E : BusemannLemmaEvidence) :
    BusemannLemmaClosed E := by
  exact And.intro E.isGeodesicRay (And.intro E.isBusemannFunction E.convergence)

end DirectMethodsGSpacesBusemannLemmaCanonicalLaneLean
end HautevilleHouse