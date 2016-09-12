FROM logstash:latest

# Add your logstash plugins setup here
RUN /opt/logstash/bin/plugin install logstash-patterns-core
RUN /opt/logstash/bin/plugin install logstash-output-elasticsearch
# Example: RUN logstash-plugin install logstash-filter-json 

