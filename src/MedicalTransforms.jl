module MedicalTransforms

include("./crop.jl")
include("./utils.jl")

export 
    crop_foreground,
    spatial_crop,
    generate_spatial_bounding_box
end
