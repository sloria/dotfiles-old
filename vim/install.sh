brew install macvim
# Install the janus vim distribution
curl -Lo- https://bit.ly/janus-bootstrap | bash

# Make sure that .janus directory exists
if [ -d "$HOME/.janus"]; then
  mkdir $HOME/.janus
fi

