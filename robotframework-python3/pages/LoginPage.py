from PageObjectLibrary import PageObject
from robot.libraries.BuiltIn import BuiltIn
import time

class LoginPage(PageObject):
    PAGE_TITLE = "Robots rule"
    PAGE_URL = "/demoapp"

    _locators = {
        "username": "xpath=(//input)[1]",
        "password": "xpath=(//input)[2]",
        "submit_button": "xpath=(//input)[3]",
        "assert_no_human": "css=span",

    }

    def user_visits_demo_app(self):
        time.sleep(1)

    def user_logs_in_with_credentials(self, username, password):
        #config = BuiltIn().get_variable_value("${CONFIG}")
        self.enter_username(username)
        self.enter_password(password)
        self.click_the_submit_button()

    def enter_username(self, username):
        """Enter the given string into the username field"""
        self.selib.input_text(self.locator.username, username)

    def enter_password(self, password):
        """Enter the given string into the password field"""
        self.selib.input_text(self.locator.password, password)

    def click_the_submit_button(self):
        """Click the submit button, and wait for the page to reload"""
        self.selib.click_button(self.locator.submit_button)
