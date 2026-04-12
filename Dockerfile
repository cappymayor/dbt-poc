FROM python:3.12.13-slim

WORKDIR /dbt_proj

ADD dbt_proj /dbt_proj

COPY requirements.txt /
RUN pip install  -r /requirements.txt

RUN chmod -R 755 /dbt_proj/run_dbt.sh

CMD ["./run_dbt.sh"]