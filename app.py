import json
from flask import Flask, request


app = Flask(__name__)


@app.route("/", methods=["POST", "GET"])
def handle():
    try:
        RequestKey = request.get_json(force=True)
        return json.dumps(RequestKey)
    except Exception as e:
        return json.dumps(e)


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=int("5540"), debug=True)
