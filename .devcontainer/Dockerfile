# See here for image contents: https://github.com/microsoft/vscode-dev-containers/tree/v0.145.1/containers/ubuntu/.devcontainer/base.Dockerfile

FROM raychorn/ubuntu_mongo:version1

# [Option] Install Node.js
ARG INSTALL_NODE="false"
ARG NODE_VERSION="lts/*"
RUN if [ "${INSTALL_NODE}" = "true" ]; then su vscode -c "source /usr/local/share/nvm/nvm.sh && nvm install ${NODE_VERSION} 2>&1"; fi

LABEL version="1.32"
LABEL maintaner="Ray C Horn (raychorn@gmail.com)"
LABEL release-date="11-16-2020"
LABEL promoted="true"

RUN echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections && \
    apt-get update -y && apt-get install -y -q --no-install-recommends \
    apt-transport-https \
    build-essential \
    ca-certificates \
    aptitude \
    net-tools \
    curl \
    zsh \
    nano \
    htop \
    libssl-dev \
    wget

RUN cd /tmp && \
    wget https://golang.org/dl/go1.15.5.linux-amd64.tar.gz && \
    tar -C /usr/local -xzf go1.15.5.linux-amd64.tar.gz && \
    /usr/local/go/bin/go version

#RUN sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)" && \
#    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k


# [Optional] Uncomment this section to install additional OS packages.
# RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
#     && apt-get -y install --no-install-recommends <your-package-list-here>

# [Optional] Uncomment the next line to use go get to install anything else you need
# RUN go get -x <your-dependency-or-tool>

# [Optional] Uncomment this line to install global node packages.
# RUN su vscode -c "source /usr/local/share/nvm/nvm.sh && npm install -g <your-package-here>" 2>&1

