
import { Given, When, Then } from "@badeball/cypress-cucumber-preprocessor";
import loginPagePage from "../../../pages/loginPage.page";

Then("User should see {string} logo",function(){
loginPagePage.getLogo().should('be.visible');   
});
Then('User should see the {string} form',function(){
    loginPagePage.getFormLocator().should('be.visible');
})
Then("User should see the text {string} displayed after the {string} form",function(text){
loginPagePage.getTextContainer(text).should('be.visible');
})
Then("User should see the {string} option under the {string} text",function(credentials){
    loginPagePage.getTextContainer(credentials).should('be.visible');
})
When("User fill {string} in {string} input field",function(userData,inputField){
    if(inputField=="email"){
        loginPagePage.getUsernameInputField().type(userData);
    }
else{
    loginPagePage.getPasswordInputField().type(userData); 
}
})
Then("Following information should be shown : {string}",function(errormessage){
loginPagePage.getErrorMessage(errormessage).should('have.text',errormessage)
})
When("User click on the {string} button",function(button){
    loginPagePage.getLoginButton().click();
})
Then("User should be redirected to the {string} page",function(Url){
    cy.location().its('href').should('include', urls[Url])
cy.url().should('contain',urls[Url]);
})
Then('User should see {string} message',function(errorMessage){
loginPagePage.getErrorMessage(errorMessage).should('be.visible');
})

Then('Images of dog should be shown instead of product pictures',function(){
loginPagePage.getDogImages().should('be.visible');
})
