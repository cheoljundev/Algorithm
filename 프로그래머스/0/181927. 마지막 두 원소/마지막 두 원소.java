class Solution {
    public int[] solution(int[] num_list) {
        int last = num_list[num_list.length - 1];
        int prevLast = num_list[num_list.length - 2];
        
        int[] answer = new int[num_list.length + 1];
        
        System.arraycopy(num_list, 0, answer, 0, num_list.length);
        
        if (last > prevLast) {
            answer[answer.length - 1] = last - prevLast;
        } else {
            answer[answer.length - 1] = last * 2;
        }
        return answer;
    }
}