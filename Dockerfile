# A recent official python image with a recent tox installed
#
# Alternative to installing python in gha -- use a gha supported base os.
#
# docker build --platform linux/amd64 -t jexmse/python-tox:<tag> .

FROM python:3.13.1-slim-bookworm

RUN pip install --no-cache-dir tox==4.23.2 && rm -rf /root/.cache
