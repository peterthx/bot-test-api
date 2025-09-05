def validate_score(score):
    if 0 <= score <= 100:
        return "Valid score"
    else:
        return "Invalid score"

# Test cases using Boundary Value Analysis
test_cases = [-1, 0, 1, 99, 100, 101]

for test in test_cases:
    result = validate_score(test)
    print(f"Score: {test}, Result: {result}")