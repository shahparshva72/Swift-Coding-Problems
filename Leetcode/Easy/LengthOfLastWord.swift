func lengthOfLastWord(_ s: String) -> Int {
    let strArray = s.components(separatedBy: " ").filter {
        !$0.isEmpty
    }

    return strArray[strArray.endIndex - 1].count
}

print(lengthOfLastWord("   fly me   to   the moon  "))