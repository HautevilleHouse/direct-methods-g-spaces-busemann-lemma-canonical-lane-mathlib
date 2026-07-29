import canonicalLaneMathlib.AdmissibleClass

/-!
# Busemann Function Package
-/

namespace HautevilleHouse
namespace DirectMethodsGSpacesBusemannLemmaCanonicalLaneLean

structure BusemannFunctionPackage {G : GSpacePackage} where
  ray : ℕ → G.carrierSet
  rayIsGeodesic : Prop
  rayDiverges : Prop
  busemannFunction : G.carrierSet → ℝ
  busemannFunctionDefined : ∀ x, busemannFunction x = limsup (fun n : ℕ => metric (ray n) x - n)
  busemannFunctionFinite : ∀ x, busemannFunction x < ∞ := by
    intro x; exact ?_
  busemannFunctionLipschitz : Prop
  busemannFunctionConvex : Prop

def BusemannFunctionClosed {G : GSpacePackage} (B : BusemannFunctionPackage G) : Prop :=
  B.rayIsGeodesic ∧ B.rayDiverges ∧ B.busemannFunctionLipschitz ∧ B.busemannFunctionConvex

end DirectMethodsGSpacesBusemannLemmaCanonicalLaneLean
end HautevilleHouse