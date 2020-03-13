from flask import Flask, render_template
import requests
import json
import os
import jinja2




tempDir = os.path.join(os.path.dirname(__file__), 'templates')
env = jinja2.Environment(loader = jinja2.FileSystemLoader(tempDir))

app = Flask(__name__)




@app.route("/")
def index():
    template = env.get_template('index.html')
    response = json.dumps(request())
    parsedResponse = json.loads(response)
    print(parsedResponse)
    return template.render(response = parsedResponse)



def request():
    return requests.get('http://127.0.0.1:5001/cars/list').json()


if __name__ == '__main__':
    app.run(debug=True)




