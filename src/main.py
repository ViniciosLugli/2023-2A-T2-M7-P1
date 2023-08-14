from fastapi import FastAPI
from fastapi.staticfiles import StaticFiles
from fastapi.responses import FileResponse
import os

# Creating the FastAPI instance
app = FastAPI()

# Mounting the static files directory ( more to css, js, images, etc. accessible from the browser )
app.mount("/", StaticFiles(directory="static", html=True), name="static")


@app.get("/")  # Defining the root route
def index():
    return FileResponse(os.path.join("static", "index.html"))
