import canonicalLaneMathlib.AdmissibleClass

/-!
# Dirichlet Problem Package
-/

namespace HautevilleHouse
namespace DirectMethodsGSpacesBusemannLemmaCanonicalLaneLean

structure DirichletProblemPackage {G : GSpacePackage} where
  boundaryData : G.carrierSet → ℝ
  boundaryDataContinuous : Prop
  candidateFunction : G.carrierSet → ℝ
  candidateExtendsData : ∀ x, candidateFunction x = boundaryData x → candidateFunction x = boundaryData x
  candidateIsMaximalConvex : Prop
  candidateIsMinimalConvex : Prop
  solutionExists : Prop
  solutionUnique : Prop

def DirichletProblemClosed {G : GSpacePackage} (D : DirichletProblemPackage G) : Prop :=
  D.boundaryDataContinuous ∧ D.candidateExtendsData ∧ D.candidateIsMaximalConvex ∧
  D.candidateIsMinimalConvex ∧ D.solutionExists ∧ D.solutionUnique

end DirectMethodsGSpacesBusemannLemmaCanonicalLaneLean
end HautevilleHouse