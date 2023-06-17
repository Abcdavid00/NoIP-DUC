FROM ubuntu:latest

# Install dependencies
RUN apt-get update && apt-get install -y wget tar

# Create src directory
RUN mkdir /src

# Download the Linux DUC
RUN cd /src && wget https://dmej8g5cpdyqd.cloudfront.net/downloads/noip-duc_3.0.0-beta.6.tar.gz

# Extract the file
RUN cd /src && tar xf noip-duc_3.0.0-beta.6.tar.gz

# Remove the tar file
RUN rm /src/noip-duc_3.0.0-beta.6.tar.gz

# Install the DUC
RUN cd /src/noip-duc_3.0.0-beta.6/binaries && apt-get install -y ./noip-duc_3.0.0-beta.6_amd64.deb

# Start the service
CMD ["noip-duc"]
