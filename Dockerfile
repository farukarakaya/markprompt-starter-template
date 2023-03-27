FROM node:16.19

# Create app directory
WORKDIR /usr/src/markpromt-test

# Bundle app source
COPY . .

# Install app dependencies
USER root

ENV NODE_OPTIONS="--max-old-space-size=8000"
ENV GENERATE_SOURCEMAP=false

RUN npm install
RUN next build
EXPOSE 3000
CMD ["sh", "-c", "next start"]
