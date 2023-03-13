set -e

LATEST_TAG=$(git --no-pager tag --points-at HEAD)
echo ${LATEST_TAG}

# replace contents
sed "s/{{TODO}}/${LATEST_TAG}/" index.html.template >index.html
