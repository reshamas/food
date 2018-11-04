FROM python:3.6-slim-stretch

RUN apt update && \
    apt install -y python3-dev gcc

# Install pytorch and fastai
RUN pip install torch_nightly -f https://download.pytorch.org/whl/nightly/cpu/torch_nightly.html
ADD requirements.txt .
RUN pip install -r requirements.txt

# Install starlette and uvicorn
#RUN pip install starlette uvicorn python-multipart aiohttp

ADD . .

# Run it once to trigger resnet download
RUN python app.py prepare

EXPOSE 5000

# Start the server
CMD ["python", "app.py", "serve"]