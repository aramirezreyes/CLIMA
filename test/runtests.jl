using Test, Pkg

for submodule in ["Utilities/ParametersType",
                  "Utilities/PlanetParameters",
                  "Utilities/RootSolvers",
                  "Utilities/MoistThermodynamics",
                  "ClimaAtmos/Parameterizations/SurfaceFluxes",
                  "ClimaAtmos/Parameterizations/TurbulenceConvection",
                  "Mesh",
                  "DGmethods",
                  ]

  println("Testing $submodule")
  include(joinpath("../src",submodule,"test/runtests.jl"))
end
