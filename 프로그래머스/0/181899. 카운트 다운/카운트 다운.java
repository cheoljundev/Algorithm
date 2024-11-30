class Solution {
    public int[] solution(int start_num, int end_num) {
        int[] answer = new int[start_num - end_num + 1];
        
        for(int i = 0, j = start_num; j >= end_num; i++, j--) {
            answer[i] = j;
        }
        return answer;
    }
}