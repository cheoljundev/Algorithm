class Solution {
    public String[] solution(String[] todo_list, boolean[] finished) {
        String resultStr = "";
        for(int i = 0; i < todo_list.length; i++) {
            if (!finished[i]) {
                resultStr += todo_list[i] + " ";
            }
        }
        resultStr.trim();
        return resultStr.split(" ");
    }
}