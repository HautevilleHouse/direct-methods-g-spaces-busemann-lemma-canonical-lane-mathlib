import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectMethodsGSpacesBusemannLemmaCanonicalLaneLean

structure DirectMethodsFoundation where
  gSpacePackage : BusemannLemmaPackage
  gSpaceEvidence : BusemannLemmaEvidence gSpacePackage
  additionalStructures : Prop
  additionalEvidence : additionalStructures

def DirectMethodsFoundationClosed (A : DirectMethodsFoundation) : Prop :=
  BusemannLemmaClosed A.gSpacePackage ∧ A.additionalStructures

theorem direct_methods_foundation_closed_from_evidence
    (A : DirectMethodsFoundation) :
    DirectMethodsFoundationClosed A := by
  exact And.intro (busemann_lemma_closed_from_evidence A.gSpacePackage A.gSpaceEvidence)
    A.additionalEvidence

end DirectMethodsGSpacesBusemannLemmaCanonicalLaneLean
end HautevilleHouse