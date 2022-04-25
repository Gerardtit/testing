package testrail;

public class TestRailAccount {
    public static APIClient testRailApiClient() {

        String baseUrl ="https://gerardtit.testrail.io";
        String usernameTestRail = "gperalta83.gp@gmail.com";
        String passwordTestRail = "ndbh1MsvdnO8gjJ.iM9M";

        APIClient client = new APIClient(baseUrl);
        client.setUser(usernameTestRail);
        client.setPassword(passwordTestRail);

        return client;
    }
}
