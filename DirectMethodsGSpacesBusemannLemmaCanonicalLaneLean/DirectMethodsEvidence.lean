import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DirectMethodsGSpacesBusemannLemmaCanonicalLaneLean.GStructure
import HautevilleHouse.DirectMethodsGSpacesBusemannLemmaCanonicalLaneLean.BusemannLemma

namespace HautevilleHouse
namespace DirectMethodsGSpacesBusemannLemmaCanonicalLaneLean

structure DirectMethodsEvidence (X : GSpace) (b : BusemannFunction X) (B : BusemannLemmaPackage X b) where
  subadditivityDerived : B.subadditivity
  convexityDerived : B.convexity
  lipschitzDerived : B.lipschitzContinuity
  busemannClosedDerived : b.busemannClosed X

structure DirectMethodsClosure (X : GSpace) (b : BusemannFunction X) (B : BusemannLemmaPackage X b) where
  evidence : DirectMethodsEvidence X b B
  closure : BusemannLemmaClosed X b B

theorem direct_methods_closure_from_evidence (X : GSpace) (b : BusemannFunction X) (B : BusemannLemmaPackage X b) (E : DirectMethodsEvidence X b B) : DirectMethodsClosure X b B := by
  refine {
    evidence := E
    closure := by
      exact And.intro E.subadditivityDerived (And.intro E.convexityDerived E.lipschitzDerived)
  }

end DirectMethodsGSpacesBusemannLemmaCanonicalLaneLean
end HautevilleHouse