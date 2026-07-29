import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectMethodsGSpacesBusemannLemmaCanonicalLaneLean

structure GSpaceObject where
  carrier : Type u
  metric : carrier → carrier → ℝ
  isMetricSpace : MetricSpace carrier
  isProper : ProperSpace carrier
  isGeodesic : GeodesicSpace carrier
  basepoint : carrier

def GSpaceWitnessClosed (O : GSpaceObject) : Prop :=
  True

structure GSpaceBundle where
  space : GSpaceObject
  basepointAction : carrier → carrier

def basepoint (b : GSpaceBundle) : b.space.carrier := b.space.basepoint

end DirectMethodsGSpacesBusemannLemmaCanonicalLaneLean
end HautevilleHouse
