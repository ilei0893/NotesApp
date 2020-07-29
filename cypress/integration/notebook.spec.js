describe("notebook CRUD operations", () => {
  beforeEach(() => {
    cy.login("test@test.com", "password");
  });

  it("should visit notebooks page", () => {
    cy.visit("/notebooks");
    cy.url().should("include", "/notebooks");
  });

  it("should create a notebook", () => {
    cy.visit("/notebooks");
    cy.contains("New Notebook").click();
    cy.get("#notebook_title").type("food").should("have.value", "food");
    cy.get("#notebook_body").type("chicken").should("have.value", "chicken");
    cy.contains("Create Notebook").click();
  });

  it("should read a notebook", () => {
    cy.visit("/notebooks");
    cy.contains("food").click();
  });

  it("should edit a notebook", () => {
    cy.visit("/notebooks");
    cy.contains("Edit").click();
    cy.get("#notebook_title").clear().type("hello but edited");
    cy.contains("Update Notebook").click();
  });

  it("should delete a notebook", () => {
    cy.visit("/notebooks");
    cy.contains("Destroy").click();
    cy.contains("successfully destroyed.");
  });
});
