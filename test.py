import unittest
from appium import webdriver
from appium.webdriver.common.appiumby import AppiumBy
from appium.webdriver.webdriver import AppiumOptions

capabilities = dict(
    platformName='Android',
    automationName='uiautomator2',
    deviceName='Android',
    appPackage='com.icsecurity.noakiosk',
    appActivity='com.icsecurity.fieldOfficerApp.MainActivity',
    language='en',
    locale='US'
)

appium_server_url = 'http://192.168.11.131:4723'

appium_options = AppiumOptions()
appium_options.load_capabilities(capabilities)
    

class TestAppium(unittest.TestCase):
    def setUp(self) -> None:
        self.driver = webdriver.Remote(appium_server_url, options=appium_options)

    def tearDown(self) -> None:
        if self.driver:
            self.driver.quit()

    def test_login(self) -> None:
        location = self.driver.find_element(by=AppiumBy.ID, value='com.android.permissioncontroller:id/permission_allow_foreground_only_button')
        location.click()

if __name__ == '__main__':
    unittest.main()