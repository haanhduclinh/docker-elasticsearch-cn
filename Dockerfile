FROM elasticsearch:7.10.1

RUN bin/elasticsearch-plugin install analysis-smartcn
RUN bin/elasticsearch-plugin install --batch https://github.com/medcl/elasticsearch-analysis-ik/releases/download/v7.10.1/elasticsearch-analysis-ik-7.10.1.zip
RUN bin/elasticsearch-plugin install --batch https://github.com/medcl/elasticsearch-analysis-pinyin/releases/download/v7.10.1/elasticsearch-analysis-pinyin-7.10.1.zip

COPY ./config /usr/share/elasticsearch/config/
