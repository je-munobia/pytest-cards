# A recent official python image with a recent tox installed
# Latest tox each time Dependabot upgrades the FROM image version
#
# Alternative to installing python in gha -- use a gha supported base os.
#
# docker build --platform linux/amd64 -t jexmse/python-tox:<tag> .

FROM python:3.13.1-slim-bookworm

RUN pip install --no-cache-dir tox && rm -rf /root/.cache
