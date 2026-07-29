import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectMethodsGSpacesBusemannLemmaCanonicalLaneLean

def ConstrainedBusemannClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_busemann_endgame (A : AdmissibleClass) :
    ConstrainedBusemannClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DirectMethodsGSpacesBusemannLemmaCanonicalLaneLean
end HautevilleHouse