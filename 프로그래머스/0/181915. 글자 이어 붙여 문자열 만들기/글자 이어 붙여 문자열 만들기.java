import java.lang.*;
class Solution {
    public String solution(String my_string, int[] index_list) {
        StringBuilder sb = new StringBuilder(my_string);
        StringBuilder result = new StringBuilder();
        
        for(int i : index_list) {
            result.append(sb.charAt(i));
        }
        return result.toString();
    
    }
}