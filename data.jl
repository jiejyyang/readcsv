using CSV
using DataFrames

file_path = "C:/Users/JIE/Desktop/data_with_classes.csv"
df = CSV.read(file_path, DataFrame)

matclass1 = []
matclass2 = []
matclass3 = []


for row in eachrow(df)
    if row.Class == 1
        push!(matclass1, [row.Dim1, row.Dim2, row.Dim3, row.Dim4, row.Dim5, row.Class])
    elseif row.Class == 2
        push!(matclass2, [row.Dim1, row.Dim2, row.Dim3, row.Dim4, row.Dim5, row.Class])
    elseif row.Class == 3
        push!(matclass3, [row.Dim1, row.Dim2, row.Dim3, row.Dim4, row.Dim5, row.Class])
    end
end


println("Class 1:")
for data in matclass1
    println(data)
end

println("\nClass 2:")
for data in matclass2
    println(data)
end

println("\nClass 3:")
for data in matclass3
    println(data)
end

