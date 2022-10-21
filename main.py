from flask import Flask
import os

app = Flask(__name__)

@app.route('/')
def hello_world():
    return "hello world"


if __name__ == "__main__":
    app.run(debug=True, host="0.0.0.0", port=os.environ.get("PORT", 8080))
