FROM elasticsearch:6.8.6

RUN bin/elasticsearch-plugin install analysis-smartcn
RUN bin/elasticsearch-plugin install --batch https://github.com/medcl/elasticsearch-analysis-ik/releases/download/v6.8.6/elasticsearch-analysis-ik-6.8.6.zip
RUN bin/elasticsearch-plugin install --batch https://github.com/medcl/elasticsearch-analysis-pinyin/releases/download/v6.8.6/elasticsearch-analysis-pinyin-6.8.6.zip

COPY ./config /usr/share/elasticsearch/config/
