const firstName = '[id="firstName"]';
const lastName = '[id="lastName"]';
const username = '[id="username"]';
const password = '[id="password"]';
const passwordConfirmation = '[id="confirmPassword"]';
const btnConfirm = '[type="submit"]'
const confirmMsg = '.MuiTypography-h5'

class Cadastro {

    go() {
        cy.visit('/signup');
    }

    signup(data){
        cy.get(firstName).type(data.firstName);
        cy.get(lastName).type(data.lastName);
        cy.get(username).type(data.username);
        cy.get(password).type(data.password);
        cy.get(passwordConfirmation).type(data.password);
    }

    confirm(){
        cy.get(btnConfirm).click();
        cy.get(confirmMsg).should('contain', 'Sign in');
        cy.get(confirmMsg).contains('Sign in');

    }
}

export default { Cadastro }