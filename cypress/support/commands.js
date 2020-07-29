Cypress.Commands.add("login", (email, password) => {
  cy.request({
    method: "POST",
    url: "/users/sign_in",
    body: { email: email, password: password },
  });
  cy.visit("/");
  cy.getCookie("_notesapp_session").should("exist");
});
