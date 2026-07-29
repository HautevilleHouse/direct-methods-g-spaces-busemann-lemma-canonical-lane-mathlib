import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectMethodsGSpacesBusemannLemmaCanonicalLaneLean

structure GSpace where
  carrier : Type u
  metric : carrier → carrier → ℝ
  metricNonnegative : ∀ x y, metric x y ≥ 0
  metricZeroIffEq : ∀ x y, metric x y = 0 ↔ x = y
  metricSymmetric : ∀ x y, metric x y = metric y x
  triangleInequality : ∀ x y z, metric x z ≤ metric x y + metric y z
  complete : Prop
  geodesic : Prop

structure BusemannFunction (X : GSpace) where
  ray : ℕ → X.carrier
  isRay : ∀ n m, n ≤ m → X.metric (ray n) (ray m) = (X.metric (ray 0) (ray n) - X.metric (ray 0) (ray m)).abs
  limitAtInfinity : ∀ x : X.carrier, ∃ L : ℝ, Filter.Tendsto (λ n => X.metric x (ray n) - X.metric (ray 0) (ray n)) Filter.atTop (𝓝 L)
  busemannValue : X.carrier → ℝ
  busemannValueDef : ∀ x, busemannValue x = liminf (λ n => X.metric x (ray n) - X.metric (ray 0) (ray n))

def BusemannFunction.busemannClosed (X : GSpace) (b : BusemannFunction X) : Prop :=
  ∀ x : X.carrier, b.busemannValue x = liminf (λ n => X.metric x (b.ray n) - X.metric (b.ray 0) (b.ray n))

theorem busemann_function_busemannClosed (X : GSpace) (b : BusemannFunction X) : b.busemannClosed X := by
  intro x
  exact b.busemannValueDef x

end DirectMethodsGSpacesBusemannLemmaCanonicalLaneLean
end HautevilleHouse