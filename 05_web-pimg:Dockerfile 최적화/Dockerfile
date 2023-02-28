# Set Base image
FROM diamol/node

# Set CMD
CMD ["node","/web-ping/app.js"]

# Set ENV
ENV TARGET="www.waytothem.com/blog" \
    METHOD="HEAD" \
    INTERVAL="3000"

# Set WORKDIR
WORKDIR /web-ping

# COPY FILE
COPY app.js .