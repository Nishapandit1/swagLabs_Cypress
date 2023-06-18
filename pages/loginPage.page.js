const logo = "div .login_logo";
const form = ".login-box";
const usernameInputField = '#user-name';
const passwordInputField = '#password';
const loginButton = '#login-button';
const errorMessage="div [data-test='error']";
const textContainer=".login_credentials_wrap-inner";
const dogImages='div #item_4_img_link .inventory_item_img';

class LoginPageLocators {
    static getLogo() {
        return cy.get(logo);
    }
    static getFormLocator() {
        return cy.get(form);
    }
    static getUsernameInputField() {
        return cy.get(usernameInputField);
    }
    static getPasswordInputField(){
        return cy.get(passwordInputField);
    }
    static getLoginButton(){
        return cy.get(loginButton);
    }
    static getTextContainer(string){
        return cy.get(`${textContainer}:contains('${string}')`);
    }
    static getErrorMessage(string){
        return cy.get(`${errorMessage}:contains('${string}')`)
    }
    static getDogImages(){
        return cy.get(dogImages)
    }
}
 

export default LoginPageLocators;