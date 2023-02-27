# Set Base image
FROM diamol/node

# Set ENV
ENV TARGET="www.waytothem.com/blog"
ENV METHOD="HEAD"
ENV INTERVAL="3000"

# Set WORKDIR
WORKDIR /web-ping

# COPY FILE
COPY app.js .

# Set CMD
CMD ["node","/web-ping/app.js"]
