import matplotlib.pyplot as plt
from io import BytesIO
from PIL import Image
import numpy as np
import tensorflow as tf
import os

# Ensure output directory exists
output_dir = "C:\\xampp\\htdocs\\plant_AI_bio\\outputs"
os.makedirs(output_dir, exist_ok=True)

# Define the prediction function
def predict(model, img, class_names):
    img = img.resize((256, 256))  # Resize image to match model input shape
    img_array = tf.keras.preprocessing.image.img_to_array(img)
    img_array = tf.expand_dims(img_array, 0)  # Add batch dimension
    img_array = img_array / 255.0  # Normalize to [0, 1]

    predictions = model.predict(img_array)
    predicted_class = class_names[np.argmax(predictions[0])]
    confidence = round(100 * np.max(predictions[0]), 2)
    return predicted_class, confidence

# Load the model
MODEL = tf.keras.models.load_model("C:\\xampp\\htdocs\\plant_AI_bio\\2")

# Define class names
class_names = ['Apple___Apple_scab', 'Apple___Black_rot', 'Apple___Cedar_apple_rust', 'Apple___healthy',
               'Corn_(maize)___Cercospora_leaf_spot Gray_leaf_spot', 'Corn_(maize)___Common_rust_',
               'Corn_(maize)___Northern_Leaf_Blight', 'Corn_(maize)___healthy', 'Grape___Black_rot',
               'Grape___Esca_(Black_Measles)', 'Grape___Leaf_blight_(Isariopsis_Leaf_Spot)', 'Grape___healthy',
               'Potato___Early_blight', 'Potato___Late_blight', 'Potato___healthy', 'Strawberry___Leaf_scorch',
               'Strawberry___healthy', 'Tomato___Tomato_Yellow_Leaf_Curl_Virus', 'Tomato___Tomato_mosaic_virus',
               'Tomato___healthy']

# Path to the image
image_path = "C:\\xampp\\htdocs\\plant_AI_bio\\uploads\\leaf.jpg"

# Read and preprocess the image
try:
    with open(image_path, "rb") as f:
        data = f.read()
    image = Image.open(BytesIO(data))  # Open image
except Exception as e:
    print(f"Error reading image: {e}")
    exit()

# Perform prediction
predicted_class, confidence = predict(MODEL, image, class_names)

# Output 
print(f"Prediction: {predicted_class}")
print(f"Confidence: {confidence}%")