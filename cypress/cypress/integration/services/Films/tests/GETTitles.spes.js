/// <reference types="cypress" />

import * as GETAllTitles from '../requests/GETTitles.request';

describe('GET All Titles', () => {

    it('deve armazenar o valor do campo “title” de cada elemento da estrutura “results” em variável e Validar o statuscode (Sucesso) da resposta da requisição.', () => {

        GETAllTitles.allTitles().then((response) => {
            expect(response.status).to.eq(200);
            expect(response.body).to.be.not.null;
            const allTitles = response.body.results.map(data => data.title);
            cy.log(allTitles);
        });

    });

});


