
errors=0

set -e

os=${1} # windows/darwin
echo "os: ${os}"
if test -z "${os}"; then
  echo "ERROR: os is empty!"
  ((errors=errors+1))
fi

arch=${2} # 386/amd64
echo "arch: ${arch}"
if test -z "${arch}"; then
  echo "ERROR: arch is empty!"
  ((errors=errors+1))
fi

if (( $errors > 0 )); then
  echo "Errors found, exiting..."
  exit 1
fi

src_bin_file='index'
if [ "${os}" = 'windows' ]; then
  src_bin_file='index.exe'
fi
src="./bower_components/terraform_${os}_${arch}/${src_bin_file}"

target_folder='.bin'
target_bin_file='terraform'
target="${target_folder}/terraform"

set -x
mkdir -p .bin/
cp ${src} ${target}
set +x

export PATH=${target_folder}:${PATH}

set -x
terraform --version
set +x

set +e
