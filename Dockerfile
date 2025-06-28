# A recent official python image with a recent tox installed
# Using requirements.txt to ensure dependabot updates the tox version
#
# Alternative to installing python in gha -- use a gha supported base os.
#
# docker build --platform linux/amd64 -t jexmse/python-tox:<tag> .

FROM python:3.13.5-slim@sha256:f2fdaec50160418e0c2867ba3e254755edd067171725886d5d303fd7057bbf81

COPY requirements.txt /tmp/
RUN pip install --no-cache-dir -r /tmp/requirements.txt && rm -rf /root/.cache
