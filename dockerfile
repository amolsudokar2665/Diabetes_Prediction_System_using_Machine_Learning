FROM ubuntu:latest

# Set the working directory in the image
WORKDIR /app

# Copy the files from the host file system to the image file system
COPY . /app

# Install the necessary packages
RUN apt-get update && apt-get install -y python3 python3-pip && pip install numpy && pip install pandas && pip install Streamlit && pip install scikit-learn && pip install seaborn
RUN pip3 install -r requirements.txt
# Set environment variables
ENV NAME World

# Run a command to start the application
CMD ["streamlit run", "app.py"]
