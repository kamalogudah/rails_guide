require "application_system_test_case"

module Todo
  class TodosTest < ApplicationSystemTestCase
    setup do
      @todo = todo_todos(:one)
    end

    test "visiting the index" do
      visit todos_url
      assert_selector "h1", text: "Todos"
    end

    test "creating a Todo" do
      visit todos_url
      click_on "New Todo"

      fill_in "Description", with: @todo.description
      fill_in "Title", with: @todo.title
      click_on "Create Todo"

      assert_text "Todo was successfully created"
      click_on "Back"
    end

    test "updating a Todo" do
      visit todos_url
      click_on "Edit", match: :first

      fill_in "Description", with: @todo.description
      fill_in "Title", with: @todo.title
      click_on "Update Todo"

      assert_text "Todo was successfully updated"
      click_on "Back"
    end

    test "destroying a Todo" do
      visit todos_url
      page.accept_confirm do
        click_on "Destroy", match: :first
      end

      assert_text "Todo was successfully destroyed"
    end
  end
end
