_ndims(::Type{CartesianIndex{N}}) where N = N
_ndims(::Type{Int64}) = 1

"""
	generate_spatial_bounding_box(img, select_function)

Generate the spatial bounding box of foreground in the image with start-end positions.
Users can define arbitrary function to select expected foreground from the whole image or specified channels.
And it can also add margin to every dim of the bounding box.
"""
function generate_spatial_bounding_box(img, select_function)
	idx = findall(select_function, img)
	N = _ndims(eltype(idx))
	start_bounds = map(d -> minimum(getindex.(idx, d)), 1:N)
	end_bounds = map(d -> maximum(getindex.(idx, d)), 1:N)
	return start_bounds, end_bounds
end

function generate_spatial_bounding_box(img, select_function, channel_indices)
	idx = findall(select_function, img[channel_indices...])
	N = _ndims(eltype(idx))
	start_bounds = map(d -> minimum(getindex.(idx, d)), 1:N)
	end_bounds = map(d -> maximum(getindex.(idx, d)), 1:N)
	return start_bounds, end_bounds
end