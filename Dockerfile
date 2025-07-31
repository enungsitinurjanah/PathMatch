# Gunakan base image Python
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Copy file requirements.txt dan install dependensi
COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

# Copy semua isi backend ke dalam container
COPY . .

# Jalankan FastAPI pakai Uvicorn
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "10000"]
