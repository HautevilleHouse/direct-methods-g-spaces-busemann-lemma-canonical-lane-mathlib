import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectMethodsGSpacesBusemannLemmaCanonicalLaneLean

structure GSpaceAdmittedObject where
  space : Type u
  topology : TopologicalSpace space
  gStructure : Type v
  busemannFunction : space → ℝ
  busemannConvex : Prop
  horosphereDefined : Prop
  conclusion : busemannConvex ∧ horosphereDefined

def GSpaceWitnessClosed (O : GSpaceAdmittedObject) : Prop :=
  O.busemannConvex ∧ O.horosphereDefined

end DirectMethodsGSpacesBusemannLemmaCanonicalLaneLean
end HautevilleHouse