import java.util.*;

class Solution {
    public String[] solution(String my_string) {
        List<String> result = new ArrayList<>();
        
        for(String word : my_string.split(" ")) {
            if (!word.isEmpty()) {
                result.add(word);
            }
        }
        
        return result.toArray(new String[0]);
    }
}