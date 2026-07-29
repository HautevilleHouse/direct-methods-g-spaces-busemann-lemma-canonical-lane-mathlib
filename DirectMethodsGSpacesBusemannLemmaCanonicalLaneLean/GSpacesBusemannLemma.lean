import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectMethodsGSpacesBusemannLemmaCanonicalLaneLean

structure GSpace where
  carrier : Type u
  metric : carrier → carrier → ℝ
  isMetricSpace : MetricSpace carrier
  geodesic : Prop
  nonempty : Nonempty carrier
  proper : Prop
  isProperGeodesic : IsProperGeodesicSpace carrier
  nonpositiveCurvature : Prop
  catZero : CAT(0)Space carrier

structure BusemannFunction (X : GSpace) (γ : ℕ → X.carrier) where
  b : X.carrier → ℝ
  isBusemann : ∀ x : X.carrier, b x = liminf (fun n => X.metric x (γ n) - X.metric (γ 0) (γ n))
  lipschitz : LipschitzWith 1 b
  convex : ConvexOn ℝ b
  asymptoticallyLinear : AsymptoticLinear X.carrier b

structure BusemannLemmaSetup (X : GSpace) (γ : ℕ → X.carrier) where
  ray : GeodesicRay X.carrier γ
  busemann : BusemannFunction X γ
  limitPoint : X.carrier
  rayConverges : ∃ x : X.carrier, Filter.Tendsto γ Filter.atTop (nhds x)

end DirectMethodsGSpacesBusemannLemmaCanonicalLaneLean
end HautevilleHouse