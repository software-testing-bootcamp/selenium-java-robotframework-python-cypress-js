describe('My First Test', () => {
    it('login and add remove basket test', () => {
      cy.viewport(1440,900)
      cy.visit('/').screenshot()
      cy.get('a[id=login2]', { timeout: 5000 }).click()
      cy.wait(500, { log: false })
      cy.get('input[id=loginusername]').type('testuser456')
      cy.get('input[id=loginpassword]').type('123qwe')
      cy.get('.btn-primary').last().click()
      cy.wait(1000, { log: false })
      cy.contains('Samsung').click()
      cy.wait(500, { log: false })
      cy.contains('Add to cart').click()
      cy.wait(500, { log: false })
      cy.get('a[id=cartur]').click()
      cy.wait(500, { log: false })
      cy.contains('Delete').click()
      cy.wait(500, { log: false })      
      //cy.pause()
      cy.debug()
      cy.get('tr').should('not.have.class', 'success')
      cy.screenshot()
    })
  })