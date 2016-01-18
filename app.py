from flask import Flask, redirect

app = Flask(__name__)
LINKEDIN_URL = 'https://www.linkedin.com/in/mibuckner'

@app.route('/')
def index():
    return redirect(LINKEDIN_URL)

if __name__ == '__main__':
    app.run()