# pi@boss-monitor ~/dev/bossjones/docker-compose-prometheus/outputs feature-perf*
# ❯ docker images | grep hole
# outputs-pihole-exporter                   latest                                     728a4e05e336   About an hour ago   347MB
# outputs-pihole                            latest                                     687a32be5b7b   About an hour ago   347MB
# pihole/pihole                             latest                                     512206c6004b   2 weeks ago         310MB
# ekofr/pihole-exporter                     latest                                     16309eb9a549   2 weeks ago         9.01MB
# ekofr/pihole-exporter                     <none>                                     e62f0f1cd144   11 months ago       9.15MB
# pihole/pihole                             <none>                                     566a5a3d4773   13 months ago       301MB

# FROM pihole/pihole:2023.11.0
FROM pihole/pihole:2024.07.0
# FROM pihole/pihole:development-v6


ENV PYTHONUNBUFFERED 1
ENV DNSMASQ_USER root
ENV FTL_CMD "no-daemon -- --dns-forward-max 5096 --min-cache-ttl 300"

COPY ./var/www/html/user.ini /var/www/html/.user.ini
COPY ./screenrc /root/.screenrc

# RUN apt update && apt install -y systemd vim ccze python3-pip python3-dev screen gdb man && \
#    pip install -U litecli


LABEL description="bossjones version of pihole"
LABEL base="pihole/pihole:development-v6"