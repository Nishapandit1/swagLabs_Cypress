import { Given, When, Then } from "@badeball/cypress-cucumber-preprocessor";
import loginPagePage from "../../../pages/loginPage.page";
import urls from "../../../urls/urls.json";

Given("User is on {string} page",function(Page){
cy.visit(urls[Page]);
});
When("User clicks on the {string} button",function(button){
    loginPagePage.getLoginButton().click();
})