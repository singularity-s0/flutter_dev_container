# Flutter Web DevContainer
FROM mcr.microsoft.com/devcontainers/universal:2

# Install flutter dependencies
RUN apt-get update
RUN apt-get install -y curl git wget unzip libgconf-2-4 gdb libstdc++6 libglu1-mesa fonts-droid-fallback lib32stdc++6 python3 sed
RUN apt-get clean

# Clone the flutter repo
RUN git clone https://github.com/flutter/flutter.git --single-branch /usr/local/flutter

# Set flutter path
ENV PATH="${PATH}:/usr/local/flutter/bin:/usr/local/flutter/bin/cache/dart-sdk/bin"

# Download Dart SDK
RUN flutter doctor



