import HautevilleHouse.DirectMethodsGSpacesBusemannLemmaCanonicalLaneLean.BusemannLemma

namespace HautevilleHouse
namespace DirectMethodsGSpacesBusemannLemmaCanonicalLaneLean

structure AngleComparisonPackage {G : GSpacePackage} {B : BusemannFunctionPackage G}
    (L : BusemannLemmaPackage G B) where
  comparisonInequality : Prop
  angleBoundFromDistance : Prop
  rigidityAtEquality : Prop
  comparisonInequalityClosed : comparisonInequality
  angleBoundFromDistanceClosed : angleBoundFromDistance
  rigidityAtEqualityClosed : rigidityAtEquality

end DirectMethodsGSpacesBusemannLemmaCanonicalLaneLean
end HautevilleHouse