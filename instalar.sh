#/bin/bash
[[ ! -f `which brew` ]] && /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
requisitos=("docker" "socat" "xquartz")
dev_eth='en0'
for requisito in ${requisitos[@]}; do
  [[ ! -f `which ${requisito}` ]] && brew install $requisito
done
mkdir -p ${HOME}/Documents/ProgramasRFB
docker build --rm -t alisio/carneleao2020 https://github.com/alisio/carneleao2020-container.git
