FROM python:3.7

WORKDIR /app

COPY requirements.txt ./requirements.txt

RUN pip install -r requirements.txt

EXPOSE 8501

COPY . .

ENV HOME="/app"

ENTRYPOINT ["streamlit", "run"]

CMD ["app.py"]