from flask import Flask

# Create the app
app = Flask(__name__)

# Define a route
@app.route('/')
def home():
    return "Hello, World!"

# Run the app
if __name__ == '__main__':
    app.run(debug=True)