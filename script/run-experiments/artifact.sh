#!/bin/bash




print_colorful_text() {
  local text="$1"
  local color_code="$2"
  echo "\e[${color_code}m${text}\e[0m"
}

cm_repo=`cm find repo micro-2023-79`
cm_repo_dir=${cm_repo#*= }
echo "Changing to ${cm_repo_dir}"
cd ${cm_repo_dir}

container="docker"
image="micro2023-photon"
 
echo "==================  Run a container test to make sure container works =================="

${container} run docker.io/hello-world


echo "==================  Build the Docker image to run the experiments =================="

${container} build --no-cache -t ${image} -f Dockerfile .

echo "==================  Compiling the simulator =================="

${container} run --rm -v $PWD:/root/ ${image} /bin/bash -c "cd /root/"


