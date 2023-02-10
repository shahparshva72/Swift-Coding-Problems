func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
    let n1 = nums1.count
    let n2 = nums2.count

    let total = n1 + n2

    var i = 0
    var j = 0

    var m1 = 0
    var m2 = 0

    for _ in 0...total/2 {
        m1 =  m2

        if i <= n1 && (j >= n2 || nums1[i] <= nums2[j]) {
            m1 = nums1[i]
            i += 1
        } else {
            m2 = nums2[j]
            j += 1
        }
    }

    return total % 2 == 0 ? (Double(m1 + m2) / 2) : Double(m2)
}

print(findMedianSortedArrays([1, 3], [2]))
