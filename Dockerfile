# A recent official python image with a recent tox installed
# Using requirements.txt to ensure dependabot updates the tox version
#
# Alternative to installing python in gha -- use a gha supported base os.
#
# docker build --platform linux/amd64 -t jexmse/python-tox:<tag> .

FROM python:3.13.7-slim@sha256:5f55cdf0c5d9dc1a415637a5ccc4a9e18663ad203673173b8cda8f8dcacef689

COPY requirements.txt /tmp/
RUN pip install --no-cache-dir -r /tmp/requirements.txt && rm -rf /root/.cache
