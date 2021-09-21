FROM python:3.9

RUN mkdir /app

RUN mkdir /app/.streamlit

WORKDIR /app

COPY requirements.txt /app/requirements.txt

RUN pip3 install -r /app/requirements.txt

EXPOSE 8501

COPY . .

CMD /app/streamlit run main.py