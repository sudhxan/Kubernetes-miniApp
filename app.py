from flask import Flask

app = Flask(__name__)

@app.route('/')
def home():
    return 'Hello, people! Excited to learn more about Kubernetes!'

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
