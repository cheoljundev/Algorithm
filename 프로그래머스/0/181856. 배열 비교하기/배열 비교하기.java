class Solution {
    public int solution(int[] arr1, int[] arr2) {
        if (arr2.length > arr1.length) {
            return -1;
        } else if (arr2.length < arr1.length) {
            return 1;
        } else {
            int arr1Sum = 0;
            int arr2Sum = 0;
            
            for(int i : arr1) {
                arr1Sum += i;
            }
            for(int i : arr2) {
                arr2Sum += i;
            }
            
            if (arr2Sum > arr1Sum) {
                return -1;
            } else if (arr2Sum < arr1Sum) {
                return 1;
            } else {
                return 0;
            }
            
        }
    }
}