int sumOfUnique(int* nums, int numsSize){
    int i,j;
    int sum=0;
for(i=0;i<numsSize;i++)
{
   for(j=0;j<numsSize;j++)
   {
       if(nums[i]==nums[j] && i!=j)
          break;
   }
       if(j==numsSize)
       {
           sum=sum+nums[i];
       }
   }
   return sum;
}