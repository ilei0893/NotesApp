Cypress.Commands.add("login", (email, password) => {
  cy.request("POST", "/users/sign_in", {
    user: { email: email, password: password },
  });
  cy.visit("/");
});
