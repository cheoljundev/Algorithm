import java.util.*;
class Solution {
    public int[] solution(int[] num_list, int n) {
        int[] a = Arrays.copyOfRange(num_list, 0, n);
        int[] b = Arrays.copyOfRange(num_list, n, num_list.length);
        int[] result = new int[num_list.length];
        
        for(int i = 0; i < b.length; i++) {
            result[i] = b[i];
        }
        
        for(int i = b.length, j = 0; i < result.length; i++, j++) {
            result[i] = a[j];
        }
        return result;
        
    }
}