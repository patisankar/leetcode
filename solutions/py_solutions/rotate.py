def rotate(self, nums: List[int], k: int) -> None:
    k %= len(nums)
    nums[k:], nums[:k] = nums[:-k], nums[-k:]
rotate([1,2,3,4,5,6,7],2)