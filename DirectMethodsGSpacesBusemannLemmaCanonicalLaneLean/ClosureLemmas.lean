import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DirectMethodsGSpacesBusemannLemmaCanonicalLaneLean.GStructure

namespace HautevilleHouse
namespace DirectMethodsGSpacesBusemannLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ∀ (X : GSpace) (b : BusemannFunction X), BusemannLemmaClosed X b (by
    exact A.object)

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  intro X b
  -- A.object is an object of the admissible class, which provides the BusemannLemmaPackage
  have h := A.object.property X b
  exact h

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

end DirectMethodsGSpacesBusemannLemmaCanonicalLaneLean
end HautevilleHouse