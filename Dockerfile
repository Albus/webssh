FROM python:3.7-slim
WORKDIR /code
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . .
USER nobody
ENV PORT=8888
EXPOSE 8888
CMD exec python run.py --fbidhttp=false --port=$PORT
