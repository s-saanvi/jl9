a= [[1,2] [3,4]]
b= [[-1,-2] [-3,-4]]
println("Scalar multiplication(2*a)=$(2*a)")
println("Element-wise multiplication(a.*b)=$(a.*b)")
x=a'
e=a*x
println("Cross product(e)=$e")
function vecdot(v1::AbstractVector, v2::AbstractVector)
if length(v1) != length(v2)
throw(ArgumentError("Vectors must have the same length"))
end
dot_result = sum(v1 .* v2)
return dot_result
end
v1 = [1, 2, 3]
v2 = [4, 5, 6]
dot_product = vecdot(v1, v2)
println("Dot-product of v1 & v2= $dot_product")