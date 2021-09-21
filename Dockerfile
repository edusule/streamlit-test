FROM python:3.9

WORKDIR /app

WORKDIR /app/.streamlit

COPY requirements.txt ./requirements.txt

RUN pip3 install -r requirements.txt

EXPOSE 8501

COPY . .

ENTRYPOINT ["streamlit", "run"]

CMD ["app.py"]