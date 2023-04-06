From  python:latest
# WORKDIR /app
# Copy requirements.txt .
WORKDIR /app
COPY ./requirements.txt .
RUN pip install -r requirements.txt

COPY . .

CMD  ["streamlit", "run",  "main.py", "[ARGUMENTS]"]
