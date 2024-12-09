# A recent official pythom image with a recent tox installed
# Latest tox each time Dependabot upgrades the FROM image version
# Will be pushed to jexmse/python-tox:3.12.8-slim-bookworm or similar
#
# docker build --platform linux/amd64 -t jexmse/python-tox:3.12.8-slim-bookworm .

FROM python:3.13.1-slim-bookworm

RUN pip install --no-cache-dir tox && rm -rf /root/.cache
