class Solution {
public:
    int maxProductDifference(std::vector<int>& nums) {
        std::sort(nums.begin(), nums.end());
        int n = nums.size();
        int product1 = nums[n - 1] * nums[n - 2];
        int product2 = nums[0] * nums[1];
        return product1 - product2;
    }
};