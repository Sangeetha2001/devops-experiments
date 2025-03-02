# Import the Flask module
from flask import Flask  

# Create a Flask web application instance
app = Flask(__name__)  

# Define a route for the root URL ("/")
@app.route("/")  
def home():  
    # Return a simple response when the root URL is accessed
    return "Hello, Docker!"  

# Run the application if this script is executed directly
if __name__ == "__main__":  
    # Start the Flask app and make it accessible from any IP (0.0.0.0) on port 5000
    app.run(host="0.0.0.0", port=5000)  
