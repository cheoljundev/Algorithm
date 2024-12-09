// 모든 원소들의 곱 < 모든 원소들의 합의 제곱 -> 1
// 모든 원소들의 곱 > 모든 원소들의 합의 제곱 -> 0
class Solution {
    public int solution(int[] num_list) {
        int answer = 0;
        int multiple = 1;
        int squareOfSum = 0;
        
        for(int n :num_list) {
            multiple *= n;
            squareOfSum += n;
        }
        
        squareOfSum = squareOfSum * squareOfSum;
        
        if(multiple < squareOfSum) {
            answer = 1;
        }
        
        return answer;
    }
}
