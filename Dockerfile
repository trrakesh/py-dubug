FROM python:3.9-slim

# Install Python and debugging tools
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Install debugpy for remote debugging
RUN pip install debugpy

COPY . .

# Expose a debugging port (5678 is the default for debugpy)
EXPOSE 5678

# Start the app with debugpy
CMD ["python3", "-m", "debugpy", "--listen", "0.0.0.0:5678", "--wait-for-client", "app.py"]
