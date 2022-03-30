package testrail;

public class TestRailAccount {
    public static APIClient testRailApiClient() {

        String baseUrl ="https://gerardtest.testrail.io";
        String usernameTestRail = "gerardo.peralta@ymedialabs.com";
        String passwordTestRail = "mY5bokGAtDUcjsouT5ij";

        APIClient client = new APIClient(baseUrl);
        client.setUser(usernameTestRail);
        client.setPassword(passwordTestRail);

        return client;
    }
}
