include("./imports.jl")

@testset ExtendedTestSet "crop_foreground" begin
    @testset ExtendedTestSet "crop_foreground" begin
    x = [1 1 0 0; 1 1 0 0]
    x_crop = crop_foreground(x, x -> x > 0)
    @test x_crop == [1 1;1 1] 
    end

    @testset ExtendedTestSet "crop_foreground" begin
    x = [1 1 0 0; 1 1 0 0]
    x_crop = crop_foreground(x, x -> x < 1)
    @test x_crop == [0 0; 0 0]
    end
end