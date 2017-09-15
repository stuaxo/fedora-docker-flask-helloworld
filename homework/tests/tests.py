from app import app
import unittest

class FlaskBasicTests(unittest.TestCase):

    def setUp(self):
        self.app = app.test_client()
        self.app.testing = True

    def tearDown(self):
        pass

    def test_for_index_response(self):
        result = self.app.get('/hello')
        self.assertEqual(result.status_code, 200)

    def test_for_hello_world(self):
        result = self.app.get('/api/hello')
        self.assertEqual(result.data, "http://i.imgur.com/QsIsjo8.jpg")
