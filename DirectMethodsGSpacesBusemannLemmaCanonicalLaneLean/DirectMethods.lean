import canonicalLaneMathlib.AdmissibleClass
import DirectMethodsGSpacesBusemannLemmaCanonicalLaneLean.BusemannLemma

namespace HautevilleHouse
namespace DirectMethodsGSpacesBusemannLemmaCanonicalLaneLean

structure DirectMethodsPackage {G : GSpaceBundle} {B : BusemannFunctionPackage G} {L : BusemannLemmaPackage B} where
  variationalPrinciple : Prop
  weakConvergence : Prop

structure DirectMethodsEvidence {G : GSpaceBundle} {B : BusemannFunctionPackage G} {L : BusemannLemmaPackage B} (D : DirectMethodsPackage L) where
  variationalPrincipleClosed : D.variationalPrinciple
  weakConvergenceClosed : D.weakConvergence

def DirectMethodsClosed {G : GSpaceBundle} {B : BusemannFunctionPackage G} {L : BusemannLemmaPackage B} (D : DirectMethodsPackage L) : Prop :=
  D.variationalPrinciple ∧ D.weakConvergence

theorem direct_methods_closed_from_evidence {G : GSpaceBundle} {B : BusemannFunctionPackage G} {L : BusemannLemmaPackage B} (D : DirectMethodsPackage L) (E : DirectMethodsEvidence D) :
  DirectMethodsClosed D := by
  exact And.intro E.variationalPrincipleClosed E.weakConvergenceClosed

end DirectMethodsGSpacesBusemannLemmaCanonicalLaneLean
end HautevilleHouse
