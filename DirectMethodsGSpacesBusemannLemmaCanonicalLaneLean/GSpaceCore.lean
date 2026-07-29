import HautevilleHouse.DirectMethodsGSpacesBusemannLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DirectMethodsGSpacesBusemannLemmaCanonicalLaneLean

structure GSpacePackage where
  Points : Type u
  distance : Points → Points → ℝ
  metricSpace : MetricSpace Points
  geodesicSpace : GeodesicSpace Points
  busemannConvex : Prop
  boundaryAtInfinity : Type v
  topologyBoundary : TopologicalSpace boundaryAtInfinity

structure GSpaceEvidence (G : GSpacePackage) where
  metricSpaceClosed : MetricSpace G.Points
  geodesicSpaceClosed : GeodesicSpace G.Points
  busemannConvexClosed : G.busemannConvex

def GSpaceWitnessClosed (O : GSpaceAdmittedObject) : Prop :=
  O.isComplete ∧ O.isGeodesic ∧ O.isBusemannNonpositive

theorem gspace_closed_from_evidence (G : GSpacePackage) (E : GSpaceEvidence G) :
    G.busemannConvex := by
  exact E.busemannConvexClosed

end DirectMethodsGSpacesBusemannLemmaCanonicalLaneLean
end HautevilleHouse