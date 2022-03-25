@deeplinks
Feature: QA2 Deeplinks

  Background: setup user on Home Page
    When click on NewSignup Api for OTP
    Then zipcode page is displayed
    When user enters "zipcode" in zipcode page
    Then select order type page is displayed
    When user clicks pickup on delivery select page
    Then store list is displayed
    And user click start shopping button on Sign In page
    Then user is logged in to the app for Existing user

  @smoketest @miniRegression
  Scenario: check that user is able to click on Appsflyer links in TT banner
    When user closes the app
    And user opens browser
    Then browser is opened
    When user enters "J4U" appsflyer link in Address bar
    Then user see "Deals" tab open
    When user closes the app
    And user opens browser
    Then browser is opened
    When user enters "Weekly Ad" appsflyer link in Address bar
    Then user see "Weekly Ad" tab open
    When user closes the app
    And user opens browser
    Then browser is opened
    When user enters "Rewards" appsflyer link in Address bar
    Then user see "Rewards" tab open
    When user closes the app
    And user opens browser
    Then browser is opened
    When user enters "Vaccine Scheduler" appsflyer link in Address bar
    Then user see "Vaccine Scheduler" tab open
#      When user closes the app
#      And user opens browser
#      Then browser is opened
#      When user enters "ZTP Add Payment" appsflyer link in Address bar
#      When user change settings
#      And user opens browser
#      Then browser is opened
#      When user enters "ZTP Add Payment" appsflyer link in Address bar
#      Then user see "ZTP Add Payment" tab open

  @smoketest
  Scenario: check that user is able to click on Appsflyer links in TT banner
    When user closes the app
    And user opens browser
    Then browser is opened
    When user enters "ZTP Add Payment" appsflyer link in Address bar
    Then user see "ZTP Add Payment" tab open
    When user closes the app
    And user opens browser
    Then browser is opened
    When user enters "Offer CC" appsflyer link in Address bar
    Then user see "Offer CC" tab open
    When user closes the app
    And user opens browser
    Then browser is opened
#    When user enters "Offer PD" appsflyer link in Address bar
#    Then user see "Offer PD" tab open
#    When user closes the app
#    And user opens browser
#    Then browser is opened
    When user enters "Offer Invalid" appsflyer link in Address bar
    Then user see "Offer Invalid" tab open

  @smokedeeplink
  Scenario: check that user is able to click on Appsflyer links in TT banner
    When user closes the app
    And user opens browser
    Then browser is opened
    When user enters "Home" appsflyer link in Address bar
    Then user see "Home" tab open

  @PrescriptionTransferDeepLink
  Scenario: check that user is able to click on Prescription Transfer Appflyer Link on Safeway banner
    When user closes the app
    And user opens browser
    Then browser is opened
    When user enters "Prescription Transfer" appsflyer link in Address bar
    Then user see "Prescription Transfer" tab open

  @AllRewardsDeeplink
  Scenario:  check that user is able to click on all Rewards Appflyer Link
    When user closes the app
    And user opens browser
    Then browser is opened
    When user enters "All Rewards" appsflyer link in Address bar
    Then user see "All Rewards" tab open


  @unittest  #MMM-3013
  Scenario: Click on Carrs ztp deeplink should take user to Carrsqc cash
    When user closes the app
    And user opens browser
    Then browser is opened
    When user enters Carrsqc ZTP link in Address bar
    Then user see "ZTP Add Payment" tab open
    Then user is able to see Carrsqc cash

  @unittest  #MMM-3017  #This TC is for validation in Android only and not iOS
  Scenario: Deeplinks should not ask for allow permission when app is already installed
    When user closes the app
    And user opens browser
    Then browser is opened
    When user enters "J4U" appsflyer link in Address bar
    Then user should not see allow permission popup
    Then user see "Deals" tab open

  @SwathiTest4182  #MMM-4182  #UMA-[AppsFlyer] Enable deep linking to Cart screen
  Scenario: check that user is able to click on all Cart Appflyer Link
    When user closes the app
    And user opens browser
    Then browser is opened
    When user enters "Cart" appsflyer link in Address bar
    Then user see "Cart" tab open

  @SwathiTest4183-FreshpassAndRewards  #MMM-4182  UMA- [AppsFlyer] Enable deferred deep linking (Rewards, Freshpass, Offers CC, PD)
  Scenario: check that user is able to enable deferred deep linking for Freshpass and Rewards
    And un-install the application
    And user opens browser
    Then browser is opened
    When user enters "Freshpass" appsflyer link in Address bar
    #Then validate user is on Appcenter Screen
    And install the application
    And launch the application
    When sign in to the application
    Then user see "Freshpass" tab opens
    And un-install the application
    And user opens browser
    Then browser is opened
    When user enters "Rewards" appsflyer link in Address bar
    #Then validate user is on Appcenter Screen
    And install the application
    And launch the application
    When sign in to the application
    Then user see "Rewards" tab open

  @SwathiTest4183-OfferCC  #MMM-4182  UMA- [AppsFlyer] Enable deferred deep linking (Rewards, Freshpass, Offers CC, PD)
  Scenario: check that user is able to enable deferred deep linking for Offer CC and Offer PD
    And un-install the application
    And user opens browser
    Then browser is opened
    When user enters "Offer CC" appsflyer link in Address bar
    #Then validate user is on Appcenter Screen
    And install the application
    And launch the application
    When sign in to the application
    Then user see "Offer CC" tab open
    And un-install the application
    And user opens browser
    Then browser is opened
    When user enters "Offer PD" appsflyer link in Address bar
    #Then validate user is on Appcenter Screen
    And install the application
    And launch the application
    When sign in to the application
    Then user see "Offer PD" tab open

  @SwathiTest4408  #MMM-4408 UMA-[AppsFlyer] Enable deep linking to Project(Meals) Menu
  Scenario: check that user is able to click on Meals Appflyer Link
    When user closes the app
    And user opens browser
    Then browser is opened
    When user enters "Meals" appsflyer link in Address bar
    Then user see "Meals" tab open







