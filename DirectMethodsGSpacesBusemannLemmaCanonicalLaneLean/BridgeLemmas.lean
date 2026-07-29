import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectMethodsGSpacesBusemannLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  GSpaceWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DirectMethodsGSpacesBusemannLemmaCanonicalLaneLean
end HautevilleHouse