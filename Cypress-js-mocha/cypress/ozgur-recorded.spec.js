describe('My Recorded Test', () => {
    it('login and add remove basket test', () => {
        cy.visit('https://www.demoblaze.com/');
        cy.get('#login2').click();
        cy.get('#loginusername').click();
        cy.get('#loginusername').type('testuser456');
        cy.get('#loginpassword').click();
        cy.get('#loginpassword').type('123qwe');
        cy.get('#logInModal .btn-primary').click();
        cy.url().should('contains', 'https://www.demoblaze.com/');
        //cy.url().should('contains', 'https://www.demoblaze.com/prod.html');
        cy.get('.btn-success').click();
        cy.url().should('contains', 'https://www.demoblaze.com/cart.html');
        cy.get('.success:nth-child(1) a').click();
        cy.url().should('contains', 'https://www.demoblaze.com/cart.html');
        cy.url().should('contains', 'https://www.demoblaze.com/index.html');
        
    })
  })