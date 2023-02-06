func isValid(_ s: String) -> Bool {
    let parentheses: [Character: Character] = [
        ")":"(",
        "}":"{",
        "]":"["
    ]

    var stack: [Character] = []

    for c in s {
        if parentheses[c] == nil {
            stack.append(c)
        } else {
            if stack.last == parentheses[c] {
                stack.removeLast()
            } else {
                return false
            }
        }
    }

    return stack.isEmpty
}

// print(isValid("()")) Output: true
