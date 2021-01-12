FROM python:3.7

WORKDIR /opt

ENV VIRTUAL_ENV=/venv
RUN python3 -m venv $VIRTUAL_ENV
ENV PATH="$VIRTUAL_ENV/bin:$PATH"

WORKDIR ./scripts

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . .
ENTRYPOINT ["./entrypoint.sh"]
