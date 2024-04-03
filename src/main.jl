@time begin

include("ahp.jl")
include("topsis.jl")

comparison_matrix = [
    [1, 1, 3],
    [1, 1, 5],
    [1/3, 1/5, 1]
]

number_of_criteria = length(comparison_matrix[1])

ahp_result = ahp()

criteria_type = ["cost", "benefit", "cost"]
weight = ahp_result["priority_vector"]

decision_matrix = [
    [1100, 5, 25],
    [850, 3.5, 10],
    [950, 4, 30]
]

topsis_result = topsis()

end
