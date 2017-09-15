import logging
import sys

from flask import jsonify
from flask import Flask, render_template

app = Flask(__name__)
app.config.from_object('config')

app.logger.addHandler(logging.StreamHandler(sys.stdout))
app.logger.setLevel(logging.DEBUG)

@app.route('/api/hello')
def say_hello():
    app.logger.debug("Hello World")
    return jsonify("http://i.imgur.com/QsIsjo8.jpg")

if __name__ == "__main__":
    app.run()
