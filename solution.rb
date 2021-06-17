# Brute Force O(n^2) Solution:

def num_pair(arr, target)
  result = []
  for i in 0...arr.length
    for j in 0...arr.length
      if target - arr[i] == arr[j] && !result.include?(arr[j])
        result << arr[i]
        result << target-arr[i]
      end
      j += 1
    end
    i += 1
  end
  result
end

nums = [2, 7, 11, 15]
p num_pair(nums, 9)
