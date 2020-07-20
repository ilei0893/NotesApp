describe("Login test", () => {
  it("Can login", () => {
    cy.visit("/");
    cy.contains("Sign in").click();

    cy.url().should("include", "sign_in");
    cy.get("form");

    cy.get('input[name="user[email]"]')
      .type("test2@test.com")
      .should("have.value", "test2@test.com");

    cy.get('input[name="user[password]"]')
      .type("password")
      .should("have.value", "password");

    cy.get(".actions > input").click();
    cy.url().should("include", "/");
  });
});
