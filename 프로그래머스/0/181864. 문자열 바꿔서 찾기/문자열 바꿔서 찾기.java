class Solution {
    public int solution(String myString, String pat) {
        String resultString = myString.replace("A", "C")
            .replace("B", "A")
            .replace("C", "B");
        if (resultString.contains(pat)) {
            return 1;
        } else {
            return 0;
        }
    }
}