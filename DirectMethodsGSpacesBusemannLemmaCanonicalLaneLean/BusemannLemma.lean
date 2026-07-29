import canonicalLaneMathlib.AdmissibleClass

/-!
# Busemann Lemma Package
-/

namespace HautevilleHouse
namespace DirectMethodsGSpacesBusemannLemmaCanonicalLaneLean

structure BusemannLemmaPackage {G : GSpacePackage} (B : BusemannFunctionPackage G) where
  stationarySetNonempty : Prop
  stationarySetConvex : Prop
  busemannFunctionConstantOnStationary : Prop
  anyRayWithSameAsymptoteGivesSameBusemann : Prop
  busemannFunctionIsBoundaryPoint : Prop

def BusemannLemmaClosed {G : GSpacePackage} {B : BusemannFunctionPackage G} (L : BusemannLemmaPackage B) : Prop :=
  L.stationarySetNonempty ∧ L.stationarySetConvex ∧ L.busemannFunctionConstantOnStationary ∧
  L.anyRayWithSameAsymptoteGivesSameBusemann ∧ L.busemannFunctionIsBoundaryPoint

end DirectMethodsGSpacesBusemannLemmaCanonicalLaneLean
end HautevilleHouse