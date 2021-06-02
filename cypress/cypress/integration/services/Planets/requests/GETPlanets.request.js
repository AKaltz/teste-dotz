/// <reference types="cypress" />


function countPlanets(params = {}) {

    return cy.request({
        method: 'GET',
        url: `planets/${params && params.count || ''}`,
        failOnStatusCode: false,
    });

}
export { countPlanets };