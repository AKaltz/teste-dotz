/// <reference types="cypress" />


function allTitles() {

    return cy.request({
        method: 'GET',
        url: 'films',
        failOnStatusCode: false,
    });

}
export { allTitles };