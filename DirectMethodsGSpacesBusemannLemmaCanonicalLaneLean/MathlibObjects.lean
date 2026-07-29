import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectMethodsGSpacesBusemannLemmaCanonicalLaneLean

structure BusemannSpace where
  carrier : Type u
  topology : TopologicalSpace carrier
  metric : carrier → carrier → ℝ
  isMetricSpace : MetricSpace carrier
  geodesic : Prop
  nonpositiveCurvature : Prop
  catZero : CAT(0)Space carrier

structure BusemannRay where
  space : BusemannSpace
  indexSet : ℕ → space.carrier
  isGeodesicRay : GeodesicRay space.carrier indexSet

structure BusemannFunction where
  space : BusemannSpace
  ray : BusemannRay
  func : space.carrier → ℝ
  isBusemann : ∀ x, func x = liminf (fun n => space.metric x (ray.indexSet n) - space.metric (ray.indexSet 0) (ray.indexSet n))

structure BusemannLemmaAdmittedObject where
  space : BusemannSpace
  ray : BusemannRay
  busemann : BusemannFunction

  busemannExists : Nonempty (BusemannFunction)
  conclusions : Prop
  conclusion : conclusions

def BusemannWitnessClosed (O : BusemannLemmaAdmittedObject) : Prop :=
  O.conclusions

end DirectMethodsGSpacesBusemannLemmaCanonicalLaneLean
end HautevilleHouse