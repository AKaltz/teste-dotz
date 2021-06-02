/// <reference types="cypress" />

import * as GETCountPlanets from '../requests/GETPlanets.request';

describe('GET count planets', () => {

    it('deve armazenar o valor do campo “count”', () => {
        GETCountPlanets.countPlanets().then((response) => {
            expect(response.status).to.eq(200);
            expect(response.body).to.be.not.null;
            const countPlanets = response.body.count;
            cy.log(countPlanets);

        });
    });

    it('deve enviar um novo GET para o mesmo endpoint passando um valor aleatório que seja superior ao armazenado. Validar o statuscode e a mensagem exibida.', () => {
        GETCountPlanets.countPlanets({ count: 70 }).then((response) => {
            expect(response.status).to.eq(404);
            expect(response.body).to.be.not.null;
            expect(response.body.detail).to.eq("Not found");
        });
    });

});



