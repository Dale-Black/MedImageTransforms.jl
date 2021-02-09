include("./imports.jl")

@testset ExtendedTestSet "generate_spatial_bounding_box" begin
    @testset ExtendedTestSet "generate_spatial_bounding_box" begin
    x = [0 1 1 0; 0 1 1 0]
    roi_start, roi_end = generate_spatial_bounding_box(x, x -> x > 0)
    @test roi_start == [1, 2] && roi_end == [2, 3]
    end
end