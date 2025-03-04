# Gunakan base image Python
FROM python:3.10

# Set environment variable agar Jupyter tidak meminta token
ENV JUPYTER_TOKEN="mysecuretoken"

# Install Jupyter
RUN pip install --no-cache-dir jupyter

# Buka port untuk Jupyter Notebook
EXPOSE 8888

# Jalankan Jupyter Notebook
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]
