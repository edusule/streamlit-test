FROM python:3.8-ubi8

WORKDIR /app

COPY requirements.txt ./requirements.txt

RUN pip install -r requirements.txt

RUN useradd -ms /bin/bash admin

EXPOSE 8501

COPY . .

RUN chown -R admin:admin /app

RUN chmod 755 /app

USER admin

ENTRYPOINT ["streamlit", "run"]

CMD ["main.py"]