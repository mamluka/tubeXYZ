!
!  NanoTubeContainer.f90
!
!  Free-Format Fortran Source File 
!  Generated by PGI Visual Fortran(R)
!  10/5/2011 11:46:45 PM
!
module class_NanoTubeContainer
use class_NanoTube
implicit none

	type NanoTubeContainer
		type (NanoTube) :: Tube
		real ,allocatable :: xyz(:,:,:,:)
	end type NanoTubeContainer

	contains

	function make_NanoTubeContainer(tube) result (outNanoTubeContainer)
		type (NanoTube) :: tube
		real ,allocatable :: xyz(:,:,:,:)
		type (NanoTubeContainer) :: outNanoTubeContainer

		call AllocateXYZArray(tube,xyz)

		outNanoTubeContainer = NanoTubeContainer(tube,xyz)

	end function make_NanoTubeContainer
	

end module class_NanoTubeContainer