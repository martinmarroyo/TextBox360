FROM alpine:3.16
# Update current packages
RUN apk update && apk upgrade
# Install required programs
RUN apk add python3 py3-pip nano curl wget git github-cli openssh-keygen bash
# Generate SSH key to connect to Github
RUN ssh-keygen -t rsa -f ~/.ssh/git-key -q -N '""'
WORKDIR /textbox360
RUN mkdir /textbox360/adventures /textbox360/assets
COPY logo.txt /textbox360/assets
# Show the logo and keep the container running
ENV ENV="/etc/profile"
RUN echo "cat /textbox360/assets/logo.txt" > "$ENV"
CMD ["tail", "-f", "/dev/null"]