# download base image alpine 3.17
FROM alpine:3.17
# set labels
LABEL version="1.0"
LABEL description="tailscale with custom login-server Alpine-based"
LABEL arch="amd64"
# update packages and install tailscale
RUN apk update && apk add --no-cache tailscale
# clean cache
RUN rm -rf /var/cache/apk/*
# start tailscaled daemon
CMD [ "/usr/sbin/tailscaled", "--state=/state/tailscaled.state", "--socket=/run/tailscale/tailscaled.sock", "--no-logs-no-support" ]